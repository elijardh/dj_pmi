import 'package:dj_pmi/common/common.dart';
import 'package:dj_pmi/common/models/models.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpView extends StatelessWidget {
  final OtpViewArguement otpViewArguement;
  const OtpView({
    super.key,
    required this.otpViewArguement,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: horizontalPadding(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              otpViewArguement.title ??
                  'Enter the 6-digits OTP sent to your email address',
              style: context.titleLarge.copyWith(
                fontSize: 30.sp,
              ),
            ),
            20.verticalSpace,
            Pinput(
              length: 6,
              defaultPinTheme: PinTheme(
                  height: 54.h,
                  width: 44.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: context.appColorsDark.border,
                    ),
                    color: context.secondaryColor,
                  )),
            ),
            20.verticalSpace,
            Button(
              onPressed: () => otpViewArguement.onSuccess(),
              text: 'Continue',
            ),
            20.verticalSpace,
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Didn’t receive any code? ',
                style: context.bodyMedium.copyWith(
                  color: context.appColorsDark.midContrastForeground,
                ),
                children: [
                  TextSpan(
                    text: 'Resend',
                    recognizer: TapGestureRecognizer()..onTap = () {},
                    style: context.bodyLarge.copyWith(
                      fontSize: 14.sp,
                      color: context.appColorsDark.highContrastForeground,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
