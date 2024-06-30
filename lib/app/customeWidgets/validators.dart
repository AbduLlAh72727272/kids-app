class Validators{
  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }

    // Regular expression for basic email validation
    String pattern = r'^[^@]+@[^@]+\.[^@]+';
    RegExp regex = RegExp(pattern);

    if (!regex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }

    return null;
  }

static String? validatePassword(String? password) {
  // Check if password is empty
  if (password!.isEmpty) {
    return 'Password is required';
  }

  // // Check if password length is less than 8 characters
  // if (password.length < 8) {
  //   return 'Password must be at least 8 characters long';
  // }

  // Return null if password is valid
  return null;
}
}