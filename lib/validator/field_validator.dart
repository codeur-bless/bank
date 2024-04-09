class MyValidator {
  // champ vide
  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return "$fieldName obligatoire";
    }

    return null;
  }

// email validation
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email obligatoire";
    }

    final emailRegExp = RegExp(r'[!&#%^+\=(),?*:{}|<>$;]');
    if (emailRegExp.hasMatch(value)) {
      return "email invalid";
    }

    if (!value.contains(RegExp(r'[@]'))) {
      return "email invalide eg: demo@gmail.com";
    }

    if (!value.contains(RegExp(r'[.]'))) {
      return "email invalide eg: email@gmail.com";
    }

    return null;
  }

  // password validation

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Mot de passe obligatoire";
    }

    if (value.length < 6) {
      return "Mot de passe faible";
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return "Mot de passe doit contenire un majuscule";
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return "Mot de passe doit contenire un chiffre";
    }

    if (!value.contains(RegExp(r'[!@&#%^+(),.?*:{}|<>$]'))) {
      return "Mot de passe doit contenire un caratère spécial";
    }

    return null;
  }

  // phone number
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Numéro de téléphone obligatoire";
    }

    if (value.contains(RegExp(r'[A-Z]'))) {
      return "Chiffre uniquement";
    }
    if (value.contains(RegExp(r'[a-z]'))) {
      return "Chiffre uniquement";
    }

    if (value.length > 10) {
      return "Numéro invalide";
    }

    if (value.contains(RegExp(r'[!@&#%^()\,.;?*:{}|<>$ ]'))) {
      return "Numéro de téléphone invalide";
    }

    return null;
  }
}
