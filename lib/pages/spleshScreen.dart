import 'dart:async';

import 'package:finish/bloc/bloc/index_stack_bloc.dart';
import 'package:finish/pages/home_page.dart';
import 'package:finish/pages/indexStack.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
    void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => BlocProvider(create: (context)=> IndexStackBloc()..add(AfterPageEvent(0)),child: IndexStack(),))));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0FB8D3),
      body: Center(child: SvgPicture.asset("assets/splesh.svg"),),
    );
  }
}