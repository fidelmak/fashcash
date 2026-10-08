import 'dart:convert';

import 'package:http/http.dart' as http;

class JobProviders {
  final http.Client client;
  final String _baseUrl = "https://artificialintelligencejobs.co/api/jobs";

  JobProviders({required this.client});
  Future<Map<String, dynamic>> getJobs () async {
    final response = await client.get(Uri.parse(_baseUrl));

    if ( response.statusCode == 200 ){
      return jsonDecode(response.body) as Map<String, dynamic>;
    }else{
      throw Exception('Failed to fetch jobs: ${response.statusCode}',);
    }

  }
}