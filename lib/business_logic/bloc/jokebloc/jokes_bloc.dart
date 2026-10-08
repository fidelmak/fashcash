import 'package:bloc/bloc.dart';

import '../../../data/repository/joke_repository.dart';
import 'jokes_event.dart';
import 'jokes_state.dart';

class JokesBloc extends Bloc<JokesEvent, JokeState>  {
  final JokeRepository repository;
  JokesBloc({required this. repository}) : super(Initial()) {
    on<GetJoke>((event, emit) async {
      emit(IsLoading());
     try{
       final joke = await repository.getJoke();
       emit(IsLoaded(joke));
     }catch(e){
       emit(IsError(e.toString()));
     }

    });
  }
}
