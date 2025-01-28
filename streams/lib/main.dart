import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:streams/features/shop/domain/viewmodel/shop_item_viewmodel.dart';
import 'package:streams/features/shop/presentation/pages/shop_list_page.dart';

void main() {
  runApp(
    // MultiProvider nos sirve para añadir tantos providers como nos haga falta
    MultiProvider(
      providers: [
        Provider(create: (_) => BasketViewModel(), dispose: (_, bloc) => bloc.dispose())
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop Sample',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ShopListPage(),
    );
  }
}
