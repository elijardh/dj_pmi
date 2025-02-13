import 'package:dj_pmi/features/home/presentation/screens/dashboard_screen/dashboard_screen_store.dart';
import 'package:dj_pmi/features/home/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../artist_home_screen/artist_home_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DashboardScreenContent();
  }
}

class DashboardScreenContent extends StatefulWidget {
  const DashboardScreenContent({
    super.key,
  });

  @override
  State<DashboardScreenContent> createState() => _DashboardScreenContentState();
}

class _DashboardScreenContentState extends State<DashboardScreenContent> {
  final _store = DashboardScreenStore();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: IntrinsicHeight(
        child: Observer(
          builder: (context) => BottomNavigator(
            currentIndex: _store.currentIndex,
            onTap: (index) => _store.setCurrentIndex(index),
          ),
        ),
      ),
      body: Observer(
        builder: (context) => IndexedStack(
          index: _store.currentIndex,
          children: [
            ArtistHomeScreen(),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
