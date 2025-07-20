import 'dart:async';


class Validators {
  //we are NOT defining the variable type INSIDE the function in handleData, we're adding it in StreamTransformer Constructor
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if (email.contains('@')) {
        sink.add(email);
      } else {
        sink.addError("Enter a valid email!");
      }
    },
  );

  final validatePasswotd = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      if (password.length > 3) {
        sink.add(password);
      } else {
        sink.addError("Password mus be at least 4 characters long!");
      }
    },
  );
}
