import 'package:dj_pmi/features/feeds/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          FeedsView(
            color: Colors.red,
          ),
          FeedsView(
            color: Colors.green,
          ),
          FeedsView(
            color: Colors.pink,
          ),
          FeedsView(
            color: Colors.deepOrange,
          ),
          FeedsView(
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
