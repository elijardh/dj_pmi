import 'package:dj_pmi/common/common.dart';
import 'package:flutter/material.dart';

class FeedsView extends StatelessWidget {
  final Color color;
  const FeedsView({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: color,
        ),
        SafeArea(
          child: Padding(
            padding: allPadding(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Feeds'),
                    Icon(Icons.more_horiz),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 20.h,
                                width: 20.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.indigo),
                              ),
                              5.horizontalSpace,
                              Text(
                                'Ariana Grande',
                                style: context.bodyMedium.copyWith(
                                  fontSize: 10.sp,
                                ),
                              ),
                              10.horizontalSpace,
                              Text(
                                '2h',
                                style: context.bodyMedium.copyWith(
                                  fontSize: 10.sp,
                                  color: context
                                      .appColorsDark.lowContrastForeground,
                                ),
                              ),
                              10.horizontalSpace,
                              Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 20,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                ),
                                child: Center(
                                  child: Text(
                                    'Follow',
                                    style: context.bodyLarge.copyWith(
                                      fontSize: 10,
                                      color: context
                                          .appColorsDark.highContrastForeground,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          10.verticalSpace,
                          Text(
                            '''Lorem Ipsum dolor sit amet consectus param swap Lorem Ipsum  swap Lorem Ipsum dolor sit amet  Lorem Ipsum dolor''',
                            style: context.bodySmall.copyWith(
                              fontSize: 10.sp,
                            ),
                          ),
                          10.verticalSpace,
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                              ),
                              5.horizontalSpace,
                              Flexible(
                                child: Text(
                                  "Airport way, Luton, UK 6° 27' | 30\" N 3° 23’ 45” E",
                                  textAlign: TextAlign.justify,
                                  style: context.bodySmall.copyWith(
                                    fontSize: 10.sp,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    20.horizontalSpace,
                    Column(
                      children: [
                        ActionButton(
                          icon: Assets.svgs.thumbsUpIcon,
                          title: '2.1M',
                          onTap: () {},
                        ),
                        30.verticalSpace,
                        ActionButton(
                          icon: Assets.svgs.commentIcon,
                          title: '20K',
                          onTap: () {},
                        ),
                        30.verticalSpace,
                        ActionButton(
                          icon: Assets.svgs.shareIcon,
                          onTap: () {},
                          title: '20K',
                        ),
                        30.verticalSpace,
                        Icon(
                          Icons.more_horiz,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
