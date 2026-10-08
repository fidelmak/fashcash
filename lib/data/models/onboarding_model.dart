final List<Map> assetsImages = [
  {
    "title": "Quick and easy",
    "image":  "images/p1.png",
    "description" :"Just visit any of the growing number of outlets who accept money and make your purchase within second"
  },
  {
    "title": "Investerment Effectives",
    "image":  "images/p2.png",
    "description" :"We constantly updated currencymarket, exchange rates,..."
  },
  {
    "title": "Security",
    "image":   "images/p3.png",
    "description" :"Your money is protected by your login"
  },


];


class OnboardingItem {





  final String title;
  final String image;
  final String description;

  const OnboardingItem({
    required this.title,
    required this.image,
    required this.description,
  });
}

const List<OnboardingItem> onboardingItems = [
  OnboardingItem(
    title: "Quick and easy",
    image: "images/p1.png",
    description:
        "Just visit any of the growing number of outlets who accept money and make your purchase within second",
  ),
  OnboardingItem(
    title: "Investerment Effectives",
    image: "images/p2.png",
    description: "We constantly updated currencymarket, exchange rates,...",
  ),
  OnboardingItem(
    title: "Security",
    image: "images/p3.png",
    description: "Your money is protected by your login",
  ),
];
