import 'package:flutter/material.dart';
import 'package:langua_master/lesson/lessonwidget.dart';
import 'package:langua_master/lesson/samplelesson.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedLanguage = 'English';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lanhua Master'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Langua Master !',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            LanguageDropdown(
                selectedLanguage: _selectedLanguage,
                onLanguageChanged: (String? newValue) {
                  setState(() {
                    _selectedLanguage = newValue!;
                  });
                }),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LessonPage(
                              lesson: sampleLessons[0],
                            )));
              },
              child: const Text('Start Learning'),
            )
          ],
        ),
      ),
    );
  }
}

class LanguageDropdown extends StatelessWidget {
  final String selectedLanguage;
  final ValueChanged<String?> onLanguageChanged;
  const LanguageDropdown(
      {super.key,
      required this.selectedLanguage,
      required this.onLanguageChanged});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedLanguage,
      onChanged: onLanguageChanged,
      items: <String>['English', 'Spanish', 'French', 'German']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
