
String? validateName(String? value) {
  if (value == null || value.isEmpty) return null;
  final RegExp nameExp = RegExp(r'^[A-Za-z ]+$');
  if (!nameExp.hasMatch(value)) return 'Alphabets only [A-Z,a-z]';
  return null;
}

String? validatePhone(String? value) {
  if (value == null || value.isEmpty) return null;
  final RegExp nameExp = RegExp(r'^(?:[+0]9)?[0-9]{10}$');
  if (!nameExp.hasMatch(value)) return 'Enter Valid Phone Number';
  return null;
}

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) return null;
  final RegExp emailExp =
      RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');
  if (!emailExp.hasMatch(value)) return 'Not a valid email.';
  return null;
}


String? multiValidate(String? value, List<Validation> validations) {
  Validation? validation = validations.firstWhere((element) {
    switch (element) {
      case Validation.email:
        return validateEmail(value) != null;
      case Validation.name:
        return validateName(value) != null;
      case Validation.phone:
        return validatePhone(value) != null;
      case Validation.notEmpty:
        return value?.isEmpty ?? true;
      default:
        return false;
    }
  }, orElse: () => Validation.any);

  switch (validation) {
    case Validation.email:
      return validateEmail(value);
    case Validation.name:
      return validateName(value);
    case Validation.phone:
      return validatePhone(value);
    case Validation.notEmpty:
      return 'Required*';
    default:
      return null;
  }
}

enum Validation { email, name, phone, notEmpty, any }
