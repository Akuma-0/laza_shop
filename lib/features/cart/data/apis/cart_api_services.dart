import 'package:dio/dio.dart';
import 'package:laza_shop/features/cart/data/models/cart_response_model.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/networking/api_constants.dart';
import '../models/update_item_count_request_body.dart';
import '../models/update_item_count_response_model.dart';
import 'cart_api_constants.dart';


part 'cart_api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class CartApiServices {
  factory CartApiServices(Dio dio) = _CartApiServices;

  @GET( CartApiConstants.cartEP)
  Future<CartResponseModel> getCartItems(
    @Header('Content-Type') String contentType,
    @Header('Accept') String accept,
  );

    @DELETE('${CartApiConstants.deleteItemEP}{itemId}')
  Future<void> deleteCartItem(
    @Path('itemId') String itemId,
    @Header('Content-Type') String contentType,
    @Header('Accept') String accept,
    @Body() Map<String, dynamic> body,
  );

  @PUT('${CartApiConstants.updateItemEP}{itemId}')
  Future<UpdateItemCountResponseModel> updateCartItemCount(
    @Path('itemId') String itemId,
    @Header('Content-Type') String contentType,
    @Header('Accept') String accept,
    @Body() UpdateItemCountRequestBody updateItemCountRequestBody,
  );
}