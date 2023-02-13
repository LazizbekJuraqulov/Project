import 'package:finish/bloc/bloc/index_stack_bloc.dart';
import 'package:finish/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
   runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context)=> IndexStackBloc()..add(AfterPageEvent(0)))
    
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xffffffff)),
        scaffoldBackgroundColor: Color(0xffE5E5E5)),
      initialRoute: "spleshscreen",
    onGenerateRoute: (settings) => RoutesPage.getRoters(settings),
    );
  }
}

