import 'package:finish/bloc/bloc/index_stack_bloc.dart';
import 'package:finish/pages/home_page.dart';
import 'package:finish/pages/user_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IndexStack extends StatefulWidget {
  const IndexStack({super.key});

  @override
  State<IndexStack> createState() => _IndexStackState();
}

class _IndexStackState extends State<IndexStack> {
  @override
  Widget build(BuildContext context) {
    final blocnav = context.read<IndexStackBloc>();
    return BlocBuilder<IndexStackBloc, IndexStackState>(builder: ((context, state) {
      if (state is IndexState) {
        return Scaffold(
          body: IndexedStack(
            index: state.activeIndex,
            children: const[
              HomePage(),
              SizedBox(),
              SizedBox(),
              UsersPage()
              ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            fixedColor: Color(0xff0FB8D3),
            unselectedItemColor: Color(0xff9AA6AC),
            showUnselectedLabels: true,
            selectedLabelStyle: TextStyle(fontSize: 10),
            unselectedFontSize: 10,
            currentIndex: state.activeIndex,
            onTap: (v) {
              blocnav.add(AfterPageEvent(v,));
            },
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/noactiv.svg"),
                  label: "Поиск",
                  activeIcon: SvgPicture.asset("assets/search.svg")

              ),
               BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/global.svg"),
                  label: "Интересное",
                  activeIcon: SvgPicture.asset("assets/activglobal.svg")
              ),
                  BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/coupon.svg"),
                  label: "Бронирования",
                  activeIcon: SvgPicture.asset("assets/couponactiv.svg")
              ),
               BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/user.svg"),
                  label: "Профиль",
                  activeIcon: SvgPicture.asset("assets/useractiv.svg")
              ),
            ],
          ),
        );
      } else {
        return const CircularProgressIndicator();
      }
    }));
  }
}