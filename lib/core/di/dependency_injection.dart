import 'package:advanced/features/auth/data/repo/auth_repo.dart';
import 'package:advanced/features/auth/presention/manager/auth_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/auth/data/repo/auth_repo_impl.dart';
import '../networking/api_client.dart';
import '../networking/api_services.dart';
import '../networking/dio_factory.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  getIt.registerSingleton<Dio>(DioFactory.dio);

  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt<Dio>()));

  getIt.registerLazySingleton<ApiClient>(() => ApiClient(getIt<ApiService>()));

  getIt.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(getIt<ApiClient>()));
  getIt.registerLazySingleton<AuthCubit>(() => AuthCubit(getIt<AuthRepo>()));
}
