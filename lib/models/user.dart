class User {
  //connection vars
  String _server;
  String _name;
  String _password;

  //possibly important info

  String _theme;
  String _sortingDir; //could be bool?

  //other maybe useful
  String _timezone;

  User(
    this._server,
    this._name,
    this._password,
    this._theme,
    this._sortingDir,
    this._timezone,
  );

  // bool get isInitialized {
  //   return _server?._name?. _password?._theme?._sortingDir?. _timezone?.true ?? false;
  // }

  User.login(this._server, this._name, this._password);
}
