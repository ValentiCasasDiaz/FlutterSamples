import 'dart:convert';

import 'package:picsum_photos/features/photos/domain/models/photo_model.dart';
import 'package:http/http.dart' as http;

class PhotoApi {

  final apiUrl = 'https://picsum.photos';

  Future<List<PhotoModel>> getAllPhotos({int? page, int? limit}) async {

    int pages = page ?? 1;
    int limits = limit ?? 5;

    final response = await http.get(Uri.parse('$apiUrl/v2/list?page=$pages&limit=$limits'));

    try {
      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.

        List<dynamic> jsonData = json.decode(response.body);
        
        // Convertir cada objeto JSON en un objeto Photo
        return jsonData.map((item) => PhotoModel.fromJson(item)).toList();

      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        throw Exception('Failed to load album');
      }
    } catch (e) {
      throw Exception(e.toString());
    }

  }

}
