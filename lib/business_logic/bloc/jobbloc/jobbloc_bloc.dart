import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fashcash/data/models/job_models.dart';
import 'package:fashcash/data/repository/job_repository.dart';

part 'jobbloc_event.dart';
part 'jobbloc_state.dart';

class JobBloc extends Bloc<JobblocEvent, JobblocState> {
  final JobRepository repository ;
  JobBloc({required this.repository}) : super(JobblocInitial()) {
    on<GetJobs>((event, emit) async {
      emit(JobLoading());
      try{
        final jobs = await repository.getJobs();
        emit(JobLoaded(jobs: jobs));
      }catch(e) {
        emit(JobError(errorMessage: e.toString()));
      }
      }
    );


  }
}
