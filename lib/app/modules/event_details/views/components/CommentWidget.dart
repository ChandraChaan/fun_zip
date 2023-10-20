import 'package:comment_tree/comment_tree.dart';
import 'package:flutter/material.dart';

import 'package:fun_zippy/app/theme/text_theme.dart';

import '../../../../widgets/rounded_border.dart';

import 'package:flutter/material.dart';

class Comment {
  final String avatar;
  final String userName;
  final String content;

  Comment({
    required this.avatar,
    required this.userName,
    required this.content,
  });
}

class CommentWidget extends StatefulWidget {
  const CommentWidget({
    Key? key,
  }) : super(key: key);

  @override
  _CommentWidgetState createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  // Define a list to store comments
  final List<Comment> comments = [];

  // Controller for the comment input field
  final TextEditingController commentController = TextEditingController();

  // Function to post a comment
  void postComment() {
    final newCommentText = commentController.text;
    if (newCommentText.isNotEmpty) {
      // Create a new comment and add it to the list
      final newComment = Comment(
        avatar: 'null',
        userName: 'Your Username', // Replace with the actual username
        content: newCommentText,
      );
      setState(() {
        comments.add(newComment);
      });

      // Clear the comment input field
      commentController.clear();
    }
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
                        // Call the postComment function to add a new comment
                        postComment();
                      },
                      child: Text('Post Comment'),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                CommentTreeWidget<List<Comment>, Comment>(
                 comments,comments,
                  treeThemeData: TreeThemeData(
                    lineColor: Colors.white,
                    lineWidth: 3,
                  ),
                  avatarRoot: (context, data) => PreferredSize(
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.grey,
                      // backgroundImage: AssetImage('assets/avatar_2.png'),
                    ),
                    preferredSize: Size.fromRadius(18),
                  ),
                  avatarChild: (context, data) => PreferredSize(
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.grey,
                      // backgroundImage: AssetImage('assets/avatar_1.png'),
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
                                Text('Like'),
                                SizedBox(width: 24),
                                Text('Reply'),
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
                                Text('Like'),
                                SizedBox(width: 24),
                                Text('Reply'),
                              ],
                            ),
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
