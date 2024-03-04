import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce_mohamed_hamouda/core/api/api_manager.dart';
import 'package:route_e_commerce_mohamed_hamouda/features/sign_up/data/data_sources/remote/signup_remote_ds_impl.dart';
import 'package:route_e_commerce_mohamed_hamouda/features/sign_up/data/repositories/signup_repo_impl.dart';
import 'package:route_e_commerce_mohamed_hamouda/features/sign_up/domain/use_cases/signup_use_case.dart';
import 'package:route_e_commerce_mohamed_hamouda/features/sign_up/presentation/cubit/signup_cubit.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../sign_in/presentation/widgets/my_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = 'sign-up-screen';

  SignUpScreen({super.key});

  final viewModel = SignUpCubit(
      signupUseCase: SignupUseCase(
          SignupRepoImpl(SignUpRemoteDSImpl(apiManager: ApiManager()))));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Form(
            key: viewModel.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 76.h),
                Image.asset('assets/images/route_white_logo.png'),
                SizedBox(
                  height: 55.9.h,
                ),
                MyTextFormField(
                  hintText: 'Enter your full name',
                  labelText: 'Full Name',
                ),
                SizedBox(height: 32.h),
                MyTextFormField(
                  hintText: 'Enter your Mobile no',
                  labelText: 'Mobile number',
                ),
                SizedBox(height: 16.h),
                MyTextFormField(
                  hintText: 'Enter your email address',
                  labelText: 'E-mail Address',
                ),
                SizedBox(height: 16.h),
                MyTextFormField(
                  hintText: 'Enter your password',
                  isPassword: true,
                  labelText: 'Password',
                ),
                SizedBox(height: 56.h),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.whiteColor,
                        fixedSize: Size(double.infinity, 64.h),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.r))),
                    onPressed: () {
                      if (viewModel.formKey.currentState!.validate()) {}
                    },
                    child: Text(
                      'Sign Up',
                      style: Theme.of(context).textTheme.labelLarge,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
