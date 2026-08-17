import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app1/features/appoinments/presentation/cubit/appoinments_cubit.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<AppoinmentsCubit>();
    final selectedMothed = cubit.selectedMothed;
    final selectedCardType = cubit.selectedCardType;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Payment Option",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15.h),

            RadioListTile<String>(
              value: '1',
              controlAffinity: ListTileControlAffinity.trailing,
              groupValue: selectedMothed,
              title: const Text("Credit Card"),
              secondary: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.credit_card, size: 30, color: Colors.green),
              ),
              onChanged: (value) {
                context.read<AppoinmentsCubit>().selectMethodType(value!);
              },
            ),

            if (selectedMothed == "1") ...[
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  children: [
                    RadioListTile<String>(
                      controlAffinity: ListTileControlAffinity.trailing,
                      value: "master",
                      secondary: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/mastercard.png',
                          width: 30.w,
                          height: 30.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                      title: const Text("Master Card"),
                      groupValue: selectedCardType,
                      onChanged: (value) {
                        context.read<AppoinmentsCubit>().selectedCard(value!);
                      },
                    ),
                    RadioListTile<String>(
                      value: "amex",
                      secondary: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/am_logo.png',
                          width: 30.w,
                          height: 30.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                      title: const Text("American Express"),
                      controlAffinity: ListTileControlAffinity.trailing,
                      groupValue: selectedCardType,
                      onChanged: (value) {
                        context.read<AppoinmentsCubit>().selectedCard(value!);
                      },
                    ),
                    RadioListTile<String>(
                      value: "capital",
                      secondary: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blueAccent.shade400,
                          shape: BoxShape.rectangle,
                        ),
                        child: const Icon(
                          Icons.credit_card,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                      controlAffinity: ListTileControlAffinity.trailing,
                      title: const Text("Capital One"),
                      groupValue: selectedCardType,
                      onChanged: (value) {
                        context.read<AppoinmentsCubit>().selectedCard(value!);
                      },
                    ),
                  ],
                ),
              ),
            ],

            SizedBox(height: 10.h),

            RadioListTile<String>(
              controlAffinity: ListTileControlAffinity.trailing,
              value: "2",
              groupValue: selectedMothed,
              title: const Text("Paypal"),
              secondary: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/PayPal.png',
                  width: 30.w,
                  height: 30.h,
                  fit: BoxFit.contain,
                ),
              ),
              onChanged: (value) {
                context.read<AppoinmentsCubit>().selectMethodType(value!);
              },
            ),
          ],
        ),
      ),
    );
  }
}