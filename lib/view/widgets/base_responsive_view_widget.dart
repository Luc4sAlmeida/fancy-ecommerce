import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class BaseResponsiveView extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;

  const BaseResponsiveView(
      {@required this.child, @required this.backgroundColor, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapper.builder(child,
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(480, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
        background: Container(color: Colors.grey.shade50));
  }
}
