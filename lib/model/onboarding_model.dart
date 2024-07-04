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
    title: 'Discover Top Tourist Attractions',
    description:
        "Explore the most fascinating and\nbreathtaking tourist attractions.\nFind hidden gems and popular spots,\nall at your fingertips.",
    imagePath: 'Ooni palace',
  ),
  OnboardingModel(
    title: 'Connect with Fellow Travelers',
    description:
        'Meet and connect with fellow tourists and travelers. Share experiences and make new friends for a more enriching travel experience.',
    imagePath: 'erin-ijesha',
  ),
];
