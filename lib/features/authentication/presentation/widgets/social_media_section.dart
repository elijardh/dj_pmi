import 'package:dj_pmi/common/common.dart';
import 'package:flutter/material.dart';

class SocialMediaSection extends StatelessWidget {
  const SocialMediaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaButton(
          icon: Assets.svgs.googleIcon,
          title: 'Continue with Google',
        ),
        SocialMediaButton(
          icon: Assets.svgs.appleIcon,
          title: 'Continue with Apple',
        ),
        SocialMediaButton(
          icon: Assets.svgs.facebookIcon,
          title: 'Continue with Facebook',
        ),
      ],
    );
  }
}

class SocialMediaButton extends StatelessWidget {
  final SvgGenImage icon;
  final String title;
  const SocialMediaButton({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: verticalPadding(10),
      padding: allPadding(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        border: Border.all(
          color: context.appColorsDark.border,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon.svg(),
          Text(
            title,
            style: context.bodyLarge.copyWith(
              fontSize: 12.sp,
            ),
          ),
          SizedBox(),
        ],
      ),
    );
  }
}
