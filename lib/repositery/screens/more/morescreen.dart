import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:massenger_app/domain/constants/appcolors.dart';
import 'package:massenger_app/repositery/screens/widgets/uihelper.dart';
class MoreScreen extends StatelessWidget {
var arrMore=[
  {
    "icon":Icons.person,
    "txt":"Account",
  },
  {
    "icon":CupertinoIcons.chat_bubble_fill,
    "txt":"Chats"
  },
   {
    "icon":Icons.notifications_active,
    "txt":"Notification",
  },
  {
    "icon":Icons.privacy_tip,
    "txt":"Privacy"
  },
   {
    "icon":Icons.help,
    "txt":"Help",
  },
  {
    "icon":Icons.mail,
    "txt":"Invite Your Friends"
  }
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).brightness == Brightness.dark
          ?AppColors.scaffolddark
          :AppColors.scaffoldlight,
          title: UiHelper.customText(context: context, text: "More", fontSize: 18,fontWeight: FontWeight.bold,fontFamily: "bold"),
        ),
        body: Column(children: [
          ListTile(
            leading: Theme.of(context).brightness== Brightness.dark
            ?UiHelper.customImage(imgUrl: "darkprofile.png"):UiHelper.customImage(imgUrl: "lightprofile.png"),
            title: UiHelper.customText(context: context, text: 
            "Aliyar Khan", fontSize: 14,fontFamily:"bold",
            fontWeight:FontWeight.bold),
            subtitle: UiHelper.customText(context: context, 
            text: "+92 123 - 4567 - 890", fontSize: 12),
            trailing: IconButton(onPressed: (){}, 
            icon: Icon(CupertinoIcons.forward)),
          )    ,
          SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return ListTile(
                leading: Icon(arrMore[index]["icon"] as IconData,color: Theme.of(context).brightness==Brightness.dark?
                AppColors.icondarkmode:AppColors.iconlight,),
                title: UiHelper.customText(context: context, text: arrMore[index]["txt"].toString(),
                fontSize: 14),
                trailing:Icon(CupertinoIcons.forward) ,
              );
            },itemCount: arrMore.length ,
            ),
          )
        ],),
      
      );
    
  }
}