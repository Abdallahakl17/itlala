

import 'package:itlala/presentation/imports.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: AppString.onBoardingHead,
              body: AppString.onBoardingTitle,
              image: buildImage(AppImages.on1),
              decoration: getPageDecoration(context),
            ),
            PageViewModel(
              title: AppString.onBoardingHead1,
              body: AppString.onBoardingTitle1,
              image: buildImage(AppImages.on2),
              decoration: getPageDecoration(context),
            ),
            PageViewModel(
              title: AppString.onBoardingHead2,
              body: AppString.onBoardingTitle2,
              image: buildImage(AppImages.on3),
              decoration: getPageDecoration(context),
            ),
          ],
          onDone: () => goToHome(context),
          onSkip: () => goToHome(context),
          showSkipButton: true,
          skip:
              Text(AppString.skip, style: Theme.of(context).textTheme.bodyMedium),
          next: const Icon(
            Icons.arrow_forward,
            color: AppColor.titleBoardgingColor,
            size: 32,
          ),
          done: Text(AppString.start,
              style: Theme.of(context).textTheme.bodyMedium),
          dotsDecorator: getDotDecoration(),
        ),
      ),
    );
  }

  void goToHome(context) => Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));

  Widget buildImage(String path) => Center(
        child: Image.asset(path, width: 350.w),
      );

  PageDecoration getPageDecoration(BuildContext context) => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700),
        bodyTextStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
        imagePadding: EdgeInsets.all(24.h),
        pageColor: AppColor.whiteColor,
      );

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: AppColor.dotsColors,
        activeColor: AppColor.buttonsArrowColor,
        size: Size(10.0.w, 10.0.h),
        activeSize: Size(22.0.w, 10.0.h),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0.h)),
        ),
      );
}
