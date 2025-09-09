import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy_app_c16_7pm/common/app_consts.dart';
import 'package:islamy_app_c16_7pm/tabs/quran_tab/view/most_recent_view.dart';
import 'package:islamy_app_c16_7pm/tabs/quran_tab/view/suras_list_view.dart';
import 'package:islamy_app_c16_7pm/tabs/quran_tab/widgets/custom_text_field.dart';
import 'package:islamy_app_c16_7pm/theme/app_colors.dart';
import 'package:islamy_app_c16_7pm/widgets/main_header.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppConsts.quranTabBg), fit: BoxFit.cover),
      ),
      child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.blackColor.withAlpha(180),
                AppColors.blackColor
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            child: Column(
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const MainHeader(),
                CustomTextField(
                  hintText: 'surah name',
                  prefixIcon: SvgPicture.asset(
                    AppConsts.quranIcon,
                    colorFilter: const ColorFilter.mode(
                        AppColors.goldColor, BlendMode.srcIn),
                  ),
                ),
                const Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      spacing: 20,
                      children: [
                        MostRecentView(),
                        SurasListView(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
//custom scroll view
