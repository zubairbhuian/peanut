import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/application_controller.dart';

class ApplicationView extends GetView<ApplicationController> {
  const ApplicationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ApplicationView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ApplicationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
