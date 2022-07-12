import 'package:flutter/material.dart';
import 'package:collapsible_drawer/Src/Widgets/CustomDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      drawer: const CustomDrawer(),
      body: Center(
        child: Text(
        'Flutter Collapsible Drawer',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18
          ),
        )
      ),
    );
  }
}
