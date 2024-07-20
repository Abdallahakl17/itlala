 
import 'package:itlala/presentation/imports.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: ScreenUtil().setHeight(32.h),
            horizontal: ScreenUtil().setWidth(22.w)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppString.forgetPassword,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(
              height:24.h,
            ),
            Text(
              AppString.forgotPasswordText,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(24.h),
              ),
              child: CustomTextField(
                 
                controller: emailController,
                labelText: AppString.enterYourEmail,
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            CustomButton(
              text: AppString.sendCode,
              onTapped: () {}
            ),
            SizedBox(
              height: 32.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppString.rememberPassword,
                    style: Theme.of(context).textTheme.titleSmall),
                InkWell(
                  onTap: () {
                    
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(2.0.w)),
                    child: Text(
                      AppString.login,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: AppColor.titleBoardgingColor),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
