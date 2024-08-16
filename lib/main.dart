import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
        builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
      ThemeData themeData =
          MediaQuery.of(context).platformBrightness == Brightness.dark
              ? ThemeData(
                  // 使用 darkDynamic 作为主题的颜色方案
                  colorScheme: darkDynamic ?? ThemeData.dark().colorScheme,
                  useMaterial3: true,
                )
              : ThemeData(
                  // 使用 lightDynamic 作为主题的颜色方案
                  colorScheme: lightDynamic ?? ThemeData.light().colorScheme,
                  useMaterial3: true,
                );
      return MaterialApp(
        title: 'Flutter Demo',
        theme: themeData,
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.primary,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:primary',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onPrimary,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
            text: 'Color:onPrimary',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.primaryContainer,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:primaryContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:onPrimaryContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.secondary,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:secondary',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onSecondary,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
            text: 'Color:onSecondary',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.secondaryContainer,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:secondaryContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onSecondaryContainer,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:onSecondaryContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.tertiary,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:tertiary',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onTertiary,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
            text: 'Color:onTertiary',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.tertiaryContainer,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:tertiaryContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onTertiaryContainer,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:onTertiaryContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.error,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:error',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onError,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
            text: 'Color:onError',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.errorContainer,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:errorContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onErrorContainer,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:onErrorContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.background,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
            text: 'Color:background',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onBackground,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:onBackground',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.surface,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
            text: 'Color:surface',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onSurface,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:onSurface',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.surfaceVariant,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:surfaceVariant',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:onSurfaceVariant',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.outline,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:outline',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.outlineVariant,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:outlineVariant',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.shadow,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:shadow',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.scrim,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:scrim',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.inverseSurface,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:inverseSurface',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onInverseSurface,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:onInverseSurface',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.inversePrimary,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:inversePrimary',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.surfaceTint,
            textColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.black
                    : Colors.white,
            text: 'Color:surfaceTint',
          ),
          // 以上共30个颜色，截止于 dynamic_color 版本: 1.7.0
        ],
      ),
    );
  }

  Widget _buildRoundedRectangle({
    required BuildContext context,
    required Color color,
    required Color textColor,
    required String text,
  }) {
    return Container(
      height: 60.0,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
