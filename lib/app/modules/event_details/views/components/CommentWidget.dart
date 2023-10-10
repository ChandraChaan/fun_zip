import 'package:comment_tree/comment_tree.dart';
import 'package:flutter/material.dart';

import 'package:fun_zippy/app/theme/text_theme.dart';

import '../../../../widgets/rounded_border.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      shape: roundedBorder(radius: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Comment', style: titleBoldText),
          ),
          Container(
            child: CommentTreeWidget<Comment, Comment>(
              Comment(
                  avatar: 'null',
                  userName: 'null',
                  content: 'felangel made felangel/cubit_and_beyond public '),
              [
                Comment(
                    avatar: 'null',
                    userName: 'null',
                    content: 'A Dart template generator which helps teams'),
                Comment(
                    avatar: 'null',
                    userName: 'null',
                    content:
                        'A Dart template generator which helps teams generator which helps teams generator which helps teams'),
                Comment(
                    avatar: 'null',
                    userName: 'null',
                    content: 'A Dart template generator which helps teams'),
                Comment(
                    avatar: 'null',
                    userName: 'null',
                    content:
                        'A Dart template generator which helps teams generator which helps teams '),
              ],
              treeThemeData:
                  TreeThemeData(lineColor: Colors.white, lineWidth: 3),
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
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'dangngocduc',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '${data.content}',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.copyWith(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    DefaultTextStyle(
                      style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.grey[700], fontWeight: FontWeight.bold),
                      child: Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            Text('Like'),
                            SizedBox(
                              width: 24,
                            ),
                            Text('Reply'),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
              contentRoot: (context, data) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'dangngocduc',
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '${data.content}',
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    DefaultTextStyle(
                      style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.grey[700], fontWeight: FontWeight.bold),
                      child: Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            Text('Like'),
                            SizedBox(
                              width: 24,
                            ),
                            Text('Reply'),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          ),
        ],
      ),
    );
  }
}
