import 'package:comment_tree/comment_tree.dart';
import 'package:flutter/material.dart';

import 'package:fun_zippy/app/theme/text_theme.dart';

import '../../../../widgets/rounded_border.dart';

import 'package:flutter/material.dart';

class Comment {
  final String avatar;
  final String userName;
  final String content;
  int likes; // Number of likes
  bool isLiked; // Indicates if the comment is liked by the current user
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
  const CommentWidget({
    Key? key,
  }) : super(key: key);

  @override
  _CommentWidgetState createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  final List<Comment> comments = [];
  final TextEditingController commentController = TextEditingController();

  // Function to post a comment
  void postComment() {
    final newCommentText = commentController.text;
    if (newCommentText.isNotEmpty) {
      final newComment = Comment(
        avatar: 'null',
        userName: 'Your Username',
        content: newCommentText,
      );
      setState(() {
        comments.add(newComment);
      });
      commentController.clear();
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
                      child: Text('Post Comment'),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                CommentTreeWidget<List<Comment>, Comment>(
                  comments,
                  comments,
                  treeThemeData: TreeThemeData(
                    lineColor: Colors.white,
                    lineWidth: 3,
                  ),
                  avatarRoot: (context, data) => PreferredSize(
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.grey,
                    ),
                    preferredSize: Size.fromRadius(18),
                  ),
                  avatarChild: (context, data) => PreferredSize(
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.grey,
                    ),
                    preferredSize: Size.fromRadius(12),
                  ),
                  contentChild: (context, data) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data.userName,
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '${data.content}',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        DefaultTextStyle(
                          style: Theme.of(context).textTheme.caption!.copyWith(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold,
                              ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Row(
                              children: [
                                SizedBox(width: 8),
                                TextButton(
                                    onPressed: () {
                                      likeComment(data);
                                    },
                                    child: Text(
                                      'Like',
                                      style: TextStyle(
                                          color: data.isLiked
                                              ? Colors.blue
                                              : Colors.black),
                                    )),
                                SizedBox(width: 24),
                                TextButton(
                                    onPressed: () {
                                      replyToComment(data);
                                    },
                                    child: Text('Reply')),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  contentRoot: (context, data) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'data.userName',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '${'data.content'}',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
