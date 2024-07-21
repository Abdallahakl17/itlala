
import 'package:itlala/presentation/imports.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouterName.splashView:
        return SizeTransition3(const LogoScreen());
      case AppRouterName.onboarding:
        return SizeTransition3(const OnboardingPage());
      case AppRouterName.loginScreen:
        return SizeTransition5(LoginScreen());
      case AppRouterName.forgetPassword:
        return SizeTransition5(ForgetPassword());
      case AppRouterName.resetPassword:
        // final restPasswordModel = settings.arguments as RestPasswordModel;
        return SizeTransition5(CrrateNewPassword());
      case AppRouterName.otpScreen:
        // final email = settings.arguments as String;
        return SizeTransition5(const OtpVerification());
      case AppRouterName.passwordChanged:
        return SizeTransition5(const PasswordChanged());

      case AppRouterName.singUP:
        return SizeTransition5(SingUpScreen());
      case AppRouterName.homepage:
        return SizeTransition5(const HomePageScreen());

      default:
        return null;
    }
  }
}

class SizeTransition3 extends PageRouteBuilder {
  final Widget page;

  SizeTransition3(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: const Duration(seconds: 4),
          reverseTransitionDuration: const Duration(seconds: 2),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
                curve: Curves.fastLinearToSlowEaseIn,
                parent: animation,
                reverseCurve: Curves.fastOutSlowIn);
            return Align(
              alignment: Alignment.center,
              child: SizeTransition(
                axis: Axis.horizontal,
                sizeFactor: animation,
                axisAlignment: 0,
                child: page,
              ),
            );
          },
        );
}

class SizeTransition5 extends PageRouteBuilder {
  final Widget page;

  SizeTransition5(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: const Duration(seconds: 2),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
                curve: Curves.fastLinearToSlowEaseIn,
                parent: animation,
                reverseCurve: Curves.fastOutSlowIn);
            return Align(
              alignment: Alignment.centerRight,
              child: SizeTransition(
                axis: Axis.horizontal,
                sizeFactor: animation,
                axisAlignment: 0,
                child: page,
              ),
            );
          },
        );
}
