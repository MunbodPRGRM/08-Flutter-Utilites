import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class FlexColorPage extends StatefulWidget {
  const FlexColorPage({super.key});

  @override
  State<FlexColorPage> createState() => _FlexColorPageState();
}

class _FlexColorPageState extends State<FlexColorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FlexColorPage')),
      body: Column(
        children: [
          Center(
            child: Text(
              'ตัวอย่างการใช้งาน FlexColorScheme',
              style: Get.textTheme.titleLarge!.copyWith(
                color: Get.theme.colorScheme.error,
              ),
            ),
          ),
          FilledButton(onPressed: () {}, child: Text('ดำเนินการต่อ')),
        ],
      ),
    );
  }
}
