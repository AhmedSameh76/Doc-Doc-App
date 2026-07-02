import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app1/core/Theming/color.dart';
import 'package:my_app1/core/Theming/text_style.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, 
          children: [
            Text(
              "Hi, Omar!",
              style: TextStyles.font18DarkBlueBold,
            ),
            Text(
              "How Are You TOday?",
              style: TextStyles.font12GrayRegular,
            ),
          ],
        ),
        CircleAvatar(
          radius: 24,
          backgroundColor: ColorsManager.moreLighterGray,
          child: SvgPicture.asset("assets/svgs/noteifactions.svg"),
        ),
        
      ],
    );
  }
}