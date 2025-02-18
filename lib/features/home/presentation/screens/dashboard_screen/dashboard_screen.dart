import 'package:dj_pmi/common/models/models.dart';
import 'package:dj_pmi/features/feeds/presentation/screens/feeds_screen.dart';
import 'package:dj_pmi/features/home/presentation/screens/artist_home_screen/artist_home_screen.dart';
import 'package:dj_pmi/features/home/presentation/screens/dashboard_screen/dashboard_screen_store.dart';
import 'package:dj_pmi/features/home/presentation/screens/dj_home_screen/dj_home_screen.dart';
import 'package:dj_pmi/features/home/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class DashboardScreen extends StatefulWidget {
  final ProfileType profileType;
  const DashboardScreen({
    super.key,
    required this.profileType,
  });

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
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
            widget.profileType == ProfileType.Artist
                ? ArtistHomeScreen()
                : DjHomeScreen(),
            FeedsScreen(),
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
