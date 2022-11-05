import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:responsive_dashboard/component/Finanacial.dart';
import 'package:responsive_dashboard/component/Internal.dart';
import 'package:responsive_dashboard/component/customer.dart';
import 'package:responsive_dashboard/component/pichartcustomer.dart';
import 'package:responsive_dashboard/dashboard.dart';

import 'Learning.dart';
import 'header.dart';

class Navigation extends StatefulWidget {
  const Navigation({
    Key key,
  }) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  PageController page = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //Header(),
          SideMenu(
            controller: page,
            // onDisplayModeChanged: (mode) {
            //   print(mode);
            // },
            style: SideMenuStyle(
              displayMode: SideMenuDisplayMode.auto,
              hoverColor: Colors.blue[100],
              selectedColor: Colors.lightBlue,
              selectedTitleTextStyle: const TextStyle(color: Colors.white),
              selectedIconColor: Colors.white,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.all(Radius.circular(10)),
              // ),
              // backgroundColor: Colors.blueGrey[700]
            ),
            title: Column(
              children: [
                const Divider(
                  indent: 8.0,
                  endIndent: 8.0,
                ),
              ],
            ),
            footer: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'BSC',
                style: TextStyle(fontSize: 15),
              ),
            ),
            items: [
              SideMenuItem(
                priority: 0,
                title: 'Home',
                onTap: () {
                  page.jumpToPage(0);
                },
                icon: const Icon(Icons.home),
                // badgeContent: const Text(
                //   '3',
                //   style: TextStyle(color: Colors.white),
                // ),
              ),
              SideMenuItem(
                priority: 1,
                title: 'Customer',
                onTap: () {
                  page.jumpToPage(1);
                },
                icon: const Icon(Icons.supervisor_account),
              ),
              SideMenuItem(
                priority: 2,
                title: 'Financial',
                onTap: () {
                  page.jumpToPage(2);
                },
                icon: const Icon(Icons.money_off_csred_outlined),
              ),
              SideMenuItem(
                priority: 3,
                title: 'Internal Business Process',
                onTap: () {
                  page.jumpToPage(3);
                },
                icon: const Icon(Icons.business),
              ),
              SideMenuItem(
                priority: 4,
                title: 'Learning and Growth',
                onTap: () {
                  page.jumpToPage(4);
                },
                icon: const Icon(Icons.book),
              ),
              SideMenuItem(
                priority: 6,
                title: 'Pichart Summary',
                onTap: () {
                  page.jumpToPage(5);
                },
                icon: const Icon(Icons.pie_chart),
              ),
            ],
          ),
          Expanded(
            child: PageView(
              controller: page,
              children: [
                // Container(
                //   color: Colors.white,
                //   child: const Center(
                //     child: Text(
                //       'Dashboard',
                //       style: TextStyle(fontSize: 35),
                //     ),
                //   ),
                // ),
                Dashboard(),
                // Container(
                //   color: Colors.white,
                //   child: const Center(
                //     child: Text(
                //       'Users',
                //       style: TextStyle(fontSize: 35),
                //     ),
                //   ),
                // ),
                Customer(),
                Finacial(),
                Internal(),
                Learmimg(),
                CustomerPiehart(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
