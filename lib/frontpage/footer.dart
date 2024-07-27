import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      color: Colors.grey[200],
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: () {}, child: const Text('Home')),
              TextButton(onPressed: () {}, child: const Text('About Us')),
              TextButton(onPressed: () {}, child: const Text('Features')),
              TextButton(onPressed: () {}, child: const Text('Contact')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.facebook)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.linked_camera_outlined)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt)),
            ],
          ),
          const Text('Contact: email@example.com | Phone: 123-456-7890'),
          const Text('@ 2024 LinguaMaster. All right reserved.'),
        ],
      ),
    );
  }
}
