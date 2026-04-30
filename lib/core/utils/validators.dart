class ValidationResult {

  const ValidationResult({required this.isValid, this.errorMessage});

  factory ValidationResult.valid() => const ValidationResult(isValid: true);
  factory ValidationResult.invalid(String message) =>
      ValidationResult(isValid: false, errorMessage: message);
  final bool isValid;
  final String? errorMessage;
}

class AppValidators {
  // Email validation
  static ValidationResult validateEmail(String email) {
    if (email.isEmpty) return ValidationResult.invalid('Email is required');

    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    if (!emailRegex.hasMatch(email)) {
      return ValidationResult.invalid('Invalid email format');
    }
    return ValidationResult.valid();
  }

  // Password validation
  static ValidationResult validatePassword(String password) {
    if (password.isEmpty) {
      return ValidationResult.invalid('Password is required');
    }
    if (password.length < 8) {
      return ValidationResult.invalid('Password must be at least 8 characters');
    }
    if (!RegExp(r'[A-Z]').hasMatch(password)) {
      return ValidationResult.invalid('Password must contain uppercase letter');
    }
    if (!RegExp(r'[0-9]').hasMatch(password)) {
      return ValidationResult.invalid('Password must contain number');
    }
    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password)) {
      return ValidationResult.invalid(
        'Password must contain special character',
      );
    }
    return ValidationResult.valid();
  }

  // Project title validation
  static ValidationResult validateProjectTitle(String title) {
    if (title.isEmpty) {
      return ValidationResult.invalid('Project title is required');
    }
    if (title.length < 10) {
      return ValidationResult.invalid('Title must be at least 10 characters');
    }
    if (title.length > 200) {
      return ValidationResult.invalid('Title must be less than 200 characters');
    }
    return ValidationResult.valid();
  }

  // Project budget validation
  static ValidationResult validateBudget(String budgetStr) {
    if (budgetStr.isEmpty) {
      return ValidationResult.invalid('Budget is required');
    }

    final budget = int.tryParse(budgetStr.replaceAll(',', ''));
    if (budget == null) {
      return ValidationResult.invalid('Invalid budget amount');
    }
    if (budget < 50000) {
      return ValidationResult.invalid('Minimum budget is LKR 50,000');
    }
    if (budget > 100000000) {
      return ValidationResult.invalid('Maximum budget is LKR 100 Million');
    }
    return ValidationResult.valid();
  }

  // Bid amount validation
  static ValidationResult validateBidAmount(String bidStr, int projectBudget) {
    if (bidStr.isEmpty) {
      return ValidationResult.invalid('Bid amount is required');
    }

    final bid = int.tryParse(bidStr.replaceAll(',', ''));
    if (bid == null) return ValidationResult.invalid('Invalid bid amount');
    if (bid < projectBudget * 0.5) {
      return ValidationResult.invalid(
        'Bid too low (minimum 50% of project budget)',
      );
    }
    if (bid > projectBudget * 2.0) {
      return ValidationResult.invalid(
        'Bid too high (maximum 200% of project budget)',
      );
    }
    return ValidationResult.valid();
  }

  // Timeline validation
  static ValidationResult validateTimeline(String timelineStr) {
    if (timelineStr.isEmpty) {
      return ValidationResult.invalid('Timeline is required');
    }

    final timeline = int.tryParse(timelineStr);
    if (timeline == null) return ValidationResult.invalid('Invalid timeline');
    if (timeline < 1) {
      return ValidationResult.invalid('Timeline must be at least 1 month');
    }
    if (timeline > 60) {
      return ValidationResult.invalid('Timeline cannot exceed 60 months');
    }
    return ValidationResult.valid();
  }

  // Phone validation
  static ValidationResult validatePhoneNumber(String phone) {
    if (phone.isEmpty) {
      return ValidationResult.invalid('Phone number is required');
    }

    final phoneRegex = RegExp(r'^(\+94|0)?[0-9]{9,10}$');
    if (!phoneRegex.hasMatch(phone.replaceAll(' ', ''))) {
      return ValidationResult.invalid('Invalid phone number format');
    }
    return ValidationResult.valid();
  }

  // Description validation
  static ValidationResult validateDescription(String description) {
    if (description.isEmpty) {
      return ValidationResult.invalid('Description is required');
    }
    if (description.length < 20) {
      return ValidationResult.invalid(
        'Description must be at least 20 characters',
      );
    }
    if (description.length > 5000) {
      return ValidationResult.invalid(
        'Description cannot exceed 5000 characters',
      );
    }
    return ValidationResult.valid();
  }

  // File validation
  static ValidationResult validateFile(
    String? filePath,
    List<String> allowedExtensions,
    int maxSizeMB,
  ) {
    if (filePath == null || filePath.isEmpty) {
      return ValidationResult.invalid('File is required');
    }

    final extension = filePath.split('.').last.toLowerCase();
    if (!allowedExtensions.contains(extension)) {
      return ValidationResult.invalid(
        'Invalid file type. Allowed: ${allowedExtensions.join(", ")}',
      );
    }

    return ValidationResult.valid();
  }

  // Certification validation
  static ValidationResult validateCertification(String certification) {
    if (certification.isEmpty) {
      return ValidationResult.invalid('Certification is required');
    }

    final validCertifications = [
      'ISO9001',
      'ISO14001',
      'OHSAS18001',
      'NVQ_Level1',
      'NVQ_Level2',
      'NVQ_Level3',
      'Engineering_License',
      'Safety_Certified',
      'Other',
    ];

    if (!validCertifications.contains(certification)) {
      return ValidationResult.invalid('Invalid certification');
    }
    return ValidationResult.valid();
  }

  // Bank account validation (Sri Lanka)
  static ValidationResult validateBankAccount(String accountNumber) {
    if (accountNumber.isEmpty) {
      return ValidationResult.invalid('Account number is required');
    }
    if (accountNumber.length < 10 || accountNumber.length > 16) {
      return ValidationResult.invalid('Invalid account number length');
    }
    if (!RegExp(r'^[0-9]+$').hasMatch(accountNumber)) {
      return ValidationResult.invalid(
        'Account number must contain only digits',
      );
    }
    return ValidationResult.valid();
  }

  // Multiple validations
  static List<ValidationResult> validateAll(List<ValidationResult> results) => results;

  static bool isAllValid(List<ValidationResult> results) => results.every((r) => r.isValid);

  static String getFirstErrorMessage(List<ValidationResult> results) {
    for (final result in results) {
      if (!result.isValid && result.errorMessage != null) {
        return result.errorMessage!;
      }
    }
    return 'Validation failed';
  }
}
