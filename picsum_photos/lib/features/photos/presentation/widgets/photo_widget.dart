import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:picsum_photos/features/photos/domain/models/photo_model.dart';

class PhotoWidget extends StatelessWidget {
  const PhotoWidget({super.key, required this.photo});

  final PhotoModel photo;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CachedNetworkImage(
          imageUrl: photo.downloadUrl,
          progressIndicatorBuilder: (_, url, download) {

            if (download.progress != null) {
              final percent = download.progress! * 100;
              return Center(child: CircularProgressIndicator());
            }

            return Center(child: Text('Cargando $url!'));
          },
          fit: BoxFit.cover
      ),
    ]
    );
  }
}
