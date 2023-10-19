

import 'package:flutter/material.dart';
import 'package:maydon_admin_panel/pages/sign_in_page.dart';

class MaydonApp extends StatelessWidget {
  const MaydonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.light,
      home: const SignInPage(),
    );
  }
}
