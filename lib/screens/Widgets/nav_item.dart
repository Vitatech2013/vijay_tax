import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/data.dart';

class NavItem extends StatelessWidget {
  const NavItem({
    super.key,
    required this.onTap,
    required this.size,
    required this.active,
    this.icon,
    this.title,
  });

  final Function() onTap;
  final Size size;
  final bool active;
  final IconData? icon;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: size.width / navItems.length,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: active ? white : grey,
            ),
            const SizedBox(
              height: 05,
            ),
            Text(
              title ?? "",
              style: TextStyle(
                color: active ? white : grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
