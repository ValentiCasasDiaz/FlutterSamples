import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:streams/features/shop/domain/models/shop_item_model.dart';
import 'package:streams/features/shop/domain/viewmodel/shop_item_viewmodel.dart';

class ShopListItem extends StatefulWidget {
  const ShopListItem({super.key, required this.shopItem});

  final ShopItem shopItem;

  @override
  State<ShopListItem> createState() => _ShopListItemState();
}

class _ShopListItemState extends State<ShopListItem> {
  
  @override
  Widget build(BuildContext context) {

    final basketViewModel = Provider.of<BasketViewModel>(context);

    return Card(
      margin: EdgeInsets.only(right: 20.0, left: 20.0, top:20.0),
      elevation: 15,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(widget.shopItem.url),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                    'ID: ${widget.shopItem.id}',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  Text(
                    widget.shopItem.name,
                    style: TextStyle(fontSize: 25.0),
                  ),
                ],
              ),
            ),
            IconButton(
              iconSize: 50.0,
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'Add to cart',
              onPressed: () {
                basketViewModel.addItem(widget.shopItem);
              },
            ),
          ],
        ),
      ),
    );
  }
}
