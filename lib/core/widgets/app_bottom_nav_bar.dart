import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_shop/core/themes/text_styles.dart';
import '../helpers/extensions.dart';

class AppBottomNavBar extends StatefulWidget {
  const AppBottomNavBar({
    super.key,
    required this.routes,
    required this.currentIndex,
  });
  final List<String> routes;
  final int currentIndex;
  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: BottomNavigationBar(
        currentIndex: widget.currentIndex,
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 20.sp,
        backgroundColor: context.colorScheme.secondary,
        elevation: 0,
        onTap: (index) async {
          setState(() {
            context.pushNamedAndRemoveUntil(
              widget.routes[index],
              predicate:(route) => false,
            );
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: context.colorScheme.onSecondary,
            ),
            activeIcon: Text(
              'Home',
              style: TextStyles.font11W500.copyWith(
                color: context.colorScheme.primary,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: context.colorScheme.onSecondary,
            ),
            label: 'Cart',
            activeIcon: Text(
              'Cart',
              style: TextStyles.font11W500.copyWith(
                color: context.colorScheme.primary,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_outlined,
              color: context.colorScheme.onSecondary,
            ),
            label: 'Notifications',
            activeIcon: Text(
              'Notifications',
              style: TextStyles.font11W500.copyWith(
                color: context.colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
