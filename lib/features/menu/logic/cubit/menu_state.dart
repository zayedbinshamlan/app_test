part of 'menu_cubit.dart';

sealed class MenuState {}

final class MenuInitial extends MenuState {}

final class Menuloading extends MenuState {}

final class MenuLoaded extends MenuState {
  final List<ItemModel> items;

  MenuLoaded({this.items = const []});
}

final class MenuError extends MenuState {
  final String errorMessage;

  MenuError({required this.errorMessage});
}
