// import 'package:flutter/material.dart';
// import 'package:route_e_commerce_mohamed_hamouda/features/home/presentation/pages/home_screen.dart';
// import 'package:route_e_commerce_mohamed_hamouda/features/login/presentation/pages/sign_in_screen.dart';
// import 'package:route_e_commerce_mohamed_hamouda/features/signup/presentation/pages/sign_up_screen.dart';
//
// class RoutesName {
//   static const String login = "/";
//   static const String signup = "signup";
//   static const String home = "home";
// }
//
// class AppRouter {
//   static Route onGenerate(RouteSettings settings) {
//     switch (settings.name) {
//       case RoutesName.login:
//         return MaterialPageRoute(builder: (context) => LoginScreen());
//       case RoutesName.signup:
//         return MaterialPageRoute(builder: (context) => SignupScreen());
//       case RoutesName.home:
//         return MaterialPageRoute(builder: (context) => HomeScreen());
//       default:
//         return MaterialPageRoute(builder: (context) => UndefinedRoute());
//     }
//   }
// }
//
// class UndefinedRoute extends StatelessWidget {
//   const UndefinedRoute({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Text('Undefined Route'),
//     );
//   }
// }
//
// myApp :
// onGenerateRoute: (settings) => AppRouter.onGenerate(settings),