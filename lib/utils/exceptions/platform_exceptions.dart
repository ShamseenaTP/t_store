class TPlatformException implements Exception {
  final String code;

  TPlatformException(this.code);

  String get message {
    switch (code) {
      case 'network-unavailable':
        return 'Network is unavailable. Please check your internet connection.';
      case 'permission-denied':
        return 'Permission denied. Please enable the required permissions in your device settings.';
      case 'platform-not-supported':
        return 'This feature is not supported on your platform or device.';
      case 'unsupported-os':
        return 'This operation is not supported on your operating system version.';
      case 'feature-unavailable':
        return 'This feature is unavailable on your device.';
      case 'battery-low':
        return 'Battery is too low to complete this operation. Please charge your device.';
      case 'device-not-found':
        return 'Device not found. Please make sure your device is properly connected.';
      case 'bluetooth-unavailable':
        return 'Bluetooth is unavailable. Please check your Bluetooth settings.';
      case 'gps-unavailable':
        return 'GPS is unavailable or turned off. Please enable GPS in your device settings.';
      case 'camera-unavailable':
        return 'Camera is unavailable. Please make sure your camera is accessible.';
      case 'storage-full':
        return 'The device storage is full. Please free up some space and try again.';
      case 'app-upgrade-required':
        return 'An app upgrade is required to continue. Please update to the latest version.';
      case 'unsupported-architecture':
        return 'The app is not supported on your device architecture.';
      case 'device-locked':
        return 'Your device is locked. Please unlock it to proceed.';
      case 'os-version-too-old':
        return 'Your operating system version is too old. Please update your OS to proceed.';
      case 'device-rooted':
        return 'Your device is rooted, which is not supported for security reasons.';
      case 'location-disabled':
        return 'Location services are disabled. Please enable them in your device settings.';
      default:
        return 'An unexpected platform error occurred.';
    }
  }
}
