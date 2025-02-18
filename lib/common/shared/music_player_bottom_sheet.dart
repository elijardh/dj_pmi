import 'package:dj_pmi/common/common.dart';
import 'package:dj_pmi/features/music_player/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MusicPlayerBottomSheet extends StatefulWidget {
  const MusicPlayerBottomSheet({super.key});

  @override
  State<MusicPlayerBottomSheet> createState() => _MusicPlayerBottomSheetState();
}

class _MusicPlayerBottomSheetState extends State<MusicPlayerBottomSheet> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: horizontalPadding(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            40.verticalSpace,
            MusicPlayerHeader(
              currentIndex: currentIndex,
              onTap: (index) => setState(
                () {
                  currentIndex = index;
                },
              ),
            ),
            Expanded(
              child: IndexedStack(
                index: currentIndex,
                children: [
                  Container(),
                  MusicView(),
                  DiscoverView(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
