// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:zayed_test/core/helpers/app_images.dart';
import 'package:zayed_test/core/theming/app_colors.dart';
import 'package:zayed_test/core/theming/text_styles.dart';
import 'package:zayed_test/features/home/ui/home_screen.dart';

class HomeTabControllerView extends StatefulWidget {
  const HomeTabControllerView({super.key});

  @override
  State<HomeTabControllerView> createState() => _HomeTabControllerViewState();
}

class _HomeTabControllerViewState extends State<HomeTabControllerView> {
  final PersistentTabController _bottomNavController =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _bottomNavController,
      screens: _buildScreens(),
      items: _buildNavBarsItems(),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardAppears: true,
      padding: EdgeInsets.zero,
      isVisible: true,
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
      confineToSafeArea: true,
      navBarStyle: NavBarStyle.simple,
      navBarHeight: 60,
    );
  }

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const HomeScreen(),
      const HomeScreen(),
      const HomeScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _buildNavBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(AppImages.menuIcon),
          inactiveIcon:
              SvgPicture.asset(AppImages.menuIcon, color: AppColors.blackColor),
          title: ('Menu'),
          activeColorPrimary: AppColors.pinkColor,
          inactiveColorPrimary: AppColors.blackColor,
          textStyle: TextStyles.font12BlackRegular),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(AppImages.bagIcon, color: AppColors.pinkColor),
          inactiveIcon: SvgPicture.asset(AppImages.bagIcon),
          title: ('Bag'),
          activeColorPrimary: AppColors.pinkColor,
          inactiveColorPrimary: AppColors.blackColor,
          textStyle: TextStyles.font12BlackRegular),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(AppImages.ordersIcon,
              color: AppColors.pinkColor),
          inactiveIcon: SvgPicture.asset(AppImages.ordersIcon),
          title: ('Orders'),
          activeColorPrimary: AppColors.pinkColor,
          inactiveColorPrimary: AppColors.blackColor,
          textStyle: TextStyles.font12BlackRegular),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            AppImages.moreIcon,
            color: AppColors.pinkColor,
          ),
          inactiveIcon: SvgPicture.asset(AppImages.moreIcon),
          title: ('More'),
          activeColorPrimary: AppColors.pinkColor,
          inactiveColorPrimary: AppColors.blackColor,
          textStyle: TextStyles.font12BlackRegular),
    ];
  }
}
