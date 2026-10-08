import 'dart:convert';

import 'package:fashcash/data/models/job_models.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalJobProvider {
  final SharedPreferences preference;

  LocalJobProvider({required this.preference});

  Future<void> savedJobs(List<Jobs> jobs) async {
    final jobsJson = jobs.map((job) => job.toJson()).toList();

    await preference.setString(
      "cached_jobs",
      jsonEncode(jobsJson),
    );
  }

  List<Jobs> getJobs() {
    final jobJson = preference.getString("cached_jobs");

    if (jobJson == null) {
      return [];
    }

    final List<dynamic> decodedJobs = jsonDecode(jobJson);

    return decodedJobs
        .map((job) => Jobs.fromJson(job))
        .toList();
  }

  Future<void> clearJobs() async {
    await preference.remove("cached_jobs");
  }
}