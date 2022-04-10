import 'package:flutter/material.dart';
import 'package:new_message_app/widgets/category_selector.dart';
import 'package:new_message_app/widgets/favorite_contacts.dart';
import 'package:new_message_app/widgets/recent_chats.dart';

import 'model/message_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon:const Icon(
            Icons.menu,
          ),
          onPressed: (){},
        ),
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const[
           Text("Chatting App",
              style: TextStyle(
              fontSize: 19.0,
              fontWeight: FontWeight.bold
            ),  ),
          ],
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon:const Icon(
              Icons.search,
            ),
            onPressed: (){},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
        const  CategorySelector(),
          Expanded(
            child: Container(
              decoration:const BoxDecoration(
                color: Color(0xFFFDF8E9),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)
                ),
              ),
              child: Column(
                children:  <Widget>[
                     FavoriteContacts(),
                     RecentChats(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
