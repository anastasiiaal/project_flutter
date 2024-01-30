class Post {
  String profilePicturePath;
  String author;
  String createdAt;
  String imagePath;
  String description;
  int likes;
  int comments;

  Post({
    required this.profilePicturePath,
    required this.author,
    required this.createdAt,
    required this.imagePath,
    required this.description,
    required this.likes,
    required this.comments
  });

  String likeToString() {
    return "$likes likes";
  }

  String commentsToString() {
    if (comments > 1) {
      return "$comments commentaires";
    }

    return "$comments commentaire";
  }
}