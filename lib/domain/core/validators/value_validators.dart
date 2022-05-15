class ValueValidator {
  static bool validateEmailAddress(String input) {
    const reg = r"""^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$""";
    return RegExp(reg).hasMatch(input) && input.isNotEmpty;
  }

  static bool validatePassword(String input) {
    const upperCaseChars = "QWERTYUIOPASDFGHJKLZXCVBNM";
    return input.length >= 6 &&
        upperCaseChars.contains(input[0]) &&
        RegExp(r"^[a-zA-Z0-9]+$").hasMatch(input);
  }

  static bool validateName(String input) {
    const reg = r"""[^()[\]{}*&^%$#@!1234657980]+$""";
    return input.length >= 2 && RegExp(reg).hasMatch(input) && input.isNotEmpty;
  }
  static bool validateBalance(String input) {
    const reg = r"""^\d{0,8}(\.\d{1,4})?$""";
    return RegExp(reg).hasMatch(input) && input.isNotEmpty;
  }
}
