import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/following.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
          centerTitle: true,
        ),
        body: Consumer<Following>(
          builder: (context, value, child) {
            return ListView.builder(
                itemCount: value.followingList.length + 1,
                itemBuilder: (context, index) {
              if(index == 0){
                return const Padding(padding: EdgeInsets.all(40.0), child: Text('You are following these persons:'),);
              } else{
                return Center(child: Text(value.followingList[index - 1]),);
              }
            });
          },
        ));
  }
}
