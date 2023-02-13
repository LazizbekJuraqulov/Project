import 'package:finish/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffE5E5E5),
        elevation: 0,
        toolbarHeight: MediaQuery.of(context).size.height*0.15,
        title: ListTile(
          title: Text("Dilorom Alieva",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: Color(0xff000000)),),
          subtitle: Text("john.doe@gmail.com",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Color(0xff818C99)),),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height*0.39,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          children: [
            ListTile(
              leading:SvgPicture.asset("assets/regaktor.svg"),
              title: Text("Личные данные",style:profilText,),
              trailing:SvgPicture.asset("assets/icon.svg") ,
            ),
            Divider(),
              ListTile(
              leading:SvgPicture.asset("assets/wall.svg"),
              title: Text("Платежные карты",style:profilText,),
              trailing:SvgPicture.asset("assets/icon.svg") ,
            ),
             Divider(),
              ListTile(
              leading:SvgPicture.asset("assets/contact.svg"),
              title: Text("Пассажиры",style:profilText,),
              trailing:SvgPicture.asset("assets/icon.svg") ,
            ),
             Divider(),
              ListTile(
              leading:SvgPicture.asset("assets/setting.svg"),
              title: Text("Настройки",style:profilText,),
              trailing:SvgPicture.asset("assets/icon.svg") ,
            ),
          ],
        ),
      ),
    );
  }
}