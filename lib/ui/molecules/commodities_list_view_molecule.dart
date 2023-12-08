import 'package:bharat_mandi/data/data.dart';
import 'package:bharat_mandi/ui/ui.dart';
import 'package:flutter/material.dart';

class CommoditiesListViewMolecule extends StatelessWidget {
  final Commodities commodities;

  const CommoditiesListViewMolecule({super.key, required this.commodities});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      children: [
        Text(commodities.title ?? ''),
        const SizedBox(height: 16),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (_, __) => const SizedBox(height: 16),
          itemCount: commodities.records?.length ?? 0,
          itemBuilder: (_, index) =>
              CommoditiesListItemAtom(item: commodities.records![index]),
        ),
      ],
    );
  }
}
