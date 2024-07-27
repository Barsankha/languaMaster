import 'package:flutter/material.dart';
import 'package:langua_master/lesson/samplelesson.dart';

class LessonPage extends StatelessWidget {
  final Lesson lesson;
  const LessonPage({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(lesson.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              lesson.content,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: lesson.qusetion.length,
                    itemBuilder: (context, index) {
                      return QuestionWidget(question: lesson.qusetion[index]);
                    }))
          ],
        ),
      ),
    );
  }
}

class QuestionWidget extends StatefulWidget {
  final Question question;
  const QuestionWidget({super.key, required this.question});

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  int? selectedOptionIndex;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.question.questionText,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: List.generate(widget.question.options.length, (index) {
                return RadioListTile(
                    title: Text(widget.question.options[index]),
                    value: index,
                    groupValue: selectedOptionIndex,
                    onChanged: (int? value) {
                      setState(() {
                        selectedOptionIndex = value;
                      });
                    });
              }),
            ),
            ElevatedButton(
              onPressed: () {
                if (selectedOptionIndex == widget.question.correctAnswerIndex) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Correct!'),
                    backgroundColor: Colors.green,
                  ));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Try Again.'),
                    backgroundColor: Colors.red,
                  ));
                }
              },
              child: const Text('Check Answer'),
            )
          ],
        ),
      ),
    );
  }
}
