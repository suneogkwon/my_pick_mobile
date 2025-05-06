import 'package:firebase_auth/firebase_auth.dart' as fa;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

typedef UserEntity = fa.User;

@Riverpod(keepAlive: true)
class User extends _$User {
  @override
  Stream<UserEntity?> build() {
    final userStream = fa.FirebaseAuth.instance.userChanges();

    return userStream;
  }
}
