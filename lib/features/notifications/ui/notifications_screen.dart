import 'package:flutter/material.dart';

import '../../../core/routing/routes.dart';
import '../../../core/widgets/app_bottom_nav_bar.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});
  //notifications screen placeholder
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Notifications Screen')),
      bottomNavigationBar: AppBottomNavBar(
        routes: [
          Routes.homeScreen,
          Routes.cartScreen,
          Routes.notificationsScreen,
        ],
        currentIndex: 2,
      ),
    );
  }
}