abstract class AuthLocalDataSource {
  Future<Map<String, String>?> getCachedUser();
  Future<void> removeAllCached();
}
