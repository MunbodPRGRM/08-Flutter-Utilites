import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  String dateToThaiDate(DateTime datetime) {
    // รายชื่อเดือนภาษาไทย
    const thaiMonths = [
      'มกราคม',
      'กุมภาพันธ์',
      'มีนาคม',
      'เมษายน',
      'พฤษภาคม',
      'มิถุนายน',
      'กรกฎาคม',
      'สิงหาคม',
      'กันยายน',
      'ตุลาคม',
      'พฤศจิกายน',
      'ธันวาคม',
    ];

    int day = datetime.day;
    int month = datetime.month;
    int year = datetime.year + 543; // แปลง ค.ศ. เป็น พ.ศ.

    return '$day ${thaiMonths[month - 1]} $year';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CalendarPage')),
      body: Column(
        children: [
          FilledButton(onPressed: () {}, child: Text('ปฎิทิน')),
          FilledButton(
            onPressed: () async {
              DateTime? newDateTime = await showRoundedDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(DateTime.now().year - 1),
                lastDate: DateTime(DateTime.now().year + 1),
                borderRadius: 16,
                locale: const Locale("th", "TH"),
                era: EraMode.BUDDHIST_YEAR,
              );
              if (newDateTime != null) {
                log(newDateTime.toString());
                log(dateToThaiDate(newDateTime));
              } else {
                log('No Date Selected');
              }
            },
            child: const Text('Show Thai Calendar'),
          ),
        ],
      ),
    );
  }
}
