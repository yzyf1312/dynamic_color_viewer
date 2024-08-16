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
                Theme.of(context).colorScheme.primary.computeLuminance() > 0.5
                    ? Colors.black
                    : Colors.white,
            text: 'Color:primary',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onPrimary,
            textColor:
                Theme.of(context).colorScheme.onPrimary.computeLuminance() > 0.5
                    ? Colors.black
                    : Colors.white,
            text: 'Color:onPrimary',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.primaryContainer,
            textColor: Theme.of(context)
                        .colorScheme
                        .primaryContainer
                        .computeLuminance() >
                    0.5
                ? Colors.black
                : Colors.white,
            text: 'Color:primaryContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            textColor: Theme.of(context)
                        .colorScheme
                        .onPrimaryContainer
                        .computeLuminance() >
                    0.5
                ? Colors.black
                : Colors.white,
            text: 'Color:onPrimaryContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.secondary,
            textColor:
                Theme.of(context).colorScheme.secondary.computeLuminance() > 0.5
                    ? Colors.black
                    : Colors.white,
            text: 'Color:secondary',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onSecondary,
            textColor:
                Theme.of(context).colorScheme.onSecondary.computeLuminance() >
                        0.5
                    ? Colors.black
                    : Colors.white,
            text: 'Color:onSecondary',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.secondaryContainer,
            textColor: Theme.of(context)
                        .colorScheme
                        .secondaryContainer
                        .computeLuminance() >
                    0.5
                ? Colors.black
                : Colors.white,
            text: 'Color:secondaryContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onSecondaryContainer,
            textColor: Theme.of(context)
                        .colorScheme
                        .onSecondaryContainer
                        .computeLuminance() >
                    0.5
                ? Colors.black
                : Colors.white,
            text: 'Color:onSecondaryContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.tertiary,
            textColor:
                Theme.of(context).colorScheme.tertiary.computeLuminance() > 0.5
                    ? Colors.black
                    : Colors.white,
            text: 'Color:tertiary',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onTertiary,
            textColor:
                Theme.of(context).colorScheme.onTertiary.computeLuminance() >
                        0.5
                    ? Colors.black
                    : Colors.white,
            text: 'Color:onTertiary',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.tertiaryContainer,
            textColor: Theme.of(context)
                        .colorScheme
                        .tertiaryContainer
                        .computeLuminance() >
                    0.5
                ? Colors.black
                : Colors.white,
            text: 'Color:tertiaryContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onTertiaryContainer,
            textColor: Theme.of(context)
                        .colorScheme
                        .onTertiaryContainer
                        .computeLuminance() >
                    0.5
                ? Colors.black
                : Colors.white,
            text: 'Color:onTertiaryContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.error,
            textColor:
                Theme.of(context).colorScheme.error.computeLuminance() > 0.5
                    ? Colors.black
                    : Colors.white,
            text: 'Color:error',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onError,
            textColor:
                Theme.of(context).colorScheme.onError.computeLuminance() > 0.5
                    ? Colors.black
                    : Colors.white,
            text: 'Color:onError',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.errorContainer,
            textColor: Theme.of(context)
                        .colorScheme
                        .errorContainer
                        .computeLuminance() >
                    0.5
                ? Colors.black
                : Colors.white,
            text: 'Color:errorContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onErrorContainer,
            textColor: Theme.of(context)
                        .colorScheme
                        .onErrorContainer
                        .computeLuminance() >
                    0.5
                ? Colors.black
                : Colors.white,
            text: 'Color:onErrorContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.background,
            textColor:
                Theme.of(context).colorScheme.background.computeLuminance() >
                        0.5
                    ? Colors.black
                    : Colors.white,
            text: 'Color:background',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onBackground,
            textColor:
                Theme.of(context).colorScheme.onBackground.computeLuminance() >
                        0.5
                    ? Colors.black
                    : Colors.white,
            text: 'Color:onBackground',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.surface,
            textColor:
                Theme.of(context).colorScheme.surface.computeLuminance() > 0.5
                    ? Colors.black
                    : Colors.white,
            text: 'Color:surface',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onSurface,
            textColor:
                Theme.of(context).colorScheme.onSurface.computeLuminance() > 0.5
                    ? Colors.black
                    : Colors.white,
            text: 'Color:onSurface',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.surfaceVariant,
            textColor: Theme.of(context)
                        .colorScheme
                        .surfaceVariant
                        .computeLuminance() >
                    0.5
                ? Colors.black
                : Colors.white,
            text: 'Color:surfaceVariant',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            textColor: Theme.of(context)
                        .colorScheme
                        .onSurfaceVariant
                        .computeLuminance() >
                    0.5
                ? Colors.black
                : Colors.white,
            text: 'Color:onSurfaceVariant',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.outline,
            textColor:
                Theme.of(context).colorScheme.outline.computeLuminance() > 0.5
                    ? Colors.black
                    : Colors.white,
            text: 'Color:outline',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.outlineVariant,
            textColor: Theme.of(context)
                        .colorScheme
                        .outlineVariant
                        .computeLuminance() >
                    0.5
                ? Colors.black
                : Colors.white,
            text: 'Color:outlineVariant',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.shadow,
            textColor:
                Theme.of(context).colorScheme.shadow.computeLuminance() > 0.5
                    ? Colors.black
                    : Colors.white,
            text: 'Color:shadow',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.scrim,
            textColor:
                Theme.of(context).colorScheme.scrim.computeLuminance() > 0.5
                    ? Colors.black
                    : Colors.white,
            text: 'Color:scrim',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.inverseSurface,
            textColor: Theme.of(context)
                        .colorScheme
                        .inverseSurface
                        .computeLuminance() >
                    0.5
                ? Colors.black
                : Colors.white,
            text: 'Color:inverseSurface',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onInverseSurface,
            textColor: Theme.of(context)
                        .colorScheme
                        .onInverseSurface
                        .computeLuminance() >
                    0.5
                ? Colors.black
                : Colors.white,
            text: 'Color:onInverseSurface',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.inversePrimary,
            textColor: Theme.of(context)
                        .colorScheme
                        .inversePrimary
                        .computeLuminance() >
                    0.5
                ? Colors.black
                : Colors.white,
            text: 'Color:inversePrimary',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.surfaceTint,
            textColor:
                Theme.of(context).colorScheme.surfaceTint.computeLuminance() >
                        0.5
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
