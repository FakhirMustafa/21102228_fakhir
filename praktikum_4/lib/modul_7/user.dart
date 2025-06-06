class Album {
  final int userId;
  final int id;
  final String title;
  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['user_id'],
      id: json['id'],
      title: json['title'],
    );
  }
}
