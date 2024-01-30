import 'package:flutter/cupertino.dart';
import 'package:new_test_project/widgets/post_card_widget.dart';

import '../model/post.dart';

class PostSectionWidget extends StatefulWidget {
  final Size size;

  const PostSectionWidget({super.key, required this.size});

  @override
  State<PostSectionWidget> createState() => _PostSectionWidgetState();
}

class _PostSectionWidgetState extends State<PostSectionWidget> {
  List<Widget> postToAdd = [];

  final List<Post> postList = [
    Post(
        profilePicturePath:
        "https://www.perfocal.com/blog/content/images/2021/01/Perfocal_17-11-2019_TYWFAQ_100_standard-3.jpg",
        author: ("Amanda"),
        createdAt: "Il y a 10 minutes",
        imagePath:
        "https://images.unsplash.com/photo-1603979649806-5299879db16b?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bW91bnRhaW4lMjBsYWtlfGVufDB8fDB8fHww",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet...",
        likes: 120,
        comments: 14),
    Post(
        profilePicturePath:
        "https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.webp?b=1&s=170667a&w=0&k=20&c=YQ_j83pg9fB-HWOd1Qur3_kBmG_ot_hZty8pvoFkr6A=",
        author: "Kathy",
        createdAt: "Il y a 8 heures",
        imagePath:
        "https://www.sykescottages.co.uk/blog/wp-content/uploads/2023/03/lake-district-mountains-panorama.jpg",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus...",
        likes: 8,
        comments: 1)
  ];

  @override
  Widget build(BuildContext context) {
    for (var element in postList) {
      postToAdd.add(PostCardWidget(
        post: element,
        width: widget.size.width,
      ));
    }

    return Column(children: postToAdd);
  }
}