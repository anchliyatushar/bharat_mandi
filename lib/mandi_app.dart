import 'package:bharat_mandi/notifiers/notifiers.dart';
import 'package:bharat_mandi/ui/ui.dart';
import 'package:bharat_mandi/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MandiApp extends StatefulWidget {
  const MandiApp({super.key});

  @override
  State<MandiApp> createState() => _MandiAppState();
}

class _MandiAppState extends State<MandiApp> {
  @override
  void initState() {
    super.initState();
    AppUtils.setupLocator();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AppUtils.locator.get<CommoditiesNotifier>(),
        )
      ],
      child: MaterialApp(
        title: 'Bharat Mandi',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const CommoditiesScreen(),
      ),
    );
  }
}
