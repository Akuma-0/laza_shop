import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../apis/forgot_password_api_services.dart';
import '../models/forgot_password_request_body.dart';
import '../models/forgot_password_response_model.dart';
import '../models/reset_password_request_body.dart';
import '../models/reset_password_response_model.dart';

class ForgotPasswordRepo {
  final ForgotPasswordApiServices _apiServices;

  ForgotPasswordRepo(this._apiServices);

  Future<ApiResult<ForgotPasswordResponseModel>> forgotPassword(
    ForgotPasswordRequestBody requestBody,
  ) async {
    try {
      final response = await _apiServices.forgotPassword(requestBody);
      final model = ForgotPasswordResponseModel(message: response);
      return ApiResult.success(model);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<ResetPasswordResponseModel>> resetPassword(
    ResetPasswordRequestBody requestBody,
  ) async {
    try {
      final response = await _apiServices.resetPassword(requestBody);
      final model = ResetPasswordResponseModel(message: response);
      return ApiResult.success(model);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
