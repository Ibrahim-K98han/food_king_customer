import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tomato_02/app/modules/dashboard/views/widgets/active_order_status.dart';

import '../../../../util/constant.dart';
import '../../home/views/home_view.dart';
import '../../menu/views/menu_view.dart';
import '../../offer/views/offer_view.dart';
import '../../profile/views/profile_view.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  bool activeOrder = false;
  final screens = [
    HomeView(),
    MenuView(),
    OfferView(),
    ProfileView()
  ];
  final iconList = <AssetImage>[
    AssetImage(Images.home),
    AssetImage(Images.menu),
    AssetImage(Images.offer),
    AssetImage(Images.profile_circle),
  ];
  final navbaritem = <String>[
    'Home',
    'Menu',
    'Offers',
    'Profile',
  ];
  var bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: activeOrder ? AppColor.viewAllbg : Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Container(
          height: 60.h,
          width: 60.w,
          child: CircleAvatar(
            backgroundColor: AppColor.primaryColor,
            child: ImageIcon(
              AssetImage('assets/images/cart.png'),
              color: Colors.white,
              size: 60,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: navbaritem.length,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? AppColor.primaryColor : Colors.black;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageIcon(
                iconList[index],
                color: color,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  navbaritem[index],
                  maxLines: 1,
                  style: TextStyle(
                    color: color,
                    fontFamily: 'Rubik',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          );
        },
        backgroundColor: Colors.white,
        activeIndex: bottomNavIndex,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.defaultEdge,
        gapLocation: GapLocation.center,
        leftCornerRadius: 15,
        rightCornerRadius: 15,
        onTap: (index) => setState(() => bottomNavIndex = index),
      ),
      body: Stack(
        children: [
          screens[bottomNavIndex],
          if(activeOrder == true) ActiveOrderStatus()
        ],
      ),
    );
  }
}
