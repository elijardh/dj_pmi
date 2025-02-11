import 'package:dj_pmi/common/common.dart';
import 'package:dj_pmi/common/models/models.dart';
import 'package:dj_pmi/core/routes/routes.dart';
import 'package:dj_pmi/features/authentication/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignUpScreenContent();
  }
}

class SignUpScreenContent extends StatelessWidget {
  const SignUpScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: horizontalPadding(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            20.verticalSpace,
            Text(
              'Create your account',
              style: context.headlineLarge.copyWith(
                fontSize: 30.sp,
              ),
            ),
            20.verticalSpace,
            InputField(
              label: 'Email Address',
              placeHolder: 'Enter email address',
            ),
            20.verticalSpace,
            Button(
              onPressed: () => context.push(
                Routes.otp_view,
                extra: OtpViewArguement(
                  onSuccess: () => context.push(Routes.create_password_screen),
                ),
              ),
              text: 'Continue',
            ),
            20.verticalSpace,
            Seperator(),
            10.verticalSpace,
            SocialMediaSection(),
            10.verticalSpace,
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Already have an account? ',
                style: context.bodyMedium.copyWith(
                  color: context.appColorsDark.midContrastForeground,
                ),
                children: [
                  TextSpan(
                    text: 'Login',
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
      )),
    );
  }
}
