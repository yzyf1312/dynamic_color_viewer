import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp(brandColorp: Color(0xff6750a4)));
}

class MyApp extends StatelessWidget {
  final Color brandColorp;

  const MyApp({super.key, required this.brandColorp});

  @override
  Widget build(BuildContext context) {
    // 定义应用的主题颜色方案
    final ColorScheme defaultLightColorScheme =
        ColorScheme.fromSeed(seedColor: brandColorp);

    final ColorScheme defaultDarkColorScheme = ColorScheme.fromSeed(
        seedColor: brandColorp, brightness: Brightness.dark);

    // 使用 DynamicColorBuilder 来动态获取颜色方案
    return DynamicColorBuilder(
      builder: (ColorScheme? lightColorScheme, ColorScheme? darkColorScheme) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: lightColorScheme ?? defaultLightColorScheme,
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme: darkColorScheme ?? defaultDarkColorScheme,
            useMaterial3: true,
          ),
          themeMode: ThemeMode.system, // 根据系统设置选择主题模式
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      },
    );
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
            text: 'Color:primary',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onPrimary,
            text: 'Color:onPrimary',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.primaryContainer,
            text: 'Color:primaryContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            text: 'Color:onPrimaryContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.secondary,
            text: 'Color:secondary',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onSecondary,
            text: 'Color:onSecondary',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.secondaryContainer,
            text: 'Color:secondaryContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onSecondaryContainer,
            text: 'Color:onSecondaryContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.tertiary,
            text: 'Color:tertiary',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onTertiary,
            text: 'Color:onTertiary',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.tertiaryContainer,
            text: 'Color:tertiaryContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onTertiaryContainer,
            text: 'Color:onTertiaryContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.error,
            text: 'Color:error',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onError,
            text: 'Color:onError',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.errorContainer,
            text: 'Color:errorContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onErrorContainer,
            text: 'Color:onErrorContainer',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.surface,
            text: 'Color:surface',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onSurface,
            text: 'Color:onSurface',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            text: 'Color:surfaceContainerHighest',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            text: 'Color:onSurfaceVariant',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.outline,
            text: 'Color:outline',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.outlineVariant,
            text: 'Color:outlineVariant',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.shadow,
            text: 'Color:shadow',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.scrim,
            text: 'Color:scrim',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.inverseSurface,
            text: 'Color:inverseSurface',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.onInverseSurface,
            text: 'Color:onInverseSurface',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.inversePrimary,
            text: 'Color:inversePrimary',
          ),
          _buildRoundedRectangle(
            context: context,
            color: Theme.of(context).colorScheme.surfaceTint,
            text: 'Color:surfaceTint',
          ),
          // 以上共28个颜色，截止于 dynamic_color 版本: 1.7.0
        ],
      ),
    );
  }

  Widget _buildRoundedRectangle({
    required BuildContext context,
    required Color color,
    required String text,
  }) {
    final Color textColor =
        color.computeLuminance() > 0.5 ? Colors.black : Colors.white;
    String colorHexValue = "#${color.value.toRadixString(16).toUpperCase()}";
    return Column(
      children: [
        Container(
          height: 60.0,
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Center(
            child: TextButton.icon(
              onPressed: () {
                final snackBar = SnackBar(
                  behavior: SnackBarBehavior.floating,
                  content: Text(colorHexValue),
                  action: SnackBarAction(
                    label: 'Copy',
                    onPressed: () {
                      Object? error;
                      try {
                        Clipboard.setData(ClipboardData(text: colorHexValue));
                      } catch (e) {
                        error = e;
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              behavior: SnackBarBehavior.floating,
                              content: Text('Failed to copy color.')),
                        );
                      } finally {
                        if (error == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                behavior: SnackBarBehavior.floating,
                                content: Text('Color copied to clipboard!')),
                          );
                        }
                      }
                    },
                  ),
                );

                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              label: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              icon: Icon(
                Icons.copy,
                color: textColor,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
