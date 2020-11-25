import 'package:yet_another_feed_reader/models/user.dart';
import 'package:yet_another_feed_reader/models/feed.dart';

class Entry {
  int id;

  User _user;
  Feed _feed;

  String _title;
  String _url;
  String _comments_url;
  String _author;
  DateTime _publish_time;

  String _content;

  ReadStatus _status; //read or unread
  bool _starred;

  // =========== USEFUL GETTERS ===============
  bool get read {
    return _status == ReadStatus.read;
  }

  // ================= USELESS GETTERS =================

  User get user {
    return _user;
  }

  Feed get feed {
    return _feed;
  }

  String get title {
    return _title;
  }

  String get url {
    return _url;
  }

  String get comments_url {
    return _comments_url;
  }

  String get author {
    return _author;
  }

  DateTime get publish_time {
    return _publish_time;
  }

  String get content {
    return _content;
  }

  bool get starred {
    return _starred;
  }

  // =================== SETTERS ============
  void set read(bool i) {
    if (i)
      _status = ReadStatus.read;
    else
      _status = ReadStatus.unread;
  }

  void set starred(bool i) {
    _starred = i;
  }

  Entry(
      this.id,
      this._user,
      this._feed,
      this._author,
      this._comments_url,
      this._content,
      this._publish_time,
      this._title,
      this._url,
      this._starred,
      this._status);
}

enum ReadStatus {
  //possible to add a middle state in the future
  read,
  unread,
}
