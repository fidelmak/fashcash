import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import '../business_logic/bloc/jobbloc/jobbloc_bloc.dart';
import '../business_logic/bloc/jokebloc/jokes_bloc.dart';
import '../data/dataproviders/job_providers.dart';
import '../data/dataproviders/joke_providers.dart';
import '../data/repository/job_repository.dart';
import '../data/repository/joke_repository.dart';

class AppDependencies extends StatelessWidget {
  final Widget child;

 const AppDependencies({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (_) => JokeRepository(
            provider: JokeProviders(
              client: http.Client(),
            ),
          ),
        ),
        RepositoryProvider(
          create: (_) => JobRepository(
            provider: JobProviders(
              client: http.Client(),
            ),
          ),
        ),

        // Add more repositories here
        // RepositoryProvider(
        //   create: (_) => UserRepository(),
        // ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => JokesBloc(
              repository: context.read<JokeRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => JobBloc(
              repository: context.read<JobRepository>(),
            ),
          ),

          // Add more blocs here
          // BlocProvider(
          //   create: (context) => UserBloc(
          //     repository: context.read<UserRepository>(),
          //   ),
          // ),
        ],
        child: child,
      ),
    );
  }
}