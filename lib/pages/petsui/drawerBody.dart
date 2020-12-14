import 'package:flutter/material.dart';
import 'package:ui/config/configuration.dart';

class DrawerBodyScreen extends StatefulWidget {
  @override
  _DrawerBodyState createState() => _DrawerBodyState();
}

class _DrawerBodyState extends State<DrawerBodyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryGreen,
    );
  }
}
