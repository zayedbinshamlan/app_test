// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:zayed_test/core/di/dependency_injection.dart';
import 'package:zayed_test/core/helpers/app_images.dart';
import 'package:zayed_test/core/theming/app_colors.dart';
import 'package:zayed_test/core/theming/text_styles.dart';
import 'package:zayed_test/features/bag/ui/bag_screen.dart';
import 'package:zayed_test/features/menu/logic/cubit/menu_cubit.dart';
import 'package:zayed_test/features/menu/ui/menu_screen.dart';
import 'package:zayed_test/features/more/ui/more_screen.dart';
import 'package:zayed_test/features/orders/ui/orders_screen.dart';

class NavigationBarView extends StatefulWidget {
  const NavigationBarView({super.key});

  @override
  State<NavigationBarView> createState() => _NavigationBarViewState();
}

class _NavigationBarViewState extends State<NavigationBarView> {
  final PersistentTabController _bottomNavController =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _bottomNavController,
      screens: _buildScreens(),
      items: _buildNavBarsItems(),
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          duration: Duration(milliseconds: 400),
          curve: Curves.easeIn,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.slide,
        ),
      ),
      navBarStyle: NavBarStyle.simple,
      navBarHeight: kBottomNavigationBarHeight,
      padding: EdgeInsets.only(top: 6.h),
      decoration: NavBarDecoration(
          border: Border(
              top: BorderSide(width: 0.5.w, color: AppColors.dividerColor))),
    );
  }

  // بناء الشاشة لكل عنصر في شريط التنقل
  List<Widget> _buildScreens() {
    return [
      BlocProvider(
        create: (context) => getIt<MenuCubit>()..loadProducts(),
        child: const MenuScreen(),
      ),
      const BagScreen(),
      const OrdersScreen(),
      const MoreScreen(),
    ];
  }

  // بناء عناصر شريط التنقل السفلي
  List<PersistentBottomNavBarItem> _buildNavBarsItems() {
    return [
      _buildNavBarItem(AppImages.menuIcon, 'Menu'),
      _buildNavBarItem(AppImages.bagIcon, 'Bag'),
      _buildNavBarItem(AppImages.ordersIcon, 'Orders'),
      _buildNavBarItem(AppImages.moreIcon, 'More'),
    ];
  }

  // بناء عنصر شريط التنقل
  PersistentBottomNavBarItem _buildNavBarItem(String iconPath, String title) {
    return PersistentBottomNavBarItem(
      icon: SvgPicture.asset(iconPath, color: AppColors.pinkColor),
      inactiveIcon: SvgPicture.asset(iconPath,
          color: AppColors.blackColor.withOpacity(0.4)),
      title: title,
      activeColorPrimary: AppColors.pinkColor,
      inactiveColorPrimary: AppColors.blackColor.withOpacity(0.4),
      textStyle: TextStyles.font12BlackRegular,
    );
  }
}
