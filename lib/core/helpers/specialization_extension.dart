import 'package:my_app1/features/home/data/models/specialization_response_model.dart';

extension SpecializationSvgExtension on SpecializationData? {
  String get svgPath {
    final nameLower = this?.name?.toLowerCase().trim() ?? '';

    final Map<String, String> imageMap = {
      // التخصصات الأساسية
      'general': 'assets/images/general.png',
      'ent': 'assets/images/ent.png',
      'dentistry': 'assets/images/dentistry.png',
      'pediatric': 'assets/images/pediatric.png',
      'pediatrics': 'assets/images/pediatric.png',
      'neurology': 'assets/images/neurologic.png',
      'neurologic': 'assets/images/neurologic.png',
      'urology': 'assets/images/urologist.png',
      'urologist': 'assets/images/urologist.png',

      // الصور الجديدة اللي ضفتها في الفولدر 
      'dermatology': 'assets/images/dermatology.png',
      'orthopedics': 'assets/images/orthopedic.png',
      'orthopedic': 'assets/images/orthopedic.png',
      'gynecology': 'assets/images/uterus.png',
      'psychiatry': 'assets/images/mental-health.png',

      // باقي التخصصات المتاحة
      'cardiology': 'assets/images/cardiologist.png',
      'cardiologist': 'assets/images/cardiologist.png',
      'ophthalmology': 'assets/images/optometry.png',
      'optometry': 'assets/images/optometry.png',
      'gastroenterology': 'assets/images/intestine.png',
      'intestine': 'assets/images/intestine.png',
      'hepatology': 'assets/images/hepatology.png',
      'histologist': 'assets/images/histologist.png',
      'pulmonary': 'assets/images/pulmonary.png',
    };

    return imageMap[nameLower] ?? 'assets/images/general.png';
  }
}