import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/cart/data/apis/cart_api_services.dart';
import '../../features/cart/data/repos/cart_repo.dart';
import '../../features/cart/logic/cart_cubit.dart';
import '../../features/forgot_password/data/apis/forgot_password_api_services.dart';
import '../../features/forgot_password/data/repos/forgot_password_repo.dart';
import '../../features/forgot_password/logic/forgot_password/forgot_password_cubit.dart';
import '../../features/forgot_password/logic/reset_password/reset_password_cubit.dart';
import '../../features/home/data/apis/home_api_services.dart';
import '../../features/home/data/repos/home_repo.dart';
import '../../features/home/logic/home_cubit.dart';
import '../../features/login/data/repos/login_repo.dart';
import '../../features/login/logic/login_cubit.dart';
import '../../features/product_details/data/repos/add_to_cart_repo.dart';
import '../../features/product_details/logic/add_to_cart_cubit.dart';
import '../../features/sign_up/data/repos/signup_repo.dart';
import '../../features/sign_up/data/repos/verify_email_repo.dart';
import '../../features/sign_up/logic/email_cnofirmation_cubit.dart';
import '../../features/sign_up/logic/signup_cubit.dart';
import '../networking/api_services.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // forgot password
  getIt.registerLazySingleton <ForgotPasswordApiServices>(() => ForgotPasswordApiServices(dio));
  getIt.registerLazySingleton<ForgotPasswordRepo>(() => ForgotPasswordRepo(getIt()));
  getIt.registerFactory<ForgotPasswordCubit>(() => ForgotPasswordCubit(getIt()));

  // reset password
  getIt.registerFactory<ResetPasswordCubit>(() => ResetPasswordCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // email confirmation
  getIt.registerLazySingleton<VerifyEmailRepo>(() => VerifyEmailRepo(getIt()));
  getIt.registerFactory<EmailConfirmationCubit>(
    () => EmailConfirmationCubit(getIt()),
  );

  // home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));

  // cart
  getIt.registerLazySingleton<CartApiServices>(() => CartApiServices(dio));
  getIt.registerLazySingleton<CartRepo>(() => CartRepo(getIt()));
  getIt.registerFactory<CartCubit>(() => CartCubit(getIt()));

  // add to cart
  getIt.registerLazySingleton<AddToCartRepo>(() => AddToCartRepo(apiServices: getIt()));
  getIt.registerFactory<AddToCartCubit>(() => AddToCartCubit(getIt()));
}
