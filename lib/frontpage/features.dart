import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text(
            'Why LinguaMaster ?',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              FeaturedCard(feature: 'Interective Lesson'),
              FeaturedCard(feature: 'Speech Recognition'),
              FeaturedCard(feature: 'Progress Tracking'),
              FeaturedCard(feature: 'Community Forums'),
              FeaturedCard(feature: 'Offline Mode'),
              FeaturedCard(feature: 'Gamification'),
            ],
          )
        ],
      ),
    );
  }
}

class FeaturedCard extends StatelessWidget {
  final String feature;
  const FeaturedCard({super.key, required this.feature});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text(feature),
      ),
    );
  }
}
