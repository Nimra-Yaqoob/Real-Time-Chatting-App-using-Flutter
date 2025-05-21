import 'package:flutter/material.dart';
import 'package:massenger_app/domain/constants/appcolors.dart';
import 'package:massenger_app/repositery/screens/widgets/uihelper.dart';

class ContactsScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var arrContacts = [
    {
      "img": "user1.png",
      "name": "Warda Tahir",
      "lastseen": "Last seen yesterday",
    },
    {"img": "user2.png", "name": "adil Ahmad", "lastseen": "Online"},
    {
      "img": "user3.png",
      "name": "Esha Abid",
      "lastseen": "Last seen yesterday",
    },
    {"img": "user4.png", "name": "Zoya", "lastseen": "Online"},
    {"img": "user5.png", "name": "Rida Daniyal", "lastseen": "Online"},
    {
      "img": "user6.png",
      "name": "Sana Awan",
      "lastseen": "Last seen yesterday",
    },
  ];
  ContactsScreen({super.key});
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
          text: "Contacts",
          fontSize: 18,
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            UiHelper.CustomTextField(
              contrller: searchController,
              text: "Search",
              textinputtype: TextInputType.name,
              context: context,
              icondata: Icons.search,
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: ListTile(
                      leading: UiHelper.customImage(
                        imgUrl: arrContacts[index]["img"].toString(),
                      ),
                      title: UiHelper.customText(
                        context: context,
                        text: arrContacts[index]["name"].toString(),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      subtitle: UiHelper.customText(
                        context: context,
                        text: arrContacts[index]["lastseen"].toString(),
                        fontSize: 12,
                        color: Color(0XFFADB5BD),
                      ),
                    ),
                  );
                },
                itemCount: arrContacts.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
