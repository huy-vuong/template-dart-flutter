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
      builder: (dynamicLightColorScheme, dynamicDarkColorScheme) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: dynamicLightColorScheme ?? defaultLightColorScheme,
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.dark,
            colorScheme: dynamicDarkColorScheme ?? defaultDarkColorScheme,
          ),
          themeMode: ThemeMode.system,
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
