import 'package:flutter/material.dart';

class AppointmentStepperWidget extends StatelessWidget {
  final int currentStep;

  const AppointmentStepperWidget({super.key, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildStepCircle('1', 'Date & Time', 0),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 15, left: 8, right: 8),
              height: 2,
              color: currentStep >= 1 ? Colors.blue : Colors.grey[300],
            ),
          ),
          _buildStepCircle('2', 'Payment', 1),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 15, left: 8, right: 8),
              height: 2,
              color: currentStep >= 2 ? Colors.blue : Colors.grey[300],
            ),
          ),
          _buildStepCircle('3', 'SummaryScreen', 2),
        ],
      ),
    );
  }

  Widget _buildStepCircle(String stepNumber, String title, int stepIndex) {
    final isActive = currentStep >= stepIndex;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: isActive ? Colors.blue : Colors.grey[300],
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Text(
            stepNumber,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.grey[600],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            color: isActive ? Colors.black87 : Colors.grey[500],
          ),
        ),
      ],
    );
  }
}