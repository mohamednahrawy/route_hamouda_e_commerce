import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/utils/app_theme.dart';
import 'features/sign_in/presentation/pages/sign_in_screen.dart';
import 'features/sign_up/presentation/pages/sign_up_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SignInScreen.routeName,
        theme: AppTheme.lightTheme,
        themeMode: ThemeMode.light,
        routes: {
          SignInScreen.routeName: (context) =>  SignInScreen(),
          SignUpScreen.routeName: (context) => SignUpScreen(),
        },
      ),
    );
  }
}
