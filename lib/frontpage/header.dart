import 'package:flutter/material.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'LinguaMaster',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.cyanAccent),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TextButton(onPressed: () {}, child: const Text('Home')),
                  TextButton(onPressed: () {}, child: const Text('About Us')),
                  TextButton(onPressed: () {}, child: const Text('Features')),
                  TextButton(onPressed: () {}, child: const Text('contact')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class HeaderPage extends StatelessWidget {
//   const HeaderPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
//       decoration: const BoxDecoration(color: Colors.white, boxShadow: [
//         BoxShadow(
//           color: Colors.black12,
//           blurRadius: 5.0,
//           spreadRadius: 2.0,
//         )
//       ]),
//       child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//         const Row(
//           children: [
//             // Image.asset(
//             //   'assets/10.png',
//             //   height: 40,
//             // ),
//             SizedBox(
//               width: 40,
//             ),
//             Text(
//               'LinguaMaster',
//               style: TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.blueAccent),
//             ),
//           ],
//         ),
//         Row(
//           children: [
//             TextButton(
//                 onPressed: () {},
//                 child: const Text(
//                   'Home',
//                   style: TextStyle(fontSize: 16, color: Colors.black87),
//                 )),
//             const SizedBox(
//               width: 15,
//             ),
//             TextButton(
//                 onPressed: () {},
//                 child: const Text(
//                   'About Us',
//                   style: TextStyle(fontSize: 16, color: Colors.black87),
//                 )),
//             const SizedBox(
//               width: 15,
//             ),
//             TextButton(
//                 onPressed: () {},
//                 child: const Text(
//                   'Features',
//                   style: TextStyle(fontSize: 16, color: Colors.black87),
//                 )),
//             const SizedBox(
//               width: 15,
//             ),
//             TextButton(
//                 onPressed: () {},
//                 child: const Text(
//                   'Home',
//                   style: TextStyle(fontSize: 16, color: Colors.black87),
//                 )),
//             // const SizedBox(width: 20,),
//             //ElevatedButton(onPressed: (){}, child:)
//           ],
//         ),
//       ]),
//     );
//   }
// }

