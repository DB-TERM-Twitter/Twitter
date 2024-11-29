import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // 다크 배경색
      body: LayoutBuilder(
        builder: (context, constraints) {
          // 화면 크기에 따라 반응형 동작
          final bool isSmallScreen = constraints.maxWidth < 600;

          return isSmallScreen
              ? Column(
                  // 작은 화면에서는 세로로 배치
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Image.asset(
                          'lib/images/assets/image1.png', // 이미지 경로
                          fit: BoxFit.fill,
                          width: 30, // 너비 더 줄임
                          height: 30, // 높이 더 줄임
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0), // 더 넓은 여백
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Signin to Twitter',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 20),
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Email or username',
                                labelStyle: TextStyle(color: Colors.white70),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white54),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                              ),
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(height: 20),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(color: Colors.white70),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white54),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                              ),
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF1DA1F2),
                                minimumSize: Size(double.infinity, 30),
                              ),
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, '/home');
                              },
                              child: Text('Login'),
                            ),
                            SizedBox(height: 10),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/signup');
                              },
                              child: Text(
                                'Sign up for Twitter',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              : Row(
                  // 큰 화면에서는 가로로 배치
                  children: [
                    // 왼쪽: 이미지 (로고를 중앙 기준으로 여백을 추가)
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(left: constraints.maxWidth * 0.06), // 중앙 기준으로 오른쪽 여백 추가
                        child: Center(
                          child: Container(
                            width: 380, // 너비
                            height: 380, // 높이
                            child: Image.asset(
                              'lib/images/image1.png', // 이미지 경로
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // 오른쪽: 로그인 폼 (로그인 창을 중앙 기준으로 왼쪽 여백 추가)
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(left: constraints.maxWidth * 0.10), // 중앙 기준으로 왼쪽 여백 추가
                        child: Container(
                          width: constraints.maxWidth * 0.05, // 로그인 창 너비
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Login to Twitter',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10),
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'Email or username',
                                  labelStyle: TextStyle(color: Colors.white70),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white54),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                  ),
                                ),
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(height: 10),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: TextStyle(color: Colors.white70),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white54),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                  ),
                                ),
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(height: 10),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF1DA1F2),
                                  minimumSize: Size(double.infinity, 50),
                                ),
                                onPressed: () {
                                  Navigator.pushReplacementNamed(context, '/home');
                                },
                                child: Text('Login'),
                              ),
                              SizedBox(height: 10),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/signup');
                                },
                                child: Text(
                                  'Sign up for Twitter',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
        },
      ),
    );
  }
}