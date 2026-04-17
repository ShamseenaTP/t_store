class TFirebaseException implements Exception {
  /// The error code associated with the exception.
  final String code;

  /// Constructor that takes an error code.
  TFirebaseException(this.code);

  /// Get the message associated with the error code.
  String get message {
    switch (code) {
      case 'unknown':
        return 'An unknown Firebase error occurred';
      case 'network-request-failed':
        return 'Network request failed. Please check your internet connection.';
      case 'user-not-found':
        return 'No user found for this email.';
      case 'invalid-email':
        return 'The email address is badly formatted.';
      case 'weak-password':
        return 'The password is too weak.';
      case 'email-already-in-use':
        return 'The account already exists for that email.';
      case 'operation-not-allowed':
        return 'The operation is not allowed. Please check the Firebase console settings.';
      case 'user-disabled':
        return 'This user has been disabled.';
      case 'wrong-password':
        return 'The password is incorrect.';
      case 'too-many-requests':
        return 'You have made too many requests. Please try again later.';
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email but different sign-in credentials.';
      case 'invalid-credential':
        return 'The provided credential is invalid.';
      case 'provider-already-linked':
        return 'The account is already linked to this provider.';
      case 'user-token-expired':
        return "The user's token has expired. Please log in again.";
      case 'app-not-authorized':
        return 'This app is not authorized to use Firebase services.';
      case 'quota-exceeded':
        return 'Quota exceeded. Please try again later.';
      case 'timeout':
        return 'The operation timed out. Please try again.';
      case 'invalid-api-key':
        return 'The API key is invalid. Please check your Firebase configuration.';
      case 'missing-api-key':
        return 'The API key is missing from the Firebase configuration.';
      case 'firebase-authentication-error':
        return 'Firebase authentication error occurred. Please check your Firebase configuration.';
      default:
        return 'An unknown error occurred.';
    }
  }
}
