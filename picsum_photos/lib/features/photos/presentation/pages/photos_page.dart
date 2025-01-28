import 'package:flutter/material.dart';
import 'package:picsum_photos/features/photos/data/photo_api.dart';
import 'package:picsum_photos/features/photos/presentation/widgets/photo_widget.dart';

import '../../domain/models/photo_model.dart';

class PhotosPage extends StatefulWidget {
  const PhotosPage({super.key});

  @override
  State<PhotosPage> createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {

  final PhotoApi photoApi = PhotoApi();
  late Future<List<PhotoModel>> allPhotos;

  int currentPage = 1;
  int photosInPage = 5;

  @override
  void initState() {
    super.initState();
    _updatePhotos();
  }

  void _updatePhotos() {
    allPhotos = photoApi.getAllPhotos(page: currentPage, limit: photosInPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: FutureBuilder<List<PhotoModel>>(
          future: allPhotos,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<PhotoModel> photos = snapshot.data!;

              return ListView.builder(
                  itemCount: photos.length,
                  itemBuilder: (BuildContext context, int index) =>
                      PhotoWidget(photo: photos[index]));
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
