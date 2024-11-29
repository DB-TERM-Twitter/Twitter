import 'package:flutter/material.dart';

// 회원가입 화면
// 사용자가 이름, 이메일, 비밀번호를 입력하여 계정을 생성할 수 있도록 구성
class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.close),  // 뒤로가기 버튼을 X로 변경
          onPressed: () {
            Navigator.pop(context);  // 이전 화면으로 돌아가기
          },
        ),
        title: Image.asset(
          'lib/images/image1.png',
          height: 32,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Create your account',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30),  // 제목과 입력 필드 사이 간격
              TextField(
                cursorColor: Colors.blue,  // 커서 색상
                style: TextStyle(color: Colors.white),  // 입력 텍스트 색상
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(color: Colors.grey),
                  floatingLabelStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                cursorColor: Colors.blue,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.grey),
                  floatingLabelStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                cursorColor: Colors.blue,
                style: TextStyle(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.grey),
                  floatingLabelStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white), // 트위터 색상 적용
                onPressed: () {
                  Navigator.pop(context); // 로그인 화면으로 돌아감
                },
                child: Text('Sign Up',
                    style: TextStyle(color: Colors.black)), // 회원가입 버튼
              ),
            ],
          ),
        ),
      ),
    );
  }
}