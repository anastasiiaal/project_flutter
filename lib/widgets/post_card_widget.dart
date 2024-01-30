import 'package:flutter/material.dart';

import '../model/post.dart';

class PostCardWidget extends StatelessWidget {

  final Post post;
  final double width;

  const PostCardWidget({super.key, required this.post, required this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Card(
        elevation: 6,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: CircleAvatar(
                      foregroundImage: NetworkImage(post.profilePicturePath),
                      radius: 30,
                    ),
                  ),
                  Text(
                    post.author,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  Text(
                    post.createdAt,
                    style: const TextStyle(
                        fontWeight: FontWeight.w200, fontSize: 10),
                  )
                ],
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    post.imagePath,
                    height: 300,
                    width: width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text(
                  post.description,
                  textAlign: TextAlign.justify,
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 6),
                      child: Icon(Icons.favorite, color: Colors.red),
                    ),
                    Text(post.likeToString()),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(right: 6),
                      child: Icon(Icons.comment),
                    ),
                    Text(post.commentsToString()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}