import 'package:finish/constant/constant.dart';
import 'package:finish/widget/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int index = 0;
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        toolbarHeight: 0,
        bottom: TabBar(
            padding: EdgeInsets.only(left: 8, right: 8),
            labelPadding: EdgeInsets.only(left: 0, right: 0),
            labelStyle: TextStyle(color: Color(0xff969696)),
            labelColor: Color(0xff0FB8D3),
            unselectedLabelStyle: TextStyle(fontSize: 13),
            unselectedLabelColor: Color(0xff969696),
            indicatorSize: TabBarIndicatorSize.label,
            controller: _tabController,
            tabs: [
              Tab(
                icon: SvgPicture.asset("assets/sam.svg"),
                text: "Полёт",
              ),
              Tab(
                icon: SvgPicture.asset("assets/otdel.svg"),
                text: "Отель",
              ),
              Tab(
                icon: SvgPicture.asset("assets/explore.svg"),
                text: "Туры",
              ),
              Tab(
                icon: SvgPicture.asset("assets/car.svg"),
                text: "Автопрокат",
              ),
            ]),
      ),
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
            padding: EdgeInsets.only(left: 8, right: 8),
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: SvgPicture.asset("assets/otkuda.svg"),
                  title: const Text(
                    "Откуда",
                    style: textStyle
                  ),
                  trailing: SvgPicture.asset("assets/strelka.svg"),
                ),
                Divider(),
                ListTile(
                  leading: SvgPicture.asset("assets/kuda.svg"),
                  title: const Text(
                    "Куда",
                    style:textStyle 
                    
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: Container(
                height: 32,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 8),
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                padding: EdgeInsets.only(left: 8),
                  margin: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffffffff),
                  ),
                  child: SizedBox(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset("assets/svg.svg"),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              left: 8, top: 6, right: 12, bottom: 8),
                          child: Text("Выберите дату",style: TextStyle(color: Color(0xff969696),fontSize: 13),),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        )),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 24),
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 14, bottom: 14),
            decoration: BoxDecoration(
                color: Color(0xff0FB8D3),
                borderRadius: BorderRadius.circular(8)),
            child: const Text(
              "Найти билеты",
              style: TextStyle(color: Color(0xffffffff), fontSize: 15,fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 16, bottom: 12),
            child: Text(
              "Популярные направления",
              style: subTextStyle
            ),
          ),
        ),
        CountriesWidget(),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 16, bottom: 12, top: 24),
            child: Text(
              "Новые предложение",
              style:subTextStyle
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 76,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 8),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 77,
                    height: 76,
                    
                    margin: EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                        color: Color(0xffD3423E),
                        borderRadius: BorderRadius.circular(6)),
                    child: Stack(children: [
                      Positioned(
                          left: 25,
                          top: 10,
                          child: Container(
                              width: 45,
                              height: 41,
                              decoration: const BoxDecoration(
                                image:  DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/stack.png")),
                              ))),
                    const  Positioned(
                          top: 50,
                          left: 7,
                          child:  SizedBox(
                              width: 60,
                              height: 22,
                              child:  Text(
                                "Возврат авиабилета",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xffffffff)),
                              )))
                    ]),
                  );
                }),
          ),
        )
      ]),
    );
  }
}


