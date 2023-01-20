// import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final Color? backgroundColor;

  AppBarWidget({Key? key, this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      elevation: 0,
      titleSpacing: 0,
      centerTitle: true,
      backgroundColor: AppColors.primary,
      title: Image.asset(
        'assets/images/LMS_heading.png',
        width: 50,
      ),
      actions: [
        // Row(
        //   children: [
        //     Image.asset(
        //       'assets/images/account.png',
        //       height: 25,
        //       width: 25,
        //     ),
        //     const SizedBox(
        //       width: 15,
        //     )
        //   ],
        // )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class AppBarWidgetWithoutDrawer extends StatelessWidget
    with PreferredSizeWidget {
  final Color? backgroundColor;
  final bool? automaticallyImplyLeading;

  AppBarWidgetWithoutDrawer(
      {Key? key, this.backgroundColor, this.automaticallyImplyLeading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      titleSpacing: 0,
      centerTitle: true,
      backgroundColor: AppColors.primary,
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      title: Image.asset(
        'assets/images/LMS_heading.png',
        width: 50,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
