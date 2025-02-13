import 'package:dj_pmi/common/common.dart';
import 'package:flutter/material.dart';

class UploadSongCard extends StatelessWidget {
  const UploadSongCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: allPadding(20),
      decoration: BoxDecoration(
        color: context.secondaryColor,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Column(
        children: [
          10.verticalSpace,
          Padding(
            padding: horizontalPadding(15),
            child: Text(
              'Upload your song, Get more reach',
              textAlign: TextAlign.center,
              style: context.titleLarge.copyWith(
                fontSize: 30.sp,
              ),
            ),
          ),
          10.verticalSpace,
          Text(
            'It’s more affordable, get your audience listening to your song',
            textAlign: TextAlign.center,
            style: context.bodyMedium.copyWith(
              fontSize: 10.sp,
            ),
          ),
          20.verticalSpace,
          Button(
            onPressed: () {},
            buttonColor: Colors.white,
            text: '',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.svgs.musicNoteIcon.svg(),
                5.horizontalSpace,
                Text(
                  'Upload your song',
                  style: context.bodyLarge.copyWith(
                    fontSize: 12.sp,
                    color: context.appColorsDark.background,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
