import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetXPage extends StatefulWidget {
  const GetXPage({super.key});

  @override
  State<GetXPage> createState() => _GetXPageState();
}

class _GetXPageState extends State<GetXPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX')),
      body: Center(
        child: Column(
          children: [
            FilledButton(
              onPressed: () {
                Get.snackbar(
                  'ทดสอบแอปพลิเคชัน',
                  'ข้อความนี้มาจาก Get.snackbar',
                  snackPosition: SnackPosition.BOTTOM,
                );
              },
              child: const Text('Snack Bar'),
            ),
            FilledButton(
              onPressed: () {
                Get.defaultDialog(
                  title: 'แอปพลิเคชัน',
                  content: const Text('ข้อความที่ต้องการแสดง'),
                  barrierDismissible: false,
                  actions: [
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text('ปิด'),
                    ),
                    FilledButton(onPressed: () {}, child: const Text('ตกลง')),
                  ],
                );
              },
              child: const Text('Default Dialog'),
            ),
            FilledButton(
              onPressed: () {
                if (Get.isDarkMode) {
                  Get.changeTheme(ThemeData.light());
                } else {
                  Get.changeTheme(ThemeData.dark());
                }
              },
              child: const Text('Theme Change'),
            ),
            FilledButton(
              onPressed: () {
                final gs = GetStorage();
                gs.write('MyText', 'Hello World!!!');
              },
              child: const Text('Write'),
            ),
            FilledButton(
              onPressed: () {
                final gs = GetStorage();
                String text = gs.read('MyText') ?? 'No Text';
                log(text);
              },
              child: const Text('Read'),
            ),
          ],
        ),
      ),
    );
  }
}
