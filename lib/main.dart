import 'package:flutter/material.dart';
import 'screens/login_screen.dart'; // 로그인 화면
import 'screens/signup_screen.dart'; // 회원가입 화면
import 'screens/home_screen.dart'; // 홈 화면
import 'screens/settings_screen.dart'; // 설정 화면
import 'screens/new_post_screen.dart'; // 새 게시글 작성 화면
import 'screens/notification_screen.dart'; // 알림 화면
import 'screens/signin_screen.dart'; // 사인인 화면

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // 초기 화면을 로그인 화면으로 설정
      routes: {
        '/': (context) => LoginScreen(), // 로그인 화면
        '/signup': (context) => SignupScreen(), // 회원가입 화면
        '/home': (context) => HomeScreen(), // 홈 화면
        '/settings': (context) => SettingsScreen(), // 설정 화면
        '/new_post': (context) => NewPostScreen(), // 새 게시글 작성 화면
        '/notifications': (context) => NotificationScreen(), // 알림 화면
        '/signin': (context) => SigninScreen(), // 사인인 화면
      },
    );
  }
}