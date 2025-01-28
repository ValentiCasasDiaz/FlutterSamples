import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:streams/features/shop/domain/viewmodel/shop_item_viewmodel.dart';
import 'package:streams/features/shop/presentation/widgets/shop_list_item.dart';

class ShopBasketPage extends StatefulWidget {
  const ShopBasketPage({super.key});

  @override
  State<ShopBasketPage> createState() => _ShopBasketPageState();
}

class _ShopBasketPageState extends State<ShopBasketPage> {
  @override
  Widget build(BuildContext context) {
    final basketViewModel = Provider.of<BasketViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Basket'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: 
        (basketViewModel.currentBasket.isEmpty) ?  
        Text('Cesta sin elementos')
        :
        ListView.builder(
          itemCount: basketViewModel.currentBasket.length,
          itemBuilder: (context, int index) =>
              ShopListItem(shopItem: basketViewModel.currentBasket[index]),
        ),
      ),
    );
  }
}
