import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gopet/core/app.routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // MultiBlocProvider(
        //     providers: [
        //       // BlocProvider<AuthCubit>(
        //       //   create: (context) => AuthCubit(),
        //       // ),
        //     ],
        //     key: UniqueKey(),
        //     child:
        MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                // primaryColor: AppColors.main,
                backgroundColor: Colors.white,
                textTheme:
                    GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
            title: "Snacks App",
            initialRoute: AppRoutes.signup,
            routes: AppRoutes.allRoutes);
  }
}
