import 'package:advanced/core/networking/api_services.dart';
import 'package:advanced/core/networking/dio_factory.dart';
import 'package:advanced/features/auth/data/repo/login/login_repo.dart';
import 'package:advanced/features/auth/data/repo/login/login_repo_impl.dart';
import 'package:advanced/features/auth/data/repo/sing_up/sing_up_repo.dart';
import 'package:advanced/features/auth/data/repo/sing_up/sing_up_repo_impl.dart';
import 'package:advanced/features/auth/presention/manager/login/login_cubit.dart';
import 'package:advanced/features/auth/presention/manager/sign_up/sign_up_cubit.dart';
import 'package:advanced/features/home/data/repo/home_repo.dart';
import 'package:advanced/features/home/data/repo/home_repo_impl.dart';
import 'package:advanced/features/home/presention/manager/home_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../networking/api_client.dart';

final getIt = GetIt.instance;

Future<void> setUpServiceLocator() async {

  await DioFactory.initialize();

  getIt.registerLazySingleton<Dio>(() => DioFactory.dio);

  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt<Dio>()));

  getIt.registerLazySingleton<ApiClient>(() => ApiClient(getIt<ApiService>()));


  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepoImpl(getIt<ApiClient>()),
  );

  getIt.registerLazySingleton<SingUpRepo>(
    () => SignUpRepoImpl(getIt<ApiClient>()),
  );
  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepoImpl(apiClient: getIt<ApiClient>()),
  );

  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(homeRepo: getIt<HomeRepo>()));

  getIt.registerFactory<SignUpCubit>(
    () => SignUpCubit(singUpRepo: getIt<SingUpRepo>()),
  );
}
