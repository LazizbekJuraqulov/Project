import 'package:flutter/material.dart';

class CountriesWidget extends StatelessWidget {
  const CountriesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.27,
        child: ListView.builder(
            itemCount: 7,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(left: 4),
                margin: EdgeInsets.only(left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image:const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/rasm.png"))),
                    ),
                  const  Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 2),
                      child: Text(
                        "Санк Петербург",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff303030),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                   const Text(
                      "от 1 850 000 uzs",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff64686B),
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
