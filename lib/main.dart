import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zayed_test/core/di/dependency_injection.dart';
import 'package:zayed_test/core/routing/app_router.dart';
import 'package:zayed_test/test_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await setupGetIt();
  runApp(TestApp(appRouter: AppRouter()));
}
