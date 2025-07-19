import 'dart:async';

class Bloc {
  //underlined properties are private in dart
  //were using this to make getters and we also dont want to let anyone else achieve the older method
  //everyone is supposed to use the getters instead
  final _email = StreamController<String>();
  final _password = StreamController<String>();

//called getters, kind of a pointer to a function

//add data to stream
  Stream<String>get email => _email.stream;
  Stream<String>get password => _password.stream;

//change data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

} 