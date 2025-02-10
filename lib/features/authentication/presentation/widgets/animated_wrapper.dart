import 'package:flutter/material.dart';

class AnimatedWrapper extends StatefulWidget {
  final Widget child;
  final bool top;
  const AnimatedWrapper({
    super.key,
    required this.child,
    required this.top,
  });

  @override
  State<AnimatedWrapper> createState() => _AnimatedWrapperState();
}

class _AnimatedWrapperState extends State<AnimatedWrapper> {
  bool _isMoved = false;

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 100)).then((_) {
      setState(() {
        _isMoved = true;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSlide(
      offset: _isMoved
          ? Offset.zero
          : widget.top
              ? Offset(0, -1.5)
              : Offset(0, 1.5),
      curve: Curves.linear,
      duration: Duration(
        milliseconds: 300,
      ),
      child: widget.child,
    );
  }
}
