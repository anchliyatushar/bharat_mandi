import 'package:bharat_mandi/data/data.dart';
import 'package:flutter/material.dart';

class CommoditiesListViewMolecule extends StatelessWidget {
  final Commodities commodities;

  const CommoditiesListViewMolecule({super.key, required this.commodities});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      itemBuilder: (_, index) => const Placeholder(),
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      itemCount: commodities.records?.length ?? 0,
    );
  }
}
