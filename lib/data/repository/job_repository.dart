import 'package:fashcash/data/models/job_models.dart';

import '../dataproviders/job_providers.dart';
import '../dataproviders/local_job_provider.dart';

class JobRepository {
  final JobProviders provider ;
  final LocalJobProvider localProvider;
  JobRepository({required this.provider, required this.localProvider});


  Future<List<Jobs>> getLocalJobs() async {
    final job = localProvider.getJobs();
    return job;
  }

  Future<List<Jobs>> getJobs() async{
    final jobs = await provider.getJobs();
    final data = (jobs['jobs'] as List)
        .map((job) => Jobs.fromJson(job))
        .toList();


    await localProvider.savedJobs(data);
    return data;

  }
  Future<Map<String, dynamic>> refreshJobs() async{
    final jobs = await provider.getJobs();

    await localProvider.savedJobs(jobs as List<Jobs> );
    return jobs;

  }


}