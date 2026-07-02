import 'package:flutter/material.dart';
import 'package:my_app1/core/Theming/text_style.dart';

class DoctorSpeciality extends StatelessWidget {
  const DoctorSpeciality({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
        Text(
          "Doctor Speciality",
        style: TextStyles.font18DarkBlueSemiBold,
        ),
        Spacer(),
        TextButton(
           onPressed: (){},
            child: Text(
              "See All",
              style: TextStyles.font12BlueRegular,
              ),
            ),
      ],
  
      );
  }
}
