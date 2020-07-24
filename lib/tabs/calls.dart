import 'package:flutter/material.dart';
import 'package:dummy/models/ChatList.dart';

class calls extends StatelessWidget {
  final List<ChatListItem> chatList = [
    ChatListItem(
        profileURL: "https://scontent.fdel25-1.fna.fbcdn.net/v/t1.0-9/83971391_2602636669968149_1092552986187530240_o.jpg?_nc_cat=107&_nc_sid=09cbfe&_nc_ohc=kd6rLSxwMooAX-8CaQL&_nc_ht=scontent.fdel25-1.fna&oh=749fe01e39389c49fc999d710c2c6506&oe=5F41779D",
        userName: "Kiran",
        date: "9:10 am",
        lastMessage: "🥱"
    ),
    ChatListItem(
        profileURL: "https://d3vlf99qeg6bpx.cloudfront.net/content/uploads/2020/04/27162549/Mesut-Ozil-Arsenal1.jpg",
        userName: "Ayush",
        date: "Yesterday",
        lastMessage: ":D"
    ),
    ChatListItem(
        profileURL: "https://scontent.fdel25-1.fna.fbcdn.net/v/t1.0-9/21462368_1759424694088714_6407092595360707053_n.jpg?_nc_cat=107&_nc_sid=09cbfe&_nc_ohc=Cv64MrTMEZQAX9957KQ&_nc_ht=scontent.fdel25-1.fna&oh=ee17cec0bb7f4b35a34891264d9b35c8&oe=5F41731E",
        userName: "Farmaan",
        date: "Yesterday",
        lastMessage: "....:O...."
    ),
    ChatListItem(
        profileURL: "https://d3nfwcxd527z59.cloudfront.net/content/uploads/2019/10/07095147/Lionel-Messi.jpg",
        userName: "Abhinand",
        date: "27/07/2020",
        lastMessage: "BARCA"
    ),
    ChatListItem(
        profileURL: "https://cdn.dribbble.com/users/1653967/screenshots/10446838/1.jpg",
        userName: "Preetham",
        date: "20/07/2020",
        lastMessage: "Kratos-Gaming💥"
    ),
    ChatListItem(
        profileURL: "https://images.unsplash.com/photo-1514483127413-f72f273478c3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
        userName: "Manish",
        date: "18/07/2020",
        lastMessage: ""
    ),


  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: chatList.length,
      separatorBuilder: (ctx,i){
        return Divider();
      },
      itemBuilder: (ctx,i){
        return ListTile(
          title: Text(chatList[i].userName),
          subtitle: Text(chatList[i].lastMessage),
          trailing: IconButton(
            icon: Icon(i%3!=0?Icons.call:Icons.videocam),
          ),
          leading: CircleAvatar(
            //to be continued and image should be URL!!!
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(chatList[i].profileURL),

          ),
          onTap: (){},
        );
      },
    );
  }
}
