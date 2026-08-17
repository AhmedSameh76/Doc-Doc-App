import 'package:flutter/material.dart';

class DateSelectorWidget extends StatelessWidget {
  final DateTime selectedDate;
  final DateTime currentStartDate;
  final Function(DateTime) onDateSelected;
  final VoidCallback onManualPressed;
  final VoidCallback onLeftPressed;
  final VoidCallback onRightPressed;

  const DateSelectorWidget({
    super.key,
    required this.selectedDate,
    required this.currentStartDate,
    required this.onDateSelected,
    required this.onManualPressed,
    required this.onLeftPressed,
    required this.onRightPressed,
  });

  @override
  Widget build(BuildContext context) {
   
    return Column(
      children: [
     
      ],
    );
  }
}