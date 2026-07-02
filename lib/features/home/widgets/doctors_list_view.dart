import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app1/core/Theming/text_style.dart';
import 'package:my_app1/core/helpers/spacing.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 100.h,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset("assets/images/doc_image.png",
                    width: 110.h,
                    height: 120.h,
                    fit: BoxFit.cover,
                    ),
                  ),
                  horizontalSpace(16),
                  Expanded(
                    child: Column(
                      children: [
                        Text("name",style: TextStyles.font18DarkBlueBold,),
                        verticalSpace(12),
                        Text("name",
                        style: TextStyles.font16WhiteMedium,
                        overflow: TextOverflow.ellipsis,
                        ),
                        verticalSpace(5),
                        Text("0110000000",style: TextStyles.font12GrayMedium,),

                        verticalSpace(5),
                        Text("email@gmail.com",style: TextStyles.font12GrayMedium,),
                      ],
                      ),
                  )
              ],
              ),
              );
          },
        ),
      ),
    );
  }
}
