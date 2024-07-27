import 'package:flutter/material.dart';
import 'package:langua_master/homepage.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          const Text(
            'welcome to LinguaMaster',
            style: TextStyle(
              fontSize: 32,
              color: Colors.cyanAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Your journey to master new languages starts here',
            style: TextStyle(fontSize: 18, color: Colors.cyanAccent),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: const Text('Get started')),
              const SizedBox(
                width: 10,
              ),
              OutlinedButton(onPressed: () {}, child: const Text('Learn more')),
            ],
          )
        ],
      ),
    );
  }
}
