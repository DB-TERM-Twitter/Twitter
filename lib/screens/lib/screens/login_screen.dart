import 'package:flutter/material.dart';
import 'package:twitter/screens/signup_screen.dart';  // SignupScreen import 추가
import 'package:twitter/screens/signin_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final double maxWidth = constraints.maxWidth * 0.5;
          final double boxWidth = maxWidth < 400 ? maxWidth : 400;

          return Row(
            children: [
              // 왼쪽 X 로고
              Expanded(
                flex: 1,
                child: Center(
                  child: Image.asset(
                    'lib/images/image1.png',
                    fit: BoxFit.contain,
                    width: constraints.maxWidth * 0.2,
                  ),
                ),
              ),
              // 오른쪽 텍스트와 버튼
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Happening Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Join today.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.g_mobiledata, size: 28),
                        label: Text('Sign up with Google'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          minimumSize: Size(boxWidth, 50),
                        ),
                      ),
                      SizedBox(height: 15),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.apple, size: 28),
                        label: Text('Sign up with Apple'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          minimumSize: Size(boxWidth, 50),
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                            width: boxWidth / 2 - 30,
                            child: Divider(
                              color: Colors.white54,
                              thickness: 1,
                            ),
                          ),
                          Text(
                            'or',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Container(
                            width: boxWidth / 2 - 30,
                            child: Divider(
                              color: Colors.white54,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupScreen(),
                            ),
                          );
                        },
                        child: Text('Create account', style: TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF1DA1F2),
                          minimumSize: Size(boxWidth, 50),
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Already have an account?',
                          style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/signin');
                          },
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              color: Color(0xFF1DA1F2),
                              fontSize: 14,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Color(0xFF1DA1F2)),
                            backgroundColor: Colors.black,
                            minimumSize: Size(boxWidth, 50),
                          ),
                        ),
                      ),
                    ],
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