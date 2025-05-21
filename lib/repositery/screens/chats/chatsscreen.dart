import 'package:flutter/material.dart';
import 'package:massenger_app/domain/constants/appcolors.dart';
import 'package:massenger_app/repositery/screens/widgets/uihelper.dart';

class ChatsScreen extends StatelessWidget {
  TextEditingController searchController=TextEditingController();
  var arrchat = [
    {
      "img": "user1.png",
      "name": "Warda Tahir",
      "msg": "Good morning, did you sleep well?",
      "date":"Today",
      "msgcount":"1",
    },
    {"img": "user2.png", "name": "adil Ahmad", "msg": "How is it going?","date":"17/6",
      "msgcount":"0",},
    {"img": "user3.png", "name": "Esha Abid", "msg": "Alright,noted","date":"5/21",
      "msgcount":"1",},
  ];

  ChatsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).brightness == Brightness.dark
                ? AppColors.scaffolddark
                : AppColors.scaffoldlight,
        title: UiHelper.customText(
          context: context,
          text: "Chats",
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: "bold",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.mark_as_unread_outlined),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded)),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 25),
              UiHelper.customImage(imgUrl: "story1.png"),
              SizedBox(width: 30),
              UiHelper.customImage(imgUrl: "story.png"),
              SizedBox(width: 30),
              UiHelper.customImage(imgUrl: "sss.png"),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              SizedBox(width: 25),
              UiHelper.customText(
                context: context,
                text: "Your Story",
                fontSize: 12,
                fontFamily: "bold",
                fontWeight: FontWeight.bold,
              ),
              SizedBox(width: 20),
              UiHelper.customText(
                context: context,
                text: "Maryam...",
                fontSize: 12,
                fontFamily: "bold",
                fontWeight: FontWeight.bold,
              ),
              SizedBox(width: 15),
              UiHelper.customText(
                context: context,
                text: "Saleem...",
                fontSize: 12,
                fontFamily: "bold",
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          Divider(color: Color(0XFFADB5BD)),
          SizedBox(height: 30,),

          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: UiHelper.customImage(
                      imgUrl: arrchat[index]["img"].toString(),
                    ),
                    title: UiHelper.customText(
                      context: context,
                      text: arrchat[index]["msg"].toString(),
                      fontSize: 14,color: Color(0XFFADB5BD),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UiHelper.customText(context: context, text: arrchat[index]["date"].toString(), fontSize: 10,color: Color(0XFFA4A4A4)),
                       SizedBox(height: 5,),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Color(0XFFD2D5F9),
                          child: UiHelper.customText(context: context, text: arrchat[index]["msgcount"].toString(), fontSize: 10),
                        )
                      ],
                    ),
                  ),
                );
              },itemCount: arrchat.length ,
            ),
          ),
        ],
      ),
    );
  }
}
