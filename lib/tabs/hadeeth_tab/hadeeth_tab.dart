import 'package:flutter/material.dart';
import 'package:islamy_app_c16_7pm/common/app_consts.dart';
import 'package:islamy_app_c16_7pm/theme/app_colors.dart';
import 'package:islamy_app_c16_7pm/widgets/main_tab_design_widget.dart';

class HadeethTab extends StatefulWidget {
  const HadeethTab({super.key});

  @override
  State<HadeethTab> createState() => _HadeethTabState();
}

class _HadeethTabState extends State<HadeethTab> {
  final PageController _controller = PageController(
    viewportFraction: .8,
  );
  int currantPAge = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener(
      () {
        {
          setState(() {
            currantPAge = (_controller.page ?? 0).toInt();
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MainTabDesignWidget(
        imagePath: AppConsts.hadeethBg,
        child: Expanded(
          child: PageView.builder(
            controller: _controller,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: currantPAge != index ? 40 : 20,
                ),
                child: Container(
                  padding: const EdgeInsets.only(top: 12),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: AppColors.goldColor,
                      borderRadius: BorderRadius.circular(24)),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        AppConsts.hadeethCard,
                        fit: BoxFit.fill,
                      ),
                      const Column(
                        spacing: 10,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'data',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: AppColors.blackColor),
                          ),
                          Text(
                            'data',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColors.blackColor),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
            itemCount: 10,
          ),
        ));
  }
}
