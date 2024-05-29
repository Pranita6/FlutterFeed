import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterfeed/apis/user_api.dart';
import 'package:flutterfeed/models/user_model.dart';

final explorecontrollerProvider = StateNotifierProvider((ref) {
  return Explorecontroller(userAPI: ref.watch(userAPIProvider));
});

final searchUserProvider = FutureProvider.family((ref, String name) async {
  final explorecontroller = ref.watch(explorecontrollerProvider.notifier);
  return explorecontroller.searchUser(name);
});

class Explorecontroller extends StateNotifier<bool> {
  final UserAPI _userAPI;
  Explorecontroller({
    required UserAPI userAPI
    }): _userAPI = userAPI,
    super(false);
  Future<List<UserModel>> searchUser(String name) async {
    final users = await _userAPI.searchUserByName(name);
    return users.map((e) => UserModel.fromMap(e.data)).toList();
  }
}