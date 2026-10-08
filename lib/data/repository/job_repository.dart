import 'package:fashcash/data/models/job_models.dart';

import '../dataproviders/job_providers.dart';

class JobRepository {
  final JobProviders provider ;
  JobRepository({required this.provider});

  Future<JobModels> getJobs() async{
    final jobs = await provider.getJobs();
    return JobModels.fromJson(jobs);

  }


}