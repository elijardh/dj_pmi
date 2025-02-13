import 'package:dj_pmi/common/common.dart';
import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  final int currentIndex;
  final void Function(int index) onTap;
  const BottomNavigator({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator>
    with TickerProviderStateMixin {
  late List<AnimationController> _controllers;
  late List<Animation<double>> _animations;

  @override
  void initState() {
    _controllers = List.generate(
      4,
      (index) => AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200),
      ),
    );

    _animations = _controllers.map((controller) {
      return Tween<double>(begin: 1.0, end: 1.3).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeOut),
      );
    }).toList();
    super.initState();
  }

  void _onItemTapped(int index) {
    if (widget.currentIndex != index) {
      _controllers[index].forward().then((_) => _controllers[index].reverse());
    }

    widget.onTap(index);
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 30),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: context.appColorsDark.border,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavigatorIcon(
            animation: _animations[0],
            icon: Assets.svgs.homeIcon,
            selected: widget.currentIndex == 0,
            title: 'Home',
            onTap: () => _onItemTapped(0),
          ),
          BottomNavigatorIcon(
            animation: _animations[1],
            icon: Assets.svgs.feedsIcon,
            selected: widget.currentIndex == 1,
            title: 'Feeds',
            onTap: () => _onItemTapped(1),
          ),
          BottomNavigatorIcon(
            animation: _animations[2],
            icon: Assets.svgs.libraryIcon,
            selected: widget.currentIndex == 2,
            title: 'Library',
            onTap: () => _onItemTapped(2),
          ),
          BottomNavigatorIcon(
            animation: _animations[3],
            icon: Assets.svgs.aiIcon,
            selected: widget.currentIndex == 3,
            title: 'Music AI',
            onTap: () => _onItemTapped(3),
          ),
        ],
      ),
    );
  }
}

class BottomNavigatorIcon extends StatelessWidget {
  final String title;
  final SvgGenImage icon;
  final bool selected;
  final Animation<double> animation;
  final VoidCallback onTap;
  const BottomNavigatorIcon({
    super.key,
    required this.icon,
    required this.title,
    required this.selected,
    required this.animation,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        children: [
          ScaleTransition(
              scale: animation,
              child: icon.svg(
                colorFilter: ColorFilter.mode(
                    selected
                        ? context.primaryColor
                        : context.appColorsDark.foreground,
                    BlendMode.srcIn),
              )),
          10.verticalSpace,
          Text(
            title,
            style: context.bodyLarge.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 10.sp,
              color: selected
                  ? context.primaryColor
                  : context.appColorsDark.foreground,
            ),
          ),
        ],
      ),
    );
  }
}
