// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Event {
  final String title;
  final String address;
  final String imgurl;
  final DateTime time;

  Event(
    this.title,
    this.address,
    this.imgurl,
    this.time,
  );

  Event copyWith({
    String? title,
    String? address,
    String? imgurl,
    DateTime? time,
  }) {
    return Event(
      title ?? this.title,
      address ?? this.address,
      imgurl ?? this.imgurl,
      time ?? this.time,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'address': address,
      'imgurl': imgurl,
      'time': time.millisecondsSinceEpoch,
    };
  }

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      map['title'] as String,
      map['address'] as String,
      map['imgurl'] as String,
      DateTime.fromMillisecondsSinceEpoch(map['time'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory Event.fromJson(String source) =>
      Event.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Event(title: $title, address: $address, imgurl: $imgurl, time: $time)';
  }

  @override
  bool operator ==(covariant Event other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.address == address &&
        other.imgurl == imgurl &&
        other.time == time;
  }

  @override
  int get hashCode {
    return title.hashCode ^ address.hashCode ^ imgurl.hashCode ^ time.hashCode;
  }
}
