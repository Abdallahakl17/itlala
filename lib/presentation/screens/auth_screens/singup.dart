// ignore_for_file: must_be_immutable

 

 
import 'package:itlala/presentation/imports.dart';


class SingUpScreen extends StatelessWidget {
  SingUpScreen({super.key});
  TextEditingController emialContoller = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();
  TextEditingController confirmPasswordContoller =
      TextEditingController(); // Add TextEditingController for confirm password
  TextEditingController nameContoller = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init;
     
      
        

        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppString.hello,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomTextField(
                        controller: nameContoller,
                        labelText: AppString.userName),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomTextField(
                        controller: emialContoller, labelText: AppString.email),
                    SizedBox(
                      height: 12.h,
                    ),
                    CustomTextField(
                        obscureText: true,
                        controller: passwordContoller,
                        labelText: AppString.password),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomTextField(
                        obscureText: true,
                        controller:
                            confirmPasswordContoller, // Use confirm password controller
                        labelText: AppString.confirmPassword),
                    SizedBox(
                      height: 24.h,
                    ),
                     CustomButton(
                          onTapped: ()   {
                            
                                 
                              }
                          ,
                          text: AppString.sinUp,
                          radius: 20,
                          heigth: 56.h,
                          width: double.infinity.w,
                        
                    
                      
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            color: AppColor.borderColors,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: ScreenUtil().setWidth(8.0)),
                          child: Text(AppString.orLogin,
                              style: Theme.of(context).textTheme.headlineSmall),
                        ),
                        const Expanded(
                          child: Divider(
                            color: AppColor.borderColors,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    const CustomContainerIcon(),
                    SizedBox(
                      height: 32.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppString.alreadyHaveAccount,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  color: AppColor.blackColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setWidth(2.0)),
                            child: Text(
                              AppString.loginNow,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color: AppColor.titleBoardgingColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
     
  }
}
