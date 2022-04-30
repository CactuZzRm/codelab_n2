import 'package:flutter/material.dart';
import 'package:section_8/widgets/attraction_card.dart';

import '../global_variables/variables.dart';
import '../models/attraction.dart';

class AttractionListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 10),
        itemCount: attractions.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          AttractionModel currentAttraction = attractions[index];

          return AttractionCard(attractionModel: currentAttraction);
        },
      ),
    );
  }
}
