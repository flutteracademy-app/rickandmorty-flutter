import 'package:flutter/material.dart';
import 'package:rickandmorty/app/theme/app_colors.dart';
import 'package:rickandmorty/app/theme/app_fonts.dart';

class CardInformationEpisode extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  const CardInformationEpisode({
    Key? key,
    required this.title,
    required this.description,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 15,
      ),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.COLOR_GREY),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              style: TEXT_THEME_BLACK.subtitle2,
              text: title,
            ),
          ),
          RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              style: TEXT_THEME_BLACK.bodyText1,
              text: description,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              style: TEXT_THEME_BLACK.subtitle2,
              text: date,
            ),
          ),
        ],
      ),
    );
  }
}
