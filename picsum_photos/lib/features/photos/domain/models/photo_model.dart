class PhotoModel {

  int id;
  String author;
  int width;
  int height;
  String url;
  String downloadUrl;

  PhotoModel({
    required this.id,
    required this.author,
    required this.width,
    required this.height,
    required this.url,
    required this.downloadUrl
  });

  factory PhotoModel.fromJson(Map<String, dynamic> json) {

    return PhotoModel(
      id: int.parse(json['id']),
      author: json['author'],
      width: json['width'],
      height: json['height'],
      url: json['url'],
      downloadUrl: json['download_url']
    );

  }

   Map<String, dynamic> toJson() {
    return {
      'id': id,
      'author': author,
      'width': width,
      'height': height,
      'url': url,
      'download_url': downloadUrl
    };
  }
}
