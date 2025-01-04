import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:wietcorb_task/Core/Utiles/catsApi.dart';
import 'package:wietcorb_task/Features/Images/Data/catsModel.dart';
import 'package:wietcorb_task/Features/Images/Presentation/Widgets/gridImage.dart';

class ImagesviewBody extends StatelessWidget {
  const ImagesviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 2,
      child: FutureBuilder<List<CatsModel>>(
        future: AppServices().getCats(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<CatsModel> data = snapshot.data!;
            return ListView(children: [
              StaggeredGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: [
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 1.7,
                      child: GridImage(
                        url: data[0].url,
                      )),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 1.7,
                      child: GridImage(url: data[1].url)),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 2.8,
                      child: GridImage(url: data[2].url)),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1.7,
                      child: GridImage(url: data[3].url)),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2.4,
                      child: GridImage(url: data[4].url)),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 2.5,
                      child: GridImage(url: data[5].url)),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1.7,
                      child: GridImage(url: data[6].url)),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 2,
                      child: GridImage(url: data[7].url)),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1.7,
                      child: GridImage(url: data[8].url)),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2.4,
                      child: GridImage(url: data[9].url)),
                ],
              ),
            ]);
          } else {
            return Center(
              child: LoadingAnimationWidget.threeRotatingDots(
                color: Colors.blue,
                size: 100,
              ),
            );
          }
        },
      ),
    );
  }
}
