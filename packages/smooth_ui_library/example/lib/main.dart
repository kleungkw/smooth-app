import 'package:flutter/material.dart';
import 'package:example/pages/test_page.dart';
import 'package:smooth_ui_library/navigation/models/smooth_navigation_layout_model.dart';
import 'package:smooth_ui_library/navigation/models/smooth_navigation_screen_model.dart';
import 'package:smooth_ui_library/navigation/models/smooth_navigation_action_model.dart';
import 'package:smooth_ui_library/navigation/smooth_navigation_layout.dart';

void main() => runApp(SmoothUILibraryExample());

class SmoothUILibraryExample extends StatelessWidget {
  final SmoothNavigationLayoutModel layout = generateTestLayoutModel();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SmoothNavigationLayout(
        layout: layout,
        animationDuration: 200,
        animationCurve: Curves.easeInOutBack,
        //color: Colors.black54,
        //textColor: Colors.white,
        //borderRadius: 15.0,
        //reverseLayout: true,
      ),
    );
  }

  static SmoothNavigationLayoutModel generateTestLayoutModel() {
    return SmoothNavigationLayoutModel(
      screens: <SmoothNavigationScreenModel>[
        SmoothNavigationScreenModel(
          icon: Container(
            width: 20.0,
            height: 20.0,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                color: Colors.greenAccent),
          ),
          page: TestPage(Colors.greenAccent),
          action: SmoothNavigationActionModel(
            icon: Container(
              width: 20.0,
              height: 20.0,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.greenAccent),
            ),
            onTap: () {

            },
            title: 'Green main action',
          ),
        ),
        SmoothNavigationScreenModel(
          icon: Container(
            width: 20.0,
            height: 20.0,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                color: Colors.yellow),
          ),
          page: TestPage(Colors.yellow),
        ),
        SmoothNavigationScreenModel(
          icon: Container(
            width: 20.0,
            height: 20.0,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                color: Colors.redAccent),
          ),
          page: TestPage(Colors.redAccent),
          action: SmoothNavigationActionModel(
            icon: Container(
              width: 20.0,
              height: 20.0,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.redAccent),
            ),
            onTap: () {

            },
            title: 'Red main action',
          ),
        ),
      ],
    );
  }
}
