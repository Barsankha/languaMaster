import 'package:flutter/material.dart';
import 'package:langua_master/lesson/lessonwidget.dart';
import 'package:langua_master/lesson/samplelesson.dart';

class FeaturedLanguages extends StatelessWidget {
  const FeaturedLanguages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text(
            'Explore Our Languages',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              LanguageCard(
                language: 'Spanish',
                lesson: sampleLessons[0],
              ),
              LanguageCard(
                language: 'French',
                lesson: sampleLessons[0],
              ),
              LanguageCard(
                language: 'Chinese',
                lesson: sampleLessons[0],
              ),
              LanguageCard(
                language: 'German',
                lesson: sampleLessons[0],
              ),
              LanguageCard(
                language: 'japanese',
                lesson: sampleLessons[0],
              ),
              LanguageCard(
                language: 'Italian',
                lesson: sampleLessons[0],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class LanguageCard extends StatelessWidget {
  final String language;
  final Lesson lesson;
  const LanguageCard({super.key, required this.language, required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => LessonPage(lesson: lesson))));
        },
        child: Center(
          child: Text(language),
        ),
      ),
    );
  }
}
