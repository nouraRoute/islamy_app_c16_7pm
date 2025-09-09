import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy_app_c16_7pm/common/app_consts.dart';
import 'package:islamy_app_c16_7pm/common/common_decorations.dart';
import 'package:islamy_app_c16_7pm/tabs/quran_tab/quran_tab.dart';

class MainLayer extends StatefulWidget {
  const MainLayer({super.key});

  @override
  State<MainLayer> createState() => _MainLayerState();
}

class _MainLayerState extends State<MainLayer> {
  int currentTab = 0;
  List<Widget> tabs = [
    QuranTab(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.pink,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: tabs[currentTab],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTab,
          onTap: (value) {
            setState(() {
              currentTab = value;
            });
          },
          items: [
            customBottomNavBarITem(
                iconPath: AppConsts.quranIcon,
                label: 'quran',
                isSelected: currentTab == 0),
            customBottomNavBarITem(
                iconPath: AppConsts.hadeethIcon,
                label: 'Hadeeth',
                isSelected: currentTab == 1),
            customBottomNavBarITem(
                iconPath: AppConsts.sebhaIcon,
                label: 'Sebha',
                isSelected: currentTab == 2),
            customBottomNavBarITem(
                iconPath: AppConsts.radioIcon,
                label: 'Radio',
                isSelected: currentTab == 3),
            customBottomNavBarITem(
                iconPath: AppConsts.timesIcon,
                label: 'time',
                isSelected: currentTab == 4),
          ]),
    );
  }

  BottomNavigationBarItem customBottomNavBarITem(
      {required String label,
      required String iconPath,
      required bool isSelected}) {
    return BottomNavigationBarItem(
        icon: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 6,
              horizontal: 20,
            ),
            decoration:
                isSelected ? CommonDecorations.selectedItemDecoration : null,
            child: SvgPicture.asset(
              iconPath,
              width: isSelected ? 20 : 25,
              color: isSelected ? Colors.white : null,
            )),
        label: label);
  }
}
