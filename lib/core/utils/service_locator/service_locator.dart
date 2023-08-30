import 'package:get_it/get_it.dart';
import 'package:guard/features/data/repositories/user_repository.dart';
import 'package:guard/features/presentation/controller/cubit/map_cubit.dart';
import 'package:guard/features/presentation/controller/cubit/register_cubit.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  void init() {
    getIt.registerFactory(() => RegisterCubit(getIt()));
    getIt.registerFactory(() => MapCubit());
    getIt.registerLazySingleton(() => UserRepository());
  }
}
