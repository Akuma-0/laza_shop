import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/networking/api_constants.dart';
import '../models/forgot_password_request_body.dart';
import '../models/reset_password_request_body.dart';
import 'forgot_password_api_constants.dart';

part 'forgot_password_api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ForgotPasswordApiServices {
  factory ForgotPasswordApiServices(Dio dio) = _ForgotPasswordApiServices;

  @POST(ForgotPasswordApiConstants.forgotPassword)
  Future<String> forgotPassword(@Body() ForgotPasswordRequestBody body);

  @POST(ForgotPasswordApiConstants.resetPassword)
  Future<dynamic> resetPassword(@Body() ResetPasswordRequestBody body);
}
