import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import './message_bubble.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('chat')
          .orderBy('createdAt', descending: true)
          .snapshots(),
      builder: (ctx, AsyncSnapshot<QuerySnapshot> chatSnapshot) {
        if (chatSnapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        final documents = chatSnapshot.data.docs;
        return ListView.builder(
          reverse: true,
          itemCount: documents.length,
          itemBuilder: (context, index) => Container(
            padding: EdgeInsets.all(8),
            child: MessageBubble(
              documents[index]['text'],
              documents[index]['username'],
              documents[index]['userImage'],
              documents[index]['userId'] ==
                  FirebaseAuth.instance.currentUser.uid,
              key: ValueKey(documents[index].id),
            ),
          ),
        );
      },
    );
  }
}
