import 'package:flutter/material.dart';
import 'package:portfolio_marcelino/pages/principal_page.dart';
import 'package:portfolio_marcelino/state/app_state.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AppState(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PrincipalPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
