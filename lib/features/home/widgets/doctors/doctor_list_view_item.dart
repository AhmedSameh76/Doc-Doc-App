import 'package:flutter/material.dart';
import 'package:my_app1/core/helpers/spacing.dart';
import 'package:my_app1/features/home/data/models/specialization_response_model.dart';

class DoctorListViewItem extends StatelessWidget {
  final Doctors? doctors;
  const DoctorListViewItem(this.doctors, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.person, color: Colors.blue, size: 28),
          ),
          horizontalSpace(16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctors?.name ?? "",
                style: const TextStyle(fontSize: 14, color: Colors.black),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(3),
              Text(
                "${doctors?.degree ?? ""} | ${doctors?.phone ?? ""}",
                style: const TextStyle(fontSize: 14, color: Colors.black),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(3),
              Text(
                doctors?.email ?? "",
                style: const TextStyle(fontSize: 14, color: Colors.black),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(3),
            ],
          ),
        ],
      ),
    );
  }
}
