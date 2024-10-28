import 'package:get_it/get_it.dart';
import 'package:zayed_test/features/menu/logic/cubit/menu_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<MenuCubit>(() => MenuCubit());
}
