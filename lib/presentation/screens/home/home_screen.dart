
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';


import '../../../business_logic/bloc/jokebloc/jokes_bloc.dart';
import '../../../business_logic/bloc/jokebloc/jokes_event.dart';
import '../../../business_logic/bloc/jokebloc/jokes_state.dart';
import '../../utils/app_colors.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_text.dart';
import '../../widgets/app_text_input.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("images/logo2.png"),
                fit: BoxFit.contain,
                height: 24.h,
                width: 24.w,
              ),

              Padding(
                padding: EdgeInsets.only(left: 20.sp),
                child: AppText(
                  title: "Jokes",
                  color: AppColors.primaryColor,
                  size: 24.sp,
                ),
              ),
           ]
          ),


      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                // login text
                BlocConsumer<JokesBloc, JokeState>(
                  listener: (context, state) {
                    if (state is IsLoading) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('loading Jokes ')),
                      );
                    }
                    if (state is IsError) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Failed to load jokes')),
                      );
                    }
                  },
                  builder: (context, state) {
                    if(state is Initial ){
                      return AppText(title: "Get A Joke", size: 56.sp,);
                    }
                    if (state is IsLoading) {
                      return const Center(child: CircularProgressIndicator(color: AppColors.primaryColor,));
                    }
                    if (state is IsLoaded) {
                   return   ListTile(
                          title: AppText(title:"🤔  \n${state.jokes.setup.toString()}",weight: FontWeight.bold, size: 16.sp,),
                          subtitle: AppText(title:"🗣️ \n${state.jokes.delivery.toString()}",size: 12.sp),
                        );

                    }
                    return const Center(
                      child: Text('Something went wrong'),
                    );
                  },
                ),

                SizedBox(height: 36.h),

                AppButton(title: 'Fetch Transactions', onPressed: () {
                  context.read<JokesBloc>().add(GetJoke());
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
