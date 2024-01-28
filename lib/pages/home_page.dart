import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';

import '../constants/size.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // MAIn
              if (constraints.maxWidth >= kMinDesktopWidth)
                const HeaderDesktop()
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),

              if (constraints.maxWidth >= kMinDesktopWidth)
                const MainDesktop()
              else
                const MainMobile(),

              // SKILLS
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              // Projects
              const SizedBox(
                height: 500,
                width: double.maxFinite,
              ),
              // CONACT
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              // FOOTER
              const SizedBox(
                height: 500,
                width: double.maxFinite,
              )
            ],
          ));
    });
  }
}
