class ShopItem {

  int id;
  String name;
  String url;

  ShopItem({
    required this.id,
    required this.name,
    required this.url
  });

  factory ShopItem.fromJson(Map<String, dynamic> json) {

    return ShopItem(
      id: int.parse(json['id']),
      name: json['author'],
      url: json['url']
    );

  }

   Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'url': url
    };
  }

}