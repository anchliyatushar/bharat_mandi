import 'package:bharat_mandi/data/data.dart';
import 'package:bharat_mandi/notifiers/notifiers.dart';
import 'package:bharat_mandi/ui/ui.dart';
import 'package:bharat_mandi/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CommoditiesScreen extends StatefulWidget {
  const CommoditiesScreen({super.key});

  @override
  State<CommoditiesScreen> createState() => _CommoditiesScreenState();
}

class _CommoditiesScreenState extends State<CommoditiesScreen> {
  Commodities? commoditiesData;

  @override
  void initState() {
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Bharat Mandi'),
        actions: [
          IconButton(
            onPressed: _getData,
            icon: const Icon(
              Icons.refresh_rounded,
              size: 24,
            ),
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async => _getData(),
        child: Selector<CommoditiesNotifier, bool>(
          selector: (_, model) => model.isLoading,
          builder: (_, isLoading, __) {
            if (isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (commoditiesData == null) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('No data'),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: _getData,
                      child: const Text('Try Again'),
                    ),
                  ],
                ),
              );
            }

            return CommoditiesListViewMolecule(commodities: commoditiesData!);
          },
        ),
      ),
    );
  }

  void _getData() async {
    final notifier = AppUtils.locator.get<CommoditiesNotifier>();

    notifier.setLoading = true;

    final resp = await notifier.fetchCommodities();
    commoditiesData = resp.data;

    notifier.setLoading = false;

    if (!context.mounted) {
      return;
    }
    AppUtils.showSnackbar(context, resp.message.toString());
  }
}
