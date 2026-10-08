import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fashcash/data/models/job_models.dart';
import 'package:fashcash/data/repository/job_repository.dart';

part 'jobbloc_event.dart';
part 'jobbloc_state.dart';

class JobBloc extends Bloc<JobblocEvent, JobblocState> {
  final JobRepository repository;

  JobBloc({required this.repository}) : super(JobblocInitial()) {
    on<GetJobs>((event, emit) async {
      emit(JobLoading());

      try {
        final localJob = await repository.getLocalJobs();


        if (localJob.isNotEmpty) {
          // Use cached jobs
          emit(JobLoaded(jobs: localJob));
          // Then refresh from API
          final freshJobs = await repository.getJobs();

          // Update UI with fresh data
          emit(JobLoaded(jobs: freshJobs));
        } else {
        //  No cached jobs, fetch from API
          final jobs = await repository.getJobs();

          emit(JobLoaded(jobs: jobs));
        }
      } catch (e) {
        //emit(JobError(errorMessage: e.toString()));
      }
    });
  }
}