import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app1/core/Routing/routes.dart';
import 'package:my_app1/core/Theming/text_style.dart';
import 'package:my_app1/features/home/presentation/cubit/home_cubit.dart';
import 'package:my_app1/features/home/presentation/cubit/home_state.dart';
import 'package:my_app1/features/home/widgets/spe_list_view_item.dart';

class DoctorSpeGride extends StatefulWidget {
  const DoctorSpeGride({super.key});

  @override
  State<DoctorSpeGride> createState() => _DoctorSpeGrideState();
}

class _DoctorSpeGrideState extends State<DoctorSpeGride> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Doctor Speciality",
          style: TextStyles.font18DarkBlueSemiBold,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<HomeCubit, HomeState>(
  builder: (context, state) {
    final specializationsList = context.read<HomeCubit>().specializationsList ?? [];

    if (specializationsList.isNotEmpty) {
      return GridView.builder(
        itemCount: specializationsList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          final response = specializationsList[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              context.push(Routes.secoundSpeciality,
              extra: response,);
            },
            child: SpecialityListViewItem(
              itemIndex: index,
              selectedIndex: selectedIndex,
              specializationsData: response,
            ),
          );
        },
      );
    } 
    
    return const Center(child: CircularProgressIndicator());
  },
)
        ),
      ),
    );
  }
}
