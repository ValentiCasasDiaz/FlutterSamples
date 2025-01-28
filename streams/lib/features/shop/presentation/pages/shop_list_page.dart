import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:streams/features/shop/domain/models/shop_item_model.dart';
import 'package:streams/features/shop/domain/viewmodel/shop_item_viewmodel.dart';
import 'package:streams/features/shop/presentation/pages/shop_basket_page.dart';
import 'package:streams/features/shop/presentation/widgets/shop_list_item.dart';

class ShopListPage extends StatefulWidget {
  const ShopListPage({super.key});

  @override
  State<ShopListPage> createState() => _ShopListPageState();
}

class _ShopListPageState extends State<ShopListPage> {
  
  @override
  Widget build(BuildContext context) {
    
    // Declaramos el Provider para usarlo más tarde
    final basketViewModel = Provider.of<BasketViewModel>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Shop List'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Stack(alignment: AlignmentDirectional.topEnd, children: [
                IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  tooltip: 'Open shopping cart',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ShopBasketPage()),
                    );
                  },
                ),
                // Declaramos el StreamBuilder para que actualice la cantidad de
                // productos en la cesta
                StreamBuilder<List<ShopItem>>(
                    stream: basketViewModel.shopBasketStream,
                    builder: (context, snapshot) {

                      int itemCount = snapshot.data?.length ?? 0;

                      return Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(child: Text('$itemCount')),
                      );
                    })
              ]),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, int index) => ShopListItem(
            shopItem: ShopItem(
              id: index,
              name: 'Nombre Def',
              url: 'https://picsum.photos/id/${227 + index}/300/300',
            ),
          ),
        ));
  }
}
