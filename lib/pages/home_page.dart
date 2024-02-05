import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import 'package:my_portfolio/widgets/project_card.dart';

import '../constants/size.dart';
import '../widgets/drawer_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
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
              // if (constraints.maxWidth >= kMinDesktopWidth)
              //   const HeaderDesktop()
              // else
              //   HeaderMobile(
              //     onLogoTap: () {},
              //     onMenuTap: () {
              //       scaffoldKey.currentState?.openEndDrawer();
              //     },
              //   ),

              // if (constraints.maxWidth >= kMinDesktopWidth)
              //   const MainDesktop()
              // else
              //   const MainMobile(),

              // // SKILLS
              // Container(
              //   width: double.maxFinite,
              //   padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              //   color: CustomColor.bgLight1,
              //   child: Column(
              //     mainAxisSize: MainAxisSize.min,
              //     children: [
              //       // title
              //       const Text(
              //         'What I can do',
              //         style: TextStyle(
              //           fontSize: 24,
              //           fontWeight: FontWeight.bold,
              //           color: CustomColor.whitePrimary,
              //         ),
              //       ),

              //       const SizedBox(
              //         height: 50,
              //       ),

              //       // platforms and skills
              //       if (constraints.maxWidth >= kMedDesktopWidth)
              //         const SkillsDesktop()
              //       else
              //         const SkillsMobile(),
              //     ],
              //   ),
              // ),

              // Projects
              Container(
                width: screenWidth,
                padding:  const EdgeInsets.fromLTRB(25, 20, 25, 60),
                child:  Column(
                  children: [
                    // Work projects title
                    const Text(
                      'Work Projects',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),

                    // Work projects title
                    ProjectCardWidget(project: workProjectUtils.first),
                  ],
                ),
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
