import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_status/riverpod/provider_observer.dart';
import 'package:flutter_status/screen/home_screen.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [
          Logger(),
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    ),
  );
}