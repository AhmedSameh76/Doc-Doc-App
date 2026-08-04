import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app1/core/Theming/text_style.dart';
import 'package:my_app1/core/helpers/spacing.dart';
import 'package:my_app1/features/home/data/models/specialization_response_model.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const DoctorsListView({super.key, this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 100.h,
        child: ListView.builder(
          itemCount: doctorsList?.length ?? 0,
          itemBuilder: (context, index) {
            final doctor = doctorsList?[index];
            return Container(
              margin: EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      "assets/images/doc_image.png",
                      width: 110.h,
                      height: 120.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  horizontalSpace(16),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          doctor?.name ?? " Name",
                          style: TextStyles.font18DarkBlueBold,
                          overflow: TextOverflow.ellipsis,
                        ),
                        verticalSpace(5),
                        Text(
                          ' ${doctor?.phone ?? "phone"}  | ${doctor?.degree ?? " degree"}',
                          style: TextStyles.font12GrayMedium,
                        ),
                        verticalSpace(5),
                        Text(
                          doctor?.email ?? "email.com",
                          style: TextStyles.font12GrayMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}