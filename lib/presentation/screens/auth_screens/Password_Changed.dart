 
import 'package:itlala/presentation/imports.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.successMark,
              height: 100.h,
              width: 100.w,
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              AppString.passwordChanged,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(
              height: 8.h,
            ),
            SizedBox(
                width: 226.w,
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      AppString.passwordChangedText,
                      style: Theme.of(context).textTheme.labelMedium,
                    ))),
            SizedBox(
              height:24.h,
            ),
            CustomButton(
              radius: 50.r,
              text: AppString.backtoLogin,
              onTapped: (){}),
            
          ],
        ),
      ),
    );
  }
}
