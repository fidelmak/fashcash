import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fashcash/data/models/joke_models.dart';

abstract class JokeState extends Equatable {}

class  Initial extends JokeState {
  @override
  List<Object?> get props => [];
}

class IsLoading extends JokeState {
  @override
  List<Object?> get props => [];
}

class IsLoaded extends JokeState {
  final JokesModel jokes;

  IsLoaded(this.jokes);

  @override
  List<Object?> get props => [jokes];
}

class IsError extends JokeState {
  final String errorMessage;

  IsError(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}
