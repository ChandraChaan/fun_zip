import 'package:comment_tree/comment_tree.dart';
import 'package:flutter/material.dart';

import 'package:fun_zippy/app/theme/text_theme.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/get_instance.dart';

import '../../../../data/repository/event_repository.dart';
import '../../../../widgets/error_snackbar.dart';
import '../../../../widgets/rounded_border.dart';

import 'package:flutter/material.dart';

import '../../controllers/event_details_controller.dart';

class Comment {
  final String avatar;
  final String userName;
  final String content;
  int likes;
  bool isLiked;
  List<Comment> replies;

  Comment({
    required this.avatar,
    required this.userName,
    required this.content,
    int likes = 0, // Initialize with 0 likes
    bool isLiked = false, // Initialize as not liked
    List<Comment>? replies, // Provide an optional list of replies
  })  : likes = likes,
        isLiked = isLiked,
        replies = replies ?? [];
}

class CommentWidget extends StatefulWidget {
  final EventDetailsController controller;

  const CommentWidget({super.key, required this.controller});

  @override
  _CommentWidgetState createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  List<dynamic> comments = [];
  final TextEditingController commentController = TextEditingController();

  // Function to post a comment
  void postComment() {
    final newCommentText = commentController.text;
    if (newCommentText.trim().isNotEmpty) {
      setState(() {
        // comments.add(
        //   {
        //     "id": "65531224e09cb954688af597",
        //     "uid": "8HLamy76A6u",
        //     "name": "Funzippy Demo",
        //     "nickname": "Funzippy Demo",
        //     "createdBy": "64dda4122517c306d1b2b7f4",
        //     "postText": "Test comment ",
        //     "createdDate": "2023-11-14T06:22:28.879+00:00"
        //   },
        // );
      });
      postComments();
    } else {
      Get.defaultDialog(
          title: 'Enter Text',
          middleText: 'Please do enter text',
          /*confirm: (v) {
            Get.back();
          },*/);
    }
  }

  // Function to like a comment
  void likeComment(Comment comment) {
    setState(() {
      // Implement your logic to handle likes here
      comment.isLiked = !comment.isLiked;
      if (comment.isLiked) {
        comment.likes++;
      } else {
        comment.likes--;
      }
    });
  }

  // Function to reply to a comment
  void replyToComment(Comment parentComment) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            title: Text('Reply to ${parentComment.userName}'),
            content: TextField(
              controller: commentController,
              decoration: InputDecoration(
                hintText: 'Add a reply...',
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text('Post Reply'),
                onPressed: () {
                  final replyText = commentController.text;
                  if (replyText.isNotEmpty) {
                    final reply = Comment(
                      avatar: 'null',
                      userName: 'Your Username',
                      content: replyText,
                    );
                    setState(() {
                      parentComment.replies.add(reply);
                    });
                    commentController.clear();
                    Navigator.of(context).pop();
                  }
                },
              ),
            ],
          );
        });
      },
    );
  }

  Future<void> postComments() async {
    try {
      var response = await EventRepository().postComments(data: {
        "eventId": "${widget.controller.eventDetailsModel.id}",
        "postText": "${commentController.text}"
      });
      print(response.toString());
      commentController.clear();
      getComments();
    } catch (e) {
      errorSnackbar(title: '$e', desc: '');
    }
  }



  Future<void> getComments() async {
    try {
      var response = await EventRepository().getComments(data: {
        "eventId": "${widget.controller.eventDetailsModel.id}",
        "pageNo": 1,
        "resultsPerPage": 10
      });
      print(response.toString());
      setState(() {
        comments.addAll(response['results']);
      });
    } catch (e) {
      errorSnackbar(title: '$e', desc: '');
    }
  }

  @override
  void initState() {
    getComments();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Text('Comment', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: commentController,
                        decoration: InputDecoration(
                          hintText: 'Add a comment...',
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        postComment();
                      },
                      child: Text('Post'),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                for (int a = 0; a < comments.length; a++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // color: Colors.grey,
                      width: double.infinity,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            comments[a]['name'] ?? "",
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            comments[a]['postText'] ?? "",
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
