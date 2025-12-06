import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:laza_shop/features/product_details/data/models/add_to_cart_request_body.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/login/data/models/login_request_body.dart';
import '../../features/login/data/models/login_response.dart';
import '../../features/product_details/data/models/add_to_cart_response_model.dart';
import '../../features/sign_up/data/models/signup_request_body.dart';
import '../../features/sign_up/data/models/signup_response.dart';
import '../../features/sign_up/data/models/verify_email_request_body.dart';
import 'api_constants.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(@Body() SignupRequestBody signupRequestBody);

  @POST(ApiConstants.verifyEmail)
  Future<dynamic> verifyEmail(
    @Body() VerifyEmailRequestBody verifyEmailRequestBody,
  );
  @POST(ApiConstants.refreshToken)
  Future<LoginResponse> refreshToken(
    @Body() Map<String, dynamic> refreshTokenRequestBody,
  );

  @POST(ApiConstants.addToCart)
  Future<AddToCartResponseModel> addToCart(
    @Header('Content-Type') String contentType,
    @Header('Accept') String accept,
    @Body() AddToCartRequestBody addToCartRequestBody,
  );
}

@JsonSerializable()
class RefreshTokenRequestBody {
  final String refreshToken;
  RefreshTokenRequestBody({required this.refreshToken});
  Map<String, dynamic> toJson() => _$RefreshTokenRequestBodyToJson(this);
}
