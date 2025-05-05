import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<User?> user(Ref ref) {
  final userStream = FirebaseAuth.instance.userChanges();

  return userStream;
}
