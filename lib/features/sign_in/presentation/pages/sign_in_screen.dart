import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce_mohamed_hamouda/features/sign_up/presentation/cubit/signup_cubit.dart';
import '../../../../core/api/api_manager.dart';
import '../../../../core/utils/app_colors.dart';
import '../../data/data_sources/remote/sign_in_remote_ds_impl.dart';
import '../../data/repositories/sign_in_repository_impl.dart';
import '../../domain/entities/SignInRequest.dart';
import '../../domain/use_cases/sign_in_use_case.dart';
import '../cubit/sign_in_cubit.dart';
import '../widgets/my_text_form_field.dart';

class SignInScreen extends StatefulWidget {
  static const String routeName = 'sign-in-screen';

  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  SignInCubit viewModel = SignInCubit(
      useCase: SignInUseCase(
          signInRepository: SignInRepositoryImpl(
              remoteDs: SignInRemoteDsImpl(apiManager: ApiManager()))));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: BlocListener<SignInCubit, SignInState>(
          bloc: viewModel,
          listener: (context, state) {
            if (state is SignInSuccessState) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Login successfully'),
              ));
            }
            if (state is SignInLoadingState) {
              showDialog(
                  context: context,
                  builder: (context) => const AlertDialog(
                        content: Center(child: CircularProgressIndicator()),
                      ));
            }
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: SingleChildScrollView(
              child: Form(
                key: viewModel.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 91.h),
                    Image.asset('assets/images/route_white_logo.png'),
                    SizedBox(
                      height: 86.9.h,
                    ),
                    Text('Welcome Back To Route',
                        style: Theme.of(context).textTheme.headlineLarge),
                    Text('Please sign in with your mail',
                        style: Theme.of(context).textTheme.labelSmall),
                    SizedBox(height: 40.h),
                    MyTextFormField(
                      hintText: 'Enter your email',
                      labelText: 'E-mail',
                      controller: viewModel.userNameController,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'This field is required';
                        }
                      },
                    ),
                    SizedBox(height: 32.h),
                    MyTextFormField(
                      hintText: 'Enter your password',
                      isPassword: true,
                      labelText: 'Password',
                      controller: viewModel.passwordController,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'This field is required';
                        }
                      },
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        const Spacer(),
                        Text(
                          'Forgot password',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                              ?.copyWith(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(height: 57.h),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.whiteColor,
                            fixedSize: Size(double.infinity, 64.h),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r))),
                        onPressed: () {
                          if (viewModel.formKey.currentState!.validate()) {
                            viewModel.signIn(viewModel.signInRequest, context);
                          }
                        },
                        child: Text(
                          'Login',
                          style: Theme.of(context).textTheme.labelLarge,
                        )),
                    SizedBox(height: 32.h),
                    Text(
                      "Don't have an account? Create Account",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
