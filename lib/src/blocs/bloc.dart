import 'dart:async';
import 'validators.dart';

//extends is required with 'with' directive
//thats why i inherited and didn't used 'with'
class Bloc extends Validators {
  //underlined properties are private in dart
  //were using this to make getters and we also dont want to let anyone else achieve the older method
  //everyone is supposed to use the getters instead
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  //getters belowg, kind of a pointer to a function

  //add data to stream
  Stream<String> get email => _email.stream;
  Stream<String> get password => _password.stream;

  //change data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  dispose() {
    _email.close();
    _password.close();
  }
}

//what does this mean?
//the instance we created in the bottom of the file
//thats what we want to get outside this file
//thats off course single global instance-kind to do things
final bloc = Bloc();
