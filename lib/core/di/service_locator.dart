import 'package:advanced/core/networking/api_services.dart';
import 'package:advanced/core/networking/dio_factory.dart';
import 'package:advanced/features/auth/data/repo/login_repo.dart';
import 'package:advanced/features/auth/presention/manager/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/data/repo/login_repo_impl.dart';
import '../networking/api_client.dart';

final getIt = GetIt.instance;

Future<void> setUpServiceLocator() async {
  await DioFactory.initialize();

  // Dio
  getIt.registerLazySingleton<Dio>(() => DioFactory.dio);

  // ApiService
  getIt.registerLazySingleton<ApiService>(
        () => ApiService(getIt<Dio>()),
  );

  // ApiClient
  getIt.registerLazySingleton<ApiClient>(
        () => ApiClient(getIt<ApiService>()),
  );

  // Repo
  getIt.registerLazySingleton<LoginRepo>(
        () => LoginRepoImpl(getIt<ApiClient>()),
  );

  // Cubit (⚠️ factory not singleton)
  getIt.registerFactory<LoginCubit>(
        () => LoginCubit(getIt<LoginRepo>()),
  );
}
