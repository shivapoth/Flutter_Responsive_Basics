import 'package:demo/responsive/desktopView.dart';
import 'package:demo/responsive/mobileView.dart';
import 'package:demo/responsive/responsive.dart';
import 'package:demo/responsive/tabletView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ResponsiveApp());
}

class ResponsiveApp extends StatefulWidget {
  const ResponsiveApp({super.key});

  @override
  State<ResponsiveApp> createState() => _ResponsiveAppState();
}

class _ResponsiveAppState extends State<ResponsiveApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red
      ),

      home: ResponsiveUI(
      tabletView: TabletView(), 
      mobileView: MobileView(), 
      desktopView: DesktopView()),
    );
  }
}
