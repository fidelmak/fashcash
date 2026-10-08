import 'package:fashcash/business_logic/bloc/jobbloc/jobbloc_bloc.dart';
import 'package:fashcash/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/app_colors.dart';

class JobHome extends StatefulWidget {
  const JobHome({super.key});

  @override
  State<JobHome> createState() => _JobHomeState();
}

class _JobHomeState extends State<JobHome> {
  @override
  void initState() {
    super.initState();
    context.read<JobBloc>().add(GetJobs());

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: AppText(title: "Job Boards", size: 24.sp),
      ),
      body: BlocConsumer<JobBloc, JobblocState>(
        listener: (context, state) {
          if (state is JobLoading) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(const SnackBar(content: Text('loading Jobes')));
          }
          if (state is JobError) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Failed to load Jobs')),
            );
          }
        },
        builder: (context, state) {
          if (state is JobLoading) {
            return CircularProgressIndicator();
          }
          if (state is JobLoaded) {
            return ListView.builder(
              itemCount: state.jobs.length ?? 0,
              itemBuilder: (context, index) {
                return buildJobCard(state, index);


              },
            );
          }
          return const Center(child: Text('Something went wrong'));
        },
      ),
    );
  }

  Container buildJobCard(JobLoaded state, int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.08),
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: AppColors.primaryColor.withOpacity(0.25)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            title: state.jobs[index].title.toString(),
            weight: FontWeight.bold,
            size: 16.sp,
          ),

          SizedBox(height: 10.h),

          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 18.sp,
                color: AppColors.primaryColor,
              ),
              SizedBox(width: 5.w),
              Expanded(
                child: AppText(
                  title:
                      state.jobs[index].location?.toString() ??
                      "Location not provided",
                  size: 12.sp,
                ),
              ),
            ],
          ),

          SizedBox(height: 6.h),

          Row(
            children: [
              Icon(Icons.work_outline, size: 18.sp, color: AppColors.primaryColor),
              SizedBox(width: 5.w),
              AppText(
                title: state.jobs[index].remote== true
                    ? "Remote"
                    : "On-site",
                size: 12.sp,
              ),
            ],
          ),

          SizedBox(height: 6.h),

          Row(
            children: [
              Icon(Icons.payments_outlined, size: 18.sp, color: AppColors.primaryColor),
              SizedBox(width: 5.w),
              AppText(
                title:
                    state.jobs[index].salary?.toString() ??
                    "Salary not provided",
                size: 12.sp,
              ),

              const Spacer(),

              IconButton(
                onPressed: () async {
                  final url = state.jobs[index].applyUrl;

                  if (url != null && url.isNotEmpty) {
                    final uri = Uri.parse(url);

                    if (await canLaunchUrl(uri)) {
                      await launchUrl(
                        uri,
                        mode: LaunchMode.externalApplication,
                      );
                    }
                  }
                },
                icon: const Icon(
                  Icons.send_outlined,
                ),
                tooltip: "Apply",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
