import 'package:dio/dio.dart';
import 'package:laza_shop/features/cart/data/models/cart_response_model.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/networking/api_constants.dart';
import 'cart_api_constants.dart';


part 'cart_api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class CartApiServices {
  factory CartApiServices(Dio dio) = _CartApiServices;

  @GET( CartApiConstants.cartEP)
  Future<CartResponseModel> getCart(
    @Header('Content-Type') String contentType,
    @Header('Accept') String accept,
  );
}


/*
var headers = {
  'Accept': 'application/json',
};
var dio = Dio();
var response = await dio.request(
  'https://accessories-eshop.runasp.net/api/cart',
  options: Options(
    method: 'GET',
    headers: headers,
  ),
);

if (response.statusCode == 200) {
  print(json.encode(response.data));
}
else {
  print(response.statusMessage);
}
*/