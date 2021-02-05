import 'package:flutter/material.dart';

import 'flow.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text(
          "WallState", style: TextStyle(color: Colors.white, fontFamily: 'Ubuntu'),
        ),
      ),
      body: FlowPage(),
    );
  }
}
