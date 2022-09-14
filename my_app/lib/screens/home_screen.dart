// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:my_app/widgets/custom_slider.dart';
import 'package:my_app/widgets/digia_apps_widget.dart';
import 'package:my_app/widgets/offers_widget.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/digia_apps_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              CustomSlider(),
              DigiAppsWidget(),
              OffersWidget(),
            ],
          ),
        ));
  }
}
