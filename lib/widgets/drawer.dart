import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Pages/homepage.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://img.freepik.com/free-photo/car-with-blue-orange-taillight-word-maserati-side_1340-37769.jpg?w=1380&t=st=1683692777~exp=1683693377~hmac=7a3b6f4f8d3b6f66e482ebbcbd5a83de501e56db1d2ede43127d3d4041da48c0";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.deepPurple),
                child: UserAccountsDrawerHeader(
                  accountName: Text("Shivansh Tariyal"),
                  margin: EdgeInsets.zero,
                  accountEmail: Text("shivansh@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,)
              ,title: Text("Home",textScaleFactor:1.5,style: TextStyle(

              color: Colors.white,

            )),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,)
              ,title: Text("Profile",textScaleFactor:1.5,style: TextStyle(

              color: Colors.white,

            )),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,)
              ,title: Text("Email me",textScaleFactor:1.5,style: TextStyle(

              color: Colors.white,

            )),

            )
          ],
        ),
      ),
    );
  }
}
