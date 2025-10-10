import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/networking/api_constants.dart';
import '../models/categories_response_model.dart';
import '../models/products_response_model.dart';
import 'home_api_constants.dart';

part 'home_api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.productsEP)
  Future<ProductsResponseModel> getProducts(
    @Header('Content-Type') String contentType,
    @Header('Accept') String accept,
    @Body() Map<String, dynamic> body,
  );
  
  @GET(HomeApiConstants.categoriesEP)
  Future<CategoriesResponseModel> getCategories(
    @Header('Content-Type') String contentType,
    @Header('Accept') String accept,
    @Body() Map<String, dynamic> body,
  );
}


/*
var headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
};
var data = json.encode({});
var dio = Dio();
var response = await dio.request(
  'https://accessories-eshop.runasp.net/api/products',
  options: Options(
    method: 'GET',
    headers: headers,
  ),
  data: data,
);

if (response.statusCode == 200) {
  print(json.encode(response.data));
}
else {
  print(response.statusMessage);
}
 */