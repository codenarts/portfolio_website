import 'package:flutter/material.dart';
import 'package:portfolio_website/ui/desktop_screen.dart';
import 'package:portfolio_website/ui/mobile_view.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ContentPane(),
      ),
    );
  }
}

class ContentPane extends StatefulWidget {
  const ContentPane({super.key});

  @override
  State<ContentPane> createState() => _ContentPaneState();
}

class _ContentPaneState extends State<ContentPane> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 460) {
          return const DesktopView();
        }
        return const MobileView();
      },
    );
  }
}
