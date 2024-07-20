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
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>   OnboardingPage(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Container(
          color: AppColor.whiteColor,
          child:   Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  AppImages.logo,
                  width: double.infinity,
                ),
                Text('ITLALA',style: TextStyle(color: AppColor.blackColor,fontSize: 30.sp),)
            ],
          ),
         
        ),
      ),
    );
  }
}
