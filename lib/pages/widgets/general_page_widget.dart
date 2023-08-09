import 'package:flutter/material.dart';

class GeneralWidgetPage extends StatelessWidget {
  final Widget child;
  const GeneralWidgetPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: Stack(children: [
              Positioned(
                  right: 0,
                  child: Container(
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/ecllipse_2.png'))))),
              Positioned(
                  bottom: -25,
                  child: Container(
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/ecllipse_1.png'))))),
              child
            ])));
  }
}
