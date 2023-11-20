import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:templatedartflutter/ui/pages/my_home_page.dart';

class MyApp extends StatelessWidget {
  static final defaultLightColorScheme = ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
  );
  static final defaultDarkColorScheme = ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
    brightness: Brightness.dark,
  );

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (lightColorScheme, darkColorScheme) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: lightColorScheme ?? defaultLightColorScheme,
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            colorScheme: darkColorScheme ?? defaultDarkColorScheme,
            useMaterial3: true,
          ),
          themeMode: ThemeMode.system,
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
