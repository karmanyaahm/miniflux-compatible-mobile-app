import 'dart:html';

class Miniflux {
  String server_url;
  String uname;
  String password;

  Miniflux(User user) {
    this.server_url = user.server;
    this.uname = user.name;
    this.password = user.password;
  }

  Future<User> get fullUser {
    // do http stuff to return perhaps something meaningful based on future info idk
  }


}
