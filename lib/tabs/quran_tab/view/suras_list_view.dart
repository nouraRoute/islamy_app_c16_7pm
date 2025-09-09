import 'package:flutter/material.dart';
import 'package:islamy_app_c16_7pm/common/app_consts.dart';
import 'package:islamy_app_c16_7pm/theme/app_colors.dart';

class SurasListView extends StatelessWidget {
  const SurasListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            'Suras List',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: AppConsts.fontFamily),
          ),
        ),
        ListView.separated(
          itemCount: 10,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => ListTile(
            leading: Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  Icons.brightness_5,
                  size: 55,
                  color: Colors.white,
                ),
                Text(
                  (index + 1).toString(),
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: AppConsts.fontFamily),
                )
              ],
            ),
            title: Text(
              'Al-Fatiha',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: AppConsts.fontFamily),
            ),
            subtitle: Text(
              '7 Verses',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: AppConsts.fontFamily),
            ),
            trailing: Text(
              'الفاتحه',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: AppConsts.fontFamily),
            ),
          ),
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              endIndent: 65,
              indent: 65,
              color: AppColors.goldColor,
            );
          },
        )
      ],
    );
  }
}
