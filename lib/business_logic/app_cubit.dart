import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:teest_apiiii/data/remote/requests/movies.dart';
import 'package:teest_apiiii/data/remote/ressponses/movies.dart';

import '../presentaion/screens/movies/movies_screen.dart';
import '../presentaion/views/movies_list_item_screen.dart';
import '../presentaion/screens/persons/persons_screen.dart';
import '../presentaion/screens/tv_shows/tvshows_screen.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);

 List botoomnavigationbar =[

   BottomNavigationBarItem(
       icon: Icon(Icons.account_circle_outlined),
     label:"dddd",
   ),
   BottomNavigationBarItem(
       icon: Icon(Icons.star),
     label:"dddd",
   ),
 ];
  int currentIndex = 0;
  List<Widget> screens = [
    MoviesScreen(),
    TVShowsScreen(),
    PersonsScreen(),
  ];

  List<String> appBarTitles = [
    'Contacts',
    'Favourites',
    'persons',
  ];

void changeIndex(int index){
  currentIndex =index;
  emit(AppChangeBottomNavigationBar());
}
//
MoviesResponse moviesResponse =MoviesResponse();


void getmovies(){
  emit(AppMoviesLoadingState());
  MoviesRequest().moviesRequest(apiKey: "99f477426be5ef63f794517a44223975").then((value) {
   moviesResponse =value;
   emit(AppMoviesSuccessState());
  }).catchError((error) {
    emit(AppMoviesErrorState());
  });
 }

}
