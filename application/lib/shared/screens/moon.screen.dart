import 'package:flutter/material.dart';

import '../widgets/navigations/appbar.widget.dart';

class MoonScaffold extends StatelessWidget {
  const MoonScaffold({super.key, required this.child, this.appBar});

  final CustomAppBar? appBar;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background/moon.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(child: child),
        ));
  }
}
