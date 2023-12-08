import 'package:bharat_mandi/data/data.dart';
import 'package:bharat_mandi/notifiers/notifiers.dart';
import 'package:bharat_mandi/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      ),
      body: Selector<CommoditiesNotifier, bool>(
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

          return ListView.separated(
            itemCount: 0,
            shrinkWrap: true,
            separatorBuilder: (_, __) => const SizedBox(height: 8),
            itemBuilder: (_, index) {
              return const Placeholder();
            },
          );
        },
      ),
    );
  }

  void _getData() async {
    final notifier = AppUtils.locator.get<CommoditiesNotifier>();

    notifier.setLoading = true;

    final resp = await notifier.fetchCommodities();
    commoditiesData = resp.data;

    notifier.setLoading = false;

    if (!resp.isSuccess) {
      if (!context.mounted) {
        return;
      }

      AppUtils.showSnackbar(context, resp.message.toString());
      return;
    }
  }
}
