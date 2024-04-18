import 'package:flutter/material.dart';

class OnboardingModel {
  String title;
  String imagePath;
  String description;

  OnboardingModel(
      {required this.description,
      required this.title,
      required this.imagePath});
}

final onboardAssets = [
  OnboardingModel(
    title: 'Find and locate the best\nroom to stay',
    description:
        "Experience luxurious, immersive stays in\nselected havens, combining design, facilities,\nand tranquillity.",
    imagePath: 'onboard1',
  ),
  OnboardingModel(
    title: 'Find and connect with your\nroommates ',
    description:
        'Become aware and connect with your\nroommates seamlessly for a\nharmonious living experience.',
    imagePath: 'onboard2',
  ),
];
