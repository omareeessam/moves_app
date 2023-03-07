import 'package:flutter/material.dart';
import 'package:teest_apiiii/constants/constant.dart';
import 'package:teest_apiiii/presentaion/styles/colors.dart';
import 'package:teest_apiiii/presentaion/widgets/default_cached_network_image.dart';

import '../../data/remote/ressponses/movies.dart';
import '../widgets/default_text.dart';

class MovieListItem extends StatelessWidget {
  const MovieListItem({Key? key, required this.movieModel}) : super(key: key);

  final MoviesResults movieModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            child: DefaultText(
              text: movieModel.title,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: lightRed,
              maxLines: 2,
            ),
          ),
          Flexible(
              child: Padding(
            padding: EdgeInsetsDirectional.only(top: 5, bottom: 5),
            child: DefaultCachedNetworkImage(
              imageURL: "$imageBaseUrl+ ${movieModel.posterPath}",
              fit: BoxFit.cover,
            ),
          ),
          ),
         Row(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Flexible(
                 child: DefaultText(
                   text: movieModel.overview,
                   fontWeight: FontWeight.bold,
                   fontSize: 30,
                   color: Colors.white,
                   maxLines: 3,
                 ),
             ),
           ],
         )
        ],
      ),
    );

  }
}
