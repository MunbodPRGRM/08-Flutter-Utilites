import 'package:flutter/material.dart';
import 'package:flutter_utilities/config/shared/app_data.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatefulWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  State<ProviderPage> createState() => _ProviderPageState();
}

class _ProviderPageState extends State<ProviderPage> {
  String email = '';
  @override
  void initState() {
    super.initState();
    email = context.read<AppData>().userEmail;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Provider')),
      body: Center(child: Text(email, style: Get.textTheme.titleLarge)),
    );
  }
}
