import 'package:app/core/const.dart';
import 'package:app/core/extension.dart';
import 'package:app/shared/widgets/image/svg.dart';
import 'package:flutter/material.dart';

import '../widgets/navigations/appbar.widget.dart';

class IslamicScaffold extends StatelessWidget {
  const IslamicScaffold(
      {super.key, required this.body, this.appBar, this.bottomNavigationBar});

  final CustomAppBar? appBar;
  final Widget? bottomNavigationBar;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          backgroundColor: surfaceBrand,
          appBar: appBar ?? const CustomAppBar(),
          bottomNavigationBar: bottomNavigationBar,
          extendBodyBehindAppBar: true,
          body: SizedBox(
              width: context.width,
              height: context.height,
              child: Stack(
                clipBehavior: Clip.hardEdge,
                fit: StackFit.passthrough,
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  const Opacity(
                    opacity: .3,
                    child: Align(
                      alignment: Alignment(1.2, -1),
                      child: SVG(
                        asset: "islamic.svg",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const Opacity(
                    opacity: .3,
                    child: Align(
                      alignment: Alignment(-1, 1),
                      child: SVG(
                        asset: "islamic-2.svg",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  body
                ],
              ))),
    );
  }
}
