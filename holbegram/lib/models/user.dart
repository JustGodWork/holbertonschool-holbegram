
import 'package:cloud_firestore/cloud_firestore.dart';

class Users {
  final String uid;
  final String email;
  final String username;
  final String bio;
  final String photoUrl;
  final List<dynamic> followers;
  final List<dynamic> following;
  final List<dynamic> posts;
  final List<dynamic> saved;
  final String searchKey;

  const Users({
    required this.uid,
    required this.email,
    required this.username,
    required this.bio,
    required this.photoUrl,
    required this.followers,
    required this.following,
    required this.posts,
    required this.saved,
    required this.searchKey,
  });

  static Users fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Users(
      uid: snapshot["uid"],
      username: snapshot["username"],
      email: snapshot["email"],
      photoUrl: snapshot["photoUrl"],
      bio: snapshot["bio"],
      followers: snapshot["followers"],
      following: snapshot["following"],
      posts: snapshot["posts"],
      saved: snapshot["saved"],
      searchKey: snapshot['searchKey'],
    );
  }

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "username": username,
        "email": email,
        "photoUrl": photoUrl,
        "bio": bio,
        "followers": followers,
        "following": following,
        "posts": posts,
        "saved": saved,
        "searchKey": searchKey,
      };
}
