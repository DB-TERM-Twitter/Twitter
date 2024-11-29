import 'package:flutter/material.dart';

// 설정 화면
// 사용자가 계정 정보나 앱 설정을 변경할 수 있도록 구성
class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: Icon(Icons.person, color: Colors.blue),
            title: Text('Account'),
            onTap: () {
              // 계정 정보 화면으로 이동
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications, color: Colors.blue),
            title: Text('Notifications'),
            onTap: () {
              // 알림 설정 화면으로 이동
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.lock, color: Colors.blue),
            title: Text('Privacy'),
            onTap: () {
              // 개인정보 설정 화면으로 이동
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.help, color: Colors.blue),
            title: Text('Help'),
            onTap: () {
              // 도움말 화면으로 이동
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.red),
            title: Text('Logout'),
            onTap: () {
              // 로그아웃 기능
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }
}
