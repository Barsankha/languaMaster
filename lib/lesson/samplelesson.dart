import 'dart:core';

class Lesson {
  final String title;
  final String content;
  final List<Question> qusetion;

  Lesson({required this.title, required this.content, required this.qusetion});
}

class Question {
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;

  Question(
      {required this.questionText,
      required this.options,
      required this.correctAnswerIndex});
}

List<Lesson> sampleLessons = [
  Lesson(
      title: 'Introduction to Spanish',
      content: 'Learn basic greetings and introduction in Spanish',
      qusetion: [
        Question(
            questionText: 'How do you say "Hello" in Spanish ?',
            options: ['Hola', 'BonJour', 'Ciao', 'Hallo'],
            correctAnswerIndex: 0),
        Question(
            questionText: 'How do you say "Goodbye" in Spanish',
            options: ['Adios', 'Au revoir', 'Arrivederci', 'Auf Wiedersehen'],
            correctAnswerIndex: 0)
      ])
];
