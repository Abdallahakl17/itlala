// ignore_for_file: must_be_immutable

 
import 'package:itlala/presentation/imports.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  void Function(String)? onChang;
  Function()? onPressed;
  CustomTextField({
    super.key,
    required this.controller,
    this.onChang,
    this.suffixIcon,
    required this.labelText,
    this.hintText = '',
    this.prefixIcon,
    this.onPressed,
    this.obscureText = false,
      
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      scrollPadding: const EdgeInsets.all(20.0),
      onChanged: onChang,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        // Remove border color
        hoverColor: AppColor.borderColors,
        enabled: true,
        filled: true,
        fillColor: AppColor.textFeildColor,
        labelText: labelText,
        labelStyle: Theme.of(context).textTheme.labelMedium,
        hintText: hintText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: IconButton(onPressed: onPressed, icon: Icon(suffixIcon)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: AppColor.borderColors,
                width: ScreenUtil().setWidth(0.8.w)),
            borderRadius:
                BorderRadius.all(Radius.circular(ScreenUtil().setWidth(20.r)))),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: AppColor.borderColors,
                width: ScreenUtil().setWidth(0.8.w)),
            borderRadius:
                BorderRadius.all(Radius.circular(ScreenUtil().setWidth(20.r)))),
        border: OutlineInputBorder(
            borderSide: BorderSide(
                color: AppColor.borderColors,
                width: ScreenUtil().setWidth(20.w)),
            borderRadius:
                BorderRadius.all(Radius.circular(ScreenUtil().setWidth(20.r)))),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please $labelText';
        }
        return null;
      },
    );
  }
}
