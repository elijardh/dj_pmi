import 'package:dj_pmi/common/common.dart';
import 'package:dj_pmi/features/music_player/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MusicPlayerScreen extends StatelessWidget {
  const MusicPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MusicPlayerScreenContent();
  }
}

class MusicPlayerScreenContent extends StatefulWidget {
  const MusicPlayerScreenContent({super.key});

  @override
  State<MusicPlayerScreenContent> createState() =>
      _MusicPlayerScreenContentState();
}

class _MusicPlayerScreenContentState extends State<MusicPlayerScreenContent> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: horizontalPadding(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              20.verticalSpace,
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
      ),
    );
  }
}
