class AuthExceptions implements Exception {
  static const Map<String, String> errors = {
    "EMAIL_EXISTS": "Email já cadastrado.",
    "OPERATION_NOT_ALLOWED": "Operação não permitida.",
    "TOO_MANY_ATTEMPTS_TRY_LATER":
        "Acesso bloqueado temporariamente. Tente mais tarde.",
    "EMAIL_NOT_FOUND": "Email não encontrado.",
    "INVALID_PASSWORD": "Senha informada não confere.",
    "USER_DISABLED": "A conta foi desabilitada.",
  };

  final String key;
  AuthExceptions(this.key);

  @override
  String toString() {
    return errors[key] ?? 'Ocorreu um erro no processo de autenticação.';
  }
}
