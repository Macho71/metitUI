import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ui/model/news_model.dart';
import 'package:ui/service/news_service.dart';
part 'home_cubit.dart';

abstract class HomeState extends Equatable {
  HomeState();
  @override
  List<Object?> get props => [];
}

class HomeInitialState extends HomeState {
  HomeInitialState();
  @override
  List<Object?> get props => [];
}

class HomeLoadingState extends HomeState {
  HomeLoadingState();
  @override
  List<Object?> get props => [];
}

class HomeCompleteState extends HomeState {
  final NewsModel news;
  HomeCompleteState(this.news);
  @override
  List<Object?> get props => [];
}

class HomeErrorState extends HomeState {
  final String error;
  HomeErrorState(this.error);
  @override
  List<Object?> get props => [];
}
