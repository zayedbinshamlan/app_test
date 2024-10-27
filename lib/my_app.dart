import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zayed_test/core/routing/app_router.dart';
import 'package:zayed_test/core/theming/app_colors.dart';

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 993),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Test Demo',
        theme: ThemeData(
            scaffoldBackgroundColor: AppColors.backgroundWhiteColor,
            fontFamily: 'Vazirmatn'),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
