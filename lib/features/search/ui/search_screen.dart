import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app1/core/Routing/routes.dart';
import 'package:my_app1/core/di/debendncy_injection.dart';
import 'package:my_app1/features/search/cubit/search_cubit.dart';
import 'package:my_app1/features/search/cubit/search_state.dart'; 

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchCubit>(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 20),
            onPressed: () {
              if (context.canPop()) {
                context.pop();
              } else {
                context.go(Routes.home);
              }
            },
          ),
          title: Text(
            'Search Doctor',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            children: [
              // حقل البحث (بنستخدم context.read مباشرة بدون داعي لـ BlocBuilder هنا)
              TextField(
                onChanged: (query) {
                  context.read<SearchCubit>().getSearchResults(query);
                },
                decoration: InputDecoration(
                  hintText: 'Search for a doctor by name...',
                  hintStyle: TextStyle(color: Colors.grey[400], fontSize: 14.sp),
                  prefixIcon: const Icon(Icons.search, color: Colors.blue),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 14.h),
                ),
              ),
              SizedBox(height: 20.h),
              
              // عرض النتائج بناءً على حالة الـ Cubit
              Expanded(
                child: BlocBuilder<SearchCubit, SearchState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      initial: () => Center(
                        child: Text(
                          'Type a doctor name to start searching',
                          style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      loading: () => const Center(
                        child: CircularProgressIndicator(color: Colors.blue),
                      ),
                      success: (doctorsList) {
                        if (doctorsList.isEmpty) {
                          return Center(
                            child: Text(
                              'No doctors found!',
                              style: TextStyle(color: Colors.grey, fontSize: 16.sp),
                            ),
                          );
                        }
                        return ListView.builder(
                          itemCount: doctorsList.length,
                          itemBuilder: (context, index) {
                            final doctor = doctorsList[index];
                            return Card(
                              margin: EdgeInsets.only(bottom: 12.h),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              elevation: 1,
                              child: ListTile(
                                contentPadding: EdgeInsets.all(10.w),
                                leading: CircleAvatar(
                                  radius: 25.r,
                                  backgroundColor: Colors.blue.withOpacity(0.1),
                                  child: const Icon(Icons.person, color: Colors.blue),
                                ),
                                title: Text(
                                  doctor.name ?? 'Unknown Doctor',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                subtitle: Text(
                                  doctor.specialization?.name ?? 'Speciality',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 13.sp,
                                  ),
                                ),
                                trailing: Text(
                                  "\$${doctor.price ?? '0'}", 
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                onTap: () {
                                  if (doctor.id != null) {
                                    context.push(Routes.details, extra: doctor.id);
                                  }
                                },
                              ),
                            );
                          },
                        );
                      },
                      failure: (errorHandler) => Center(
                        child: Text(
                          errorHandler.apiErrorModel.message ?? 'Something went wrong',
                          style: const TextStyle(color: Colors.red),
                        ),
                      ),
                      orElse: () => const SizedBox.shrink(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}