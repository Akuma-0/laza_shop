import 'package:dio/dio.dart';
import 'package:laza_shop/core/networking/api_services.dart';
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
            String? refreshToken = await SharedPrefHelper.getSecuredString(
              SharedPrefKeys.refreshToken,
            );
            if (refreshToken != null) {
              ApiService apiService = ApiService(DioFactory.getDio());
              try {
                final response = await apiService.refreshToken({
                  'refreshToken': refreshToken,
                });
                String newToken = response.accessToken!;
                SharedPrefHelper.setSecuredString(
                  SharedPrefKeys.userToken,
                  newToken,
                );
                SharedPrefHelper.setSecuredString(
                  SharedPrefKeys.refreshToken,
                  response.refreshToken!,
                );
                DioFactory.setTokenIntoHeaderAfterLogin(newToken);
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
                return handler.next(error);
              }
            } else {
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
