import 'package:bharat_mandi/data/models/records.dart';
import 'package:bharat_mandi/utils/utils.dart';
import 'package:flutter/material.dart';

class CommoditiesListItemAtom extends StatelessWidget {
  final Records item;

  const CommoditiesListItemAtom({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _renderMarketAndVariety(),
          const SizedBox(height: 4),
          Text(item.commodity ?? ''),
          const SizedBox(height: 4),
          Row(
            children: [
              const Text('Arrival Date: '),
              Text(item.arrivalDate?.format() ?? 0.toString()),
            ],
          ),
          const SizedBox(height: 4),
          _renderMinMaxPrice(),
        ],
      ),
    );
  }

  Row _renderMarketAndVariety() {
    return Row(
      children: [
        const Text(
          'Mkt. ',
          style: TextStyle(fontSize: 12, color: Colors.black38),
        ),
        Text(
          item.market ?? '',
          style: const TextStyle(fontSize: 12, color: Colors.black87),
        ),
        const Text(
          ' • ',
          style: TextStyle(fontSize: 12, color: Colors.black),
        ),
        const Text(
          'Variety ',
          style: TextStyle(fontSize: 12, color: Colors.black38),
        ),
        Text(
          item.variety ?? '',
          style: const TextStyle(fontSize: 12, color: Colors.black87),
        ),
      ],
    );
  }

  Row _renderMinMaxPrice() {
    return Row(
      children: [
        const Text(
          'Max Price : ',
          style: TextStyle(fontSize: 12, color: Colors.black38),
        ),
        Text(
          '₹ ${(item.maxPrice ?? 0).toStringAsFixed(0)}',
          style: const TextStyle(fontSize: 12, color: Colors.black87),
        ),
        const Text(
          ' • ',
          style: TextStyle(fontSize: 12, color: Colors.black),
        ),
        const Text(
          'Min Price : ',
          style: TextStyle(fontSize: 12, color: Colors.black38),
        ),
        Text(
          '₹ ${(item.minPrice ?? 0).toStringAsFixed(0)}',
          style: const TextStyle(fontSize: 12, color: Colors.black87),
        ),
      ],
    );
  }
}
