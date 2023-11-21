import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profit_controller.dart';

class ProfitView extends GetView<ProfitController> {
  const ProfitView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfitView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProfitView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
