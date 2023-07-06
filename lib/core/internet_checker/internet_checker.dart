import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

abstract class NetWorkInfo {
  Future<bool> get isConnected;
}

class NetWorkInfoImpl extends NetWorkInfo {
  final InternetConnectionCheckerPlus _internetConnectionCheckerPlus;

  NetWorkInfoImpl(this._internetConnectionCheckerPlus);

  @override
  Future<bool> get isConnected => _internetConnectionCheckerPlus.hasConnection;
}
