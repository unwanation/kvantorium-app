import 'package:flutter/material.dart';
import 'package:kvantorium/pages/home.dart';
import 'package:kvantorium/pages/lesson.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      // ChangeNotifierProvider(create: (_) => Store()),
    ],
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        // '/chat': (context) => const ChatPage(),
        '/lesson': (context) => const LessonPage(),
      },
    );
  }
}

// class Store with ChangeNotifier, DiagnosticableTreeMixin {
//   int _selectedTab = 0;

//   int get selectedTab => _selectedTab;

//   void setTab(int value) {
//     _selectedTab = value;
//     notifyListeners();
//   }
// }
