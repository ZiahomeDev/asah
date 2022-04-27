import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class StatusHarianFirebaseUser {
  StatusHarianFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

StatusHarianFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<StatusHarianFirebaseUser> statusHarianFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<StatusHarianFirebaseUser>(
            (user) => currentUser = StatusHarianFirebaseUser(user));
