List<String> generateTimeSlots(String startTimeStr, String endTimeStr) {
  List<String> slots = [];
  try {
    // نفترض أن وقت البداية والنهاية بيجو بالشكل ده أو بنحدد ساعات افتراضية لو جايين نصيين
    // كمثال بناءً على داتا الدكتور (start_time: 14:00:00 PM و end_time: 20:00:00 PM)
    int startHour = 14; 
    int endHour = 20;   

    for (int hour = startHour; hour < endHour; hour++) {
      String time1 = _formatHour(hour, 0);  // مثلاً 02:00 PM
      String time2 = _formatHour(hour, 30); // مثلاً 02:30 PM
      
      slots.add(time1);
      slots.add(time2);
    }
  } catch (e) {
    // في حالة أي خطأ
  }
  return slots;
}

String _formatHour(int hour, int minute) {
  String period = hour >= 12 ? 'PM' : 'AM';
  int displayHour = hour > 12 ? hour - 12 : (hour == 0 ? 12 : hour);
  String minuteStr = minute == 0 ? '00' : '30';
  return "$displayHour:$minuteStr $period";
}