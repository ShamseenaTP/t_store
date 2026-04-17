class TFormatException implements Exception {
  final String message;

  TFormatException(
      [this.message =
          'An unexpected format error occurred. Please check your input.']);

  factory TFormatException.fromMessage(String message) {
    return TFormatException(message);
  }

  String get formattedMessage => message;

  factory TFormatException.fromCode(String code) {
    switch (code) {
      case 'invalid-email-format':
        return TFormatException(
            'The email address format is invalid. Please enter a valid email.');
      case 'invalid-phone-format':
        return TFormatException(
            'The phone number format is invalid. Please enter a valid phone number.');
      case 'empty-field':
        return TFormatException(
            'This field cannot be empty. Please provide a value.');
      case 'password-too-short':
        return TFormatException(
            'The password is too short. It must be at least 6 characters.');
      case 'invalid-date-format':
        return TFormatException(
            'The date format is incorrect. Please enter a valid date (e.g., DD/MM/YYYY).');
      case 'invalid-username':
        return TFormatException(
            'The username is invalid. It can only contain letters, numbers, and underscores.');
      case 'invalid-credit-card':
        return TFormatException(
            'The credit card number is invalid. Please check your input.');
      case 'invalid-zip-code':
        return TFormatException(
            'The zip code format is invalid. Please enter a valid zip code.');
      case 'invalid-url-format':
        return TFormatException(
            'The URL format is invalid. Please provide a valid URL (e.g., https://www.example.com).');
      case 'mismatched-passwords':
        return TFormatException(
            'The passwords do not match. Please make sure both passwords are identical.');
      case 'invalid-currency-format':
        return TFormatException(
            'The currency format is incorrect. Please enter a valid currency (e.g., \$123.45).');
      default:
        return TFormatException(
            'An unexpected format error occurred. Please check your input.');
    }
  }
}
