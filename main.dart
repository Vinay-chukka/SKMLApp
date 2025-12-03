import 'package:flutter/material.dart';

void main() => runApp(SKMLApp());

class SKMLApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SKML App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (_) => HomeScreen(),
        '/s2': (_) => Screen(image: 'assets/images/2.png', title: 'Screen 2'),
        '/s3': (_) => Screen(image: 'assets/images/3.png', title: 'Screen 3'),
        '/s4': (_) => Screen(image: 'assets/images/4.png', title: 'Screen 4'),
        '/s5': (_) => Screen(image: 'assets/images/5.png', title: 'Screen 5'),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String image = 'assets/images/1.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SKML App — Screen 1')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image, width: 320),
              const SizedBox(height: 16),
              Wrap(
                spacing: 12,
                children: [
                  ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/s2'), child: Text('Go to Screen 2')),
                  ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/s3'), child: Text('Go to Screen 3')),
                  ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/s4'), child: Text('Go to Screen 4')),
                  ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/s5'), child: Text('Go to Screen 5')),
                ],
              ),
              const SizedBox(height: 12),
              Text('Tap the buttons to navigate. Replace image-based mockups with real widgets as needed.')
            ],
          ),
        ),
      ),
    );
  }
}

class Screen extends StatelessWidget {
  final String image;
  final String title;
  const Screen({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, width: 320),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Back'),
            )
          ],
        ),
      ),
    );
  }
}
