import 'package:flutter/material.dart';

class MyPageViewScreen extends StatelessWidget {
  final List<String> _pages = ['Page 1', 'Page 2', 'Page 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Page Viewer'),
      ),
      body: PageView.builder(
        itemCount: _pages.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Text(
              _pages[index],
              style: TextStyle(fontSize: 24),
            ),
          );
        },
      ),
    );
  }
}