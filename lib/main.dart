import 'dart:developer';

import 'package:aniba_app/iw.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'iw.dart';

void main() {
  log('main');
  return runApp(const AnibalApp());
}

class AnibalApp extends StatelessWidget {
  const AnibalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Iws(
      root: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
