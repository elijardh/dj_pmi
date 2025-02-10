import 'package:dj_pmi/common/common.dart';
import 'package:dj_pmi/features/authentication/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: allPadding(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              30.verticalSpace,
              Text(
                'Log in to your account',
                textAlign: TextAlign.center,
                style: context.headlineLarge.copyWith(
                  fontSize: 30.sp,
                  color: context.appColorsDark.highContrastForeground,
                ),
              ),
              30.verticalSpace,
              InputField(
                label: 'Email Address',
                placeHolder: 'Enter email address',
              ),
              20.verticalSpace,
              InputField(
                label: 'Password',
                obscure: true,
                placeHolder: '********',
                suffix: Icon(Icons.visibility_outlined),
              ),
              20.verticalSpace,
              Button(
                onPressed: () {},
                text: 'Forgot Password?',
                textButton: true,
                textButtonUnderline: true,
                buttonNameColor: context.appColorsDark.midContrastForeground,
              ),
              20.verticalSpace,
              Button(
                onPressed: () {},
                text: 'Log in',
              ),
              20.verticalSpace,
              Seperator(),
              10.verticalSpace,
              SocialMediaSection(),
              10.verticalSpace,
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Don’t have an account? ',
                  style: context.bodyMedium.copyWith(
                    color: context.appColorsDark.midContrastForeground,
                  ),
                  children: [
                    TextSpan(
                      text: 'Create an account',
                      style: context.bodyLarge.copyWith(
                        fontSize: 14.sp,
                        color: context.primaryColor,
                      ),
                    )
                  ],
                ),
              ),
              20.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
