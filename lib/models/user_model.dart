import 'dart:convert';

import 'package:flutter/foundation.dart';

class UserModel {
  final String name;
  final String profilePic;
  final String uid;
  final String banner;
  final bool isAuthenticated;
  final int perks;
  final List<String> awards;
  UserModel({
    required this.name,
    required this.profilePic,
    required this.uid,
    required this.banner,
    required this.isAuthenticated,
    required this.perks,
    required this.awards,
  });

  UserModel copyWith({
    String? name,
    String? profilePic,
    String? uid,
    String? banner,
    bool? isAuthenticated,
    int? perks,
    List<String>? awards,
  }) {
    return UserModel(
      name: name ?? this.name,
      profilePic: profilePic ?? this.profilePic,
      uid: uid ?? this.uid,
      banner: banner ?? this.banner,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      perks: perks ?? this.perks,
      awards: awards ?? this.awards,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'profilePic': profilePic,
      'uid': uid,
      'banner': banner,
      'isAuthenticated': isAuthenticated,
      'perks': perks,
      'awards': awards,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
        name: map['name'] as String,
        profilePic: map['profilePic'] as String,
        uid: map['uid'] as String,
        banner: map['banner'] as String,
        isAuthenticated: map['isAuthenticated'] as bool,
        perks: map['perks'] as int,
        awards: List<String>.from(
          (map['awards'] as List<String>),
        ));
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(name: $name, profilePic: $profilePic, uid: $uid, banner: $banner, isAuthenticated: $isAuthenticated, perks: $perks, awards: $awards)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.profilePic == profilePic &&
        other.uid == uid &&
        other.banner == banner &&
        other.isAuthenticated == isAuthenticated &&
        other.perks == perks &&
        listEquals(other.awards, awards);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        profilePic.hashCode ^
        uid.hashCode ^
        banner.hashCode ^
        isAuthenticated.hashCode ^
        perks.hashCode ^
        awards.hashCode;
  }
}
