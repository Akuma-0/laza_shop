import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_services.dart';
import '../models/verify_email_request_body.dart';
import '../models/verify_email_response.dart';

class VerifyEmailRepo {
  final ApiServices _apiService;

  VerifyEmailRepo(this._apiService);

  Future<ApiResult<VerifyEmailResponse>> verifyEmail(
    VerifyEmailRequestBody verifyEmailRequestBody,
  ) async {
    try {
      final response = await _apiService.verifyEmail(verifyEmailRequestBody);
      final verifyEmailResponse = VerifyEmailResponse.fromJson(response);
      return ApiResult.success(verifyEmailResponse);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
