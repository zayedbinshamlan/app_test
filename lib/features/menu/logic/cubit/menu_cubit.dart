import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:zayed_test/features/item_details/data/items_list.dart';
import 'package:zayed_test/features/item_details/data/models/item_model.dart';
part 'menu_state.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit() : super(MenuInitial());

  
  Future loadProducts() async {
    emit(Menuloading());
    Future.delayed(const Duration(milliseconds: 1000), () {
      emit(MenuLoaded(items: itemsList));
    });
  }

  void refreshItems(RefreshController refreshController) {
    loadProducts();
    onRefresh(refreshController: refreshController);
  }

  void onRefresh({required RefreshController refreshController}) {
    refreshController.requestRefresh();
    Future.delayed(const Duration(milliseconds: 1000), () {
      refreshController.refreshCompleted();
    });
  }
}
