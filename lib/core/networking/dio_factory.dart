import 'package:dio/dio.dart';
import 'package:laza_shop/core/helpers/extensions.dart';
import 'package:laza_shop/core/networking/api_services.dart';
import 'package:laza_shop/core/routing/routes.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../helpers/constants.dart';
import '../helpers/shared_pref_helper.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 10);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeaders();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeaders() async {
    dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization':
          'Bearer ${await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken)}',
    };
  }

  static void setTokenIntoHeaderAfterLogin(String token) {
    dio?.options.headers = {'Authorization': 'Bearer $token'};
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
    dio?.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) async {
          if (error.response?.statusCode == 401) {
            final refreshToken = await SharedPrefHelper.getSecuredString(
              SharedPrefKeys.refreshToken,
            );
            if (refreshToken.isNullOrEmpty()) {
              // No refresh token available, navigate to login
              await SharedPrefHelper.removeSecuredString(
                SharedPrefKeys.userToken,
              );
              isLoggedInUser = false;

              navigatorKey.currentState?.pushNamedAndRemoveUntil(
                Routes.loginScreen,
                (route) => false,
              );

              return handler.reject(
                DioException(
                  requestOptions: error.requestOptions,
                  error: 'Session expired. Please login again.',
                  type: DioExceptionType.badResponse,
                  response: error.response,
                ),
              );
            }
            final apiService = ApiService(DioFactory.getDio());
            try {
              final response = await apiService.refreshToken({
                'refreshToken': refreshToken,
              });
              final newToken = response.accessToken!;

              await SharedPrefHelper.setSecuredString(
                SharedPrefKeys.userToken,
                newToken,
              );
              await SharedPrefHelper.setSecuredString(
                SharedPrefKeys.refreshToken,
                response.refreshToken!,
              );
              DioFactory.setTokenIntoHeaderAfterLogin(newToken);
              // Retry the original request
              final options = error.requestOptions;
              final cloneReq = await DioFactory.getDio().request(
                options.path,
                options: Options(
                  method: options.method,
                  headers: options.headers,
                ),
                data: options.data,
                queryParameters: options.queryParameters,
              );
              return handler.resolve(cloneReq);
            } catch (e) {
              // Refresh token failed (expired or invalid)
              if (e is DioException && e.response?.statusCode == 400) {
                await SharedPrefHelper.removeSecuredString(
                  SharedPrefKeys.userToken,
                );
                await SharedPrefHelper.removeSecuredString(
                  SharedPrefKeys.refreshToken,
                );
                isLoggedInUser = false;

                // Navigate to login screen
                navigatorKey.currentState?.pushNamedAndRemoveUntil(
                  Routes.loginScreen,
                  (route) => false,
                );

                return handler.reject(
                  DioException(
                    requestOptions: error.requestOptions,
                    error: 'Session expired. Please login again.',
                    type: DioExceptionType.badResponse,
                    response: e.response,
                  ),
                );
              }
              return handler.next(error);
            }
          } else {
            return handler.next(error);
          }
        },
      ),
    );
  }
}
