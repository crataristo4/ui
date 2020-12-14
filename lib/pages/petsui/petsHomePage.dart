import 'package:flutter/material.dart';
import 'package:ui/pages/petsui/homeScreen.dart';

import 'drawerBody.dart';

class PetsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [DrawerBodyScreen(), PetsHomeScreen()],
      ),
    );
  }
}
