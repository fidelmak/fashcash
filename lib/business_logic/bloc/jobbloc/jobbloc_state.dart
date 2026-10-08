part of 'jobbloc_bloc.dart';

sealed class JobblocState extends Equatable {
  const JobblocState();
}

final class JobblocInitial extends JobblocState {
  @override
  List<Object> get props => [];
}

final class JobLoading extends JobblocState {
  @override
  List<Object> get props => [];
}
final class JobLoaded extends JobblocState {
  final List<Jobs> jobs;

  const JobLoaded({ required this.jobs});
  @override
  List<Object> get props => [jobs];
}

final class JobError extends JobblocState {
  final String errorMessage;

  const JobError({required this.errorMessage});
  @override
  List<Object> get props => [errorMessage];
}