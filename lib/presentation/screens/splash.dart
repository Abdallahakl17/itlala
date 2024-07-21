import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itlala/core/utils/constant/app_colors.dart';
import 'package:itlala/core/utils/constant/app_images.dart';
import 'package:itlala/presentation/screens/onboarding.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  double _opacity = 0.0;
  Alignment _alignment = Alignment.topCenter;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      setState(() {
        _opacity = 1.0;
        _alignment = Alignment.center;
      });
    });

    // Future.delayed(const Duration(seconds: 4), () {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => OnboardingPage(),
    //     ),
    //   );
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColor.linearProgress,
                AppColor.buttonsColor,
                AppColor.ligthBlue,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: AnimatedAlign(
            duration: const Duration(seconds: 4),
            alignment: _alignment,
            curve: Curves.easeInOut,
            child: AnimatedOpacity(
              duration: const Duration(seconds: 4),
              opacity: _opacity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 40.w,
                    child: Image.asset(
                      AppImages.logo,
                      width: double.infinity,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'ITLALA',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
