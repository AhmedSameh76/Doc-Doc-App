import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app1/core/di/debendncy_injection.dart';
import 'package:my_app1/features/profile/cubit/profile_cubit.dart';
import 'package:my_app1/features/profile/cubit/profile_state.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileCubit>()..getUserProfile(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'My Profile',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              success: (userData) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    SizedBox(height: 20.h),
                    CircleAvatar(
                      radius: 50.r,
                      backgroundColor: Colors.blue.withOpacity(0.1),
                      child: Icon(Icons.person, size: 60.r, color: Colors.blue),
                    ),
                    SizedBox(height: 20.h),
                    _buildInfoCard("Name", userData.name ?? "N/A", Icons.person_outline),
                    _buildInfoCard("Email", userData.email ?? "N/A", Icons.email_outlined),
                    _buildInfoCard("Phone", userData.phone ?? "N/A", Icons.phone_outlined),
                    _buildInfoCard("Gender", userData.gender ?? "N/A", Icons.transgender),
                  ],
                ),
              ),
              failure: (errorHandler) => Center(
                child: Text(errorHandler.apiErrorModel.message ?? "Error"),
              ),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildInfoCard(String title, String value, IconData icon) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          SizedBox(width: 16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(color: Colors.grey, fontSize: 12.sp)),
              Text(
                value,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
              ),
            ],
          ),
        ],
      ),
    );
  }
}