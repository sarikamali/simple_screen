import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            height: 90,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(spreadRadius: 1, color: Colors.grey.withOpacity(0.2)),
              ],
              color: Colors.white,
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.arrow_back,
                  size: 28,
                ),
                const Spacer(),
                Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(spreadRadius: 3),
                    ],
                  ),
                  child: const Icon(
                    Icons.question_mark,
                    size: 18,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Icon(
                  Icons.notifications,
                  size: 30,
                ),
              ],
            ),
          ),
          const Image(
            image: AssetImage('assets/images/service.png'),
            height: 300,
            width: 300,
          ),
          const Text(
            'You Can Start your service',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w900, color: Colors.green),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            '"Once you diagnose the issue,provide the\n   required service for the customers car\n and estimate the time.Click Continue to\n  add services and update the customer."',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 300,
            child: CupertinoButton(
              color: Colors.green,
              borderRadius: BorderRadius.circular(2),
              child: const Text(
                'Continue',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
