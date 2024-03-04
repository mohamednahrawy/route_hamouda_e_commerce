import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';

//ignore: must_be_immutable
class MyTextFormField extends StatefulWidget {
  final bool isPassword;
  final String hintText;
  final String labelText;
  bool isObsecure;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  MyTextFormField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.isPassword = false,
    this.isObsecure = true,
    this.validator,
    this.controller,
  });

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();

}

class _MyTextFormFieldState extends State<MyTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          widget.labelText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        SizedBox(height: 24.h),
        TextFormField(
          /// Best Practice: not wrapping the textFormField with Container
          /// because the validator message
          obscureText: widget.isPassword? widget.isObsecure == true : widget.isObsecure == false,
          controller: widget.controller,
          validator: widget.validator,
          decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.whiteColor,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 18.h, horizontal: 14.h),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
              ),
              hintText: widget.hintText,
              suffixIcon: Visibility(
                visible: widget.isPassword,
                child: InkWell(
                  onTap: () {
                    widget.isObsecure = !widget.isObsecure;
                    setState(() {});
                  },
                  child: widget.isObsecure
                      ? const Icon(Icons.visibility_off_outlined)
                      : const Icon(Icons.visibility_outlined),
                ),
              )),
        ),
      ],
    );
  }
}
