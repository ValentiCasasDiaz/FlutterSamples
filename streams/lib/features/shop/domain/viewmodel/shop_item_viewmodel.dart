import 'dart:async';
import 'package:streams/features/shop/domain/models/shop_item_model.dart';

class BasketViewModel {

  // StreamController para la cesta de la compra. Si hiciera falta en más de un lugar
  // tendria que ser StreamController<List<ShopItem>>.broadcast()
  final _basketController = StreamController<List<ShopItem>>();

  // El estado actual de la cesta
  final List<ShopItem> _basketItems = [];

  
  List<ShopItem> get currentBasket => _basketItems;
  Stream<List<ShopItem>> get shopBasketStream => _basketController.stream;

  // Añadimos un objeto a la cesta
  void addItem(ShopItem item) {
    _basketItems.add(item);
    _basketController.sink.add(_basketItems);
  }

  // Quitamos el controlador para evitar fugas de memoria (memory leaks)
  void dispose() {
    _basketController.close();
  }
}