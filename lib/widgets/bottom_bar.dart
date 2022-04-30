import 'package:flutter/material.dart';
import 'package:section_8/global_variables/variables.dart';
import 'package:section_8/main.dart';

import '../models/bottom_bar_model.dart';

class BottomBarWidget extends StatefulWidget {
  @override
  State<BottomBarWidget> createState() => BottomBarWidgetState();
}

class BottomBarWidgetState extends State<BottomBarWidget> {
  List<BottomBarModel> _bottomBarItems = bottomBarListItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          _bottomBarItems.length,
          (index) {
            var barItemWidget = _bottomBarItems[index];

            return IconButton(
              icon: Icon(barItemWidget.icon,
                  color: barItemWidget.isSelected ? mainYellow : Colors.grey),
              onPressed: () {
                setState(
                  () {
                    _bottomBarItems.forEach(
                      (element) {
                        element.isSelected = element == barItemWidget;
                      },
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
