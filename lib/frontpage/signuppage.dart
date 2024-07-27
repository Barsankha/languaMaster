import 'package:flutter/material.dart';

class SignupSection extends StatelessWidget {
  const SignupSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text(
            'Sign Up',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Email Address'),
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Confirm Password'),
            obscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Sign Up')),
          const SizedBox(
            height: 10,
          ),
          const Text('Or sign up with'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.account_circle)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.account_circle_outlined)),
            ],
          ),
          TextButton(
              onPressed: () {},
              child: const Text('Already have an account? Log In')),
        ],
      ),
    );
  }
}
