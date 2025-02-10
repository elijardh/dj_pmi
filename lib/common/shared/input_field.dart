import 'package:dj_pmi/common/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputField extends StatelessWidget {
  /// This determines the outline of the text
  final bool underline;

  /// This hold value for the hint text
  final String? placeHolder;

  /// This holds the controller for text field
  final TextEditingController? controller;

  /// This string is for error checking(check the functions below)
  final String? error;

  /// This bool is for validation checking(check the fucntions below)
  final bool? validated;

  /// Widget for prefix
  final Widget? prefix;

  /// Widget for suffix
  final Widget? suffix;
  // Obscure the text of not
  final bool? obscure;

  /// Function to perform operation when the value of the textfield changes
  final Function(String?)? onChanged;

  /// Function to perform operation when the value of the textfield is submitted
  final Function(String?)? onSubmitted;

  /// Keyboard type
  final TextInputType? textInputType;

  /// A checker if you want the suffix widget to appear only when text field is focused
  final bool focuSuffix;

  /// The label of the input showed on top
  final String? label;

  /// Mark field as required - adds a red * to the label
  final bool required;

  /// The maximum number of lines to show at one time, wrapping if necessary.
  /// This affects the height of the field itself and does not limit the number of lines that can be entered into the field.
  final int? maxLines;

  /// The minimum number of lines to occupy when the content spans fewer lines.
  /// This affects the height of the field itself and does not limit the number of lines that can be entered into the field.
  final int? minLines;

  /// If false the text field is "disabled": it ignores taps and its [decoration] is rendered in grey.
  final bool? enabled;

  /// The maximum number of characters (Unicode grapheme clusters) to allow in the text field.
  final int? maxLength;

  /// Called for each distinct tap except for every second tap of a double tap.
  final void Function()? onTap;

  /// Whether the text can be changed.
  /// When this is set to true, the text cannot be modified by any shortcut or keyboard operation. The text is still selectable.
  final bool readOnly;

  /// Defines the keyboard focus for this widget.
  /// The [focusNode] is a long-lived object that's typically managed by a [StatefulWidget] parent. See [FocusNode] for more information.
  final FocusNode? focusNode;

  ///Validator
  final String? Function(String?)? validator;

  ///Handles when text field is tapped outside
  final Function(PointerDownEvent)? onTapOutside;

  /// label style of the field
  final TextStyle? lableStyle;

  ///
  final bool addPadding;

  final bool textFilled;

  const InputField({
    super.key,
    this.onTapOutside,
    this.onSubmitted,
    this.controller,
    this.error,
    this.prefix,
    this.suffix,
    this.obscure,
    this.placeHolder,
    this.onChanged,
    this.validated,
    this.textInputType,
    this.focuSuffix = false,
    this.label,
    this.required = false,
    this.readOnly = false,
    this.maxLines,
    this.minLines,
    this.enabled,
    this.maxLength,
    this.onTap,
    this.focusNode,
    this.underline = false,
    this.validator,
    this.lableStyle,
    this.addPadding = true,
    this.textFilled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          label != null
              ? Padding(
                  padding: addPadding
                      ? EdgeInsets.only(bottom: 5.h, left: 2.w)
                      : EdgeInsets.only(bottom: 5.h, left: 2.w),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        if (required)
                          WidgetSpan(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: textFilled ? Colors.green : Colors.red,
                              ),
                            ),
                            alignment: PlaceholderAlignment.middle,
                          ),
                        TextSpan(
                          text: '$label',
                          style: lableStyle ??
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontSize: 14.sp,
                                    color: context
                                        .appColorsDark.highContrastForeground,
                                  ),
                        ),
                      ],
                    ),
                  ),
                )
              : const SizedBox(),
          Material(
            borderRadius: BorderRadius.circular(8.h),
            elevation: 0,
            child: TextFormField(
              onTapOutside: onTapOutside,
              onFieldSubmitted: onSubmitted,
              validator: validator,
              controller: controller,
              keyboardType: textInputType ?? TextInputType.text,
              obscureText: obscure ?? false,
              onChanged: onChanged,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontSize: 16,
                    color: context.appColorsDark.foreground,
                  ),
              maxLines: (obscure ?? false) ? 1 : maxLines,
              minLines: minLines,
              enabled: enabled,
              maxLength: maxLength,
              onTap: onTap,
              readOnly: readOnly,
              focusNode: focusNode,
              decoration: InputDecoration(
                suffixIcon: focuSuffix ? null : suffix,
                prefixIcon: prefix,
                suffix: focuSuffix ? suffix : null,
                filled: true,
                fillColor: getColor(context),
                hintText: placeHolder,
                hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: context.appColorsDark.lowContrastForeground,
                      fontSize: 14.sp,
                    ),
                contentPadding: const EdgeInsets.fromLTRB(15, 20, 10, 10),
                enabledBorder: underline
                    ? const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )
                    : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: const BorderSide(
                          color: Color(0xFF2D2D2D),
                          width: 1.5,
                        ),
                      ),
                border: underline
                    ? const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 0.5),
                      )
                    : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide(
                          color: context.appColorsDark.highContrastForeground,
                          width: 1,
                        ),
                      ),
                focusedBorder: underline
                    ? UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: context.appColorsDark.highContrastForeground,
                          width: 0.5,
                        ),
                      )
                    : getBorder(context),
              ),
            ),
          ),
          5.verticalSpace,
          error == null || error!.isEmpty
              ? const SizedBox()
              : Padding(
                  padding: EdgeInsets.only(top: 2.h),
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outline_rounded,
                        color: Theme.of(context).colorScheme.error,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        error ?? '',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Colors.red,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }

  /// This will get the outline border depending on the error parameter and validated parameter
  InputBorder getBorder(BuildContext context) {
    if (error != null && error!.isNotEmpty) {
      return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide:
            BorderSide(color: Theme.of(context).colorScheme.error, width: 1.5),
      );
    } else if (validated == true) {
      return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.primary,
          width: 1.5,
        ),
      );
    } else {
      return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: context.appColorsDark.highContrastForeground,
          width: 2.0,
        ),
      );
    }
  }

  /// This will get the fill color of the text field based on the error parameter and validated parameter
  Color getColor(BuildContext context) {
    if (error != null && error!.isNotEmpty) {
      return Theme.of(context).colorScheme.error.withAlpha(20);
    } else if (validated == true) {
      return Theme.of(context).colorScheme.primary;
    } else if (underline) {
      return Colors.transparent;
    } else {
      return Color(0xFF1A1A1A);
    }
  }
}
