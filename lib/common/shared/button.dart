import 'package:dj_pmi/common/utilties/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color? buttonNameColor;
  final Color? buttonColor;
  final bool? hasBorder;
  final Color? borderColor;
  final double? borderWidth;
  final bool? textButton;
  final bool? textButtonUnderline;
  final bool? loading;
  final bool? disabled;
  final Color? loaderColor;
  const Button({
    super.key,
    this.loaderColor,
    required this.onPressed,
    required this.text,
    this.buttonNameColor,
    this.disabled = false,
    this.hasBorder = false,
    this.borderColor,
    this.borderWidth,
    this.buttonColor,
    this.textButton,
    this.textButtonUnderline,
    this.loading,
  });

  @override
  Widget build(BuildContext context) {
    if (textButton ?? false) {
      return GestureDetector(
        onTap: () => disabled! || (loading ?? false) ? null : onPressed(),
        child: (loading ?? false)
            ? SizedBox(
                height: 20.h,
                width: 20.w,
                child: Loader(
                  color: loaderColor,
                ),
              )
            : Text(
                text,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      decorationColor: buttonNameColor ??
                          Theme.of(context).colorScheme.primary,
                      decoration: (textButtonUnderline ?? false)
                          ? TextDecoration.underline
                          : TextDecoration.none,
                      color: buttonNameColor ??
                          Theme.of(context).colorScheme.primary.withAlpha(100),
                    ),
              ),
      );
    }
    return MaterialButton(
      elevation: 0,
      onPressed: () => disabled! || (loading ?? false) ? null : onPressed(),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: disabled!
              ? Colors.transparent
              : borderColor ?? Colors.transparent,
          width: hasBorder == true ? borderWidth ?? 1 : 0,
        ),
        borderRadius: BorderRadius.circular(30.r),
      ),
      color: disabled!
          ? Theme.of(context).colorScheme.onTertiary
          : buttonColor ?? Theme.of(context).colorScheme.primary,
      minWidth: 100.w,
      //height: 40.h,
      padding: verticalPadding(17),
      child: (loading ?? false)
          ? SizedBox(
              height: 20.h,
              width: 20.w,
              child: Loader(
                color: loaderColor,
              ),
            )
          : Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    color: disabled!
                        ? Theme.of(context).colorScheme.onPrimary.withAlpha(50)
                        : buttonNameColor ??
                            Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
    );
  }
}

class Loader extends StatelessWidget {
  final Color? color;
  final double? value;
  const Loader({super.key, this.color, this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      width: 30.w,
      child: Center(
        child: CircularProgressIndicator(
          color: color ?? Theme.of(context).colorScheme.surface,
          value: value,
        ),
      ),
    );
  }
}
