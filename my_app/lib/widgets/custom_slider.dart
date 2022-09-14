// ignore: unused_import
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_app/models/slider_model.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: CarouselSlider.builder(
          itemCount: SliderModel.items.length,
          itemBuilder: (context, index, realIndex) {
            return Container(
              margin: const EdgeInsets.only(right: 8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    image: AssetImage(SliderModel.items[index].image),
                    fit: BoxFit.cover,
                  )),
            );
          },
          options: CarouselOptions(autoPlay: true)),
    );
  }
}
