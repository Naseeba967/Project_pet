import 'package:flutter/material.dart';
import 'package:pet_pal/utils/device/device_utils.dart';
import 'package:pet_pal/utils/helpers/helpers_function.dart';

import '../../utils/constant/colors.dart';
class Tabbar extends StatelessWidget implements PreferredSizeWidget {
  const Tabbar({super.key, required this.tabs});
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = HelpersFunction.isDarkMode(context);
    return Material(
      child: TabBar(
          isScrollable: true,
          indicatorColor: AppColor.mainColor,
          unselectedLabelColor: AppColor.darkGrey,
          labelColor: dark ? AppColor.white : AppColor.mainColor,
          tabs: tabs),
    );
  }

  @override
 
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
