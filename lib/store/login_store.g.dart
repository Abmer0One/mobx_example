// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on _LoginStore, Store {
  Computed<bool>? _$formularioEstaValidoComputed;

  @override
  bool get formularioEstaValido => (_$formularioEstaValidoComputed ??=
          Computed<bool>(() => super.formularioEstaValido,
              name: '_LoginStore.formularioEstaValido'))
      .value;
  Computed<bool>? _$senhaVisivelComputed;

  @override
  bool get senhaVisivel =>
      (_$senhaVisivelComputed ??= Computed<bool>(() => super.senhaVisivel,
              name: '_LoginStore.senhaVisivel'))
          .value;

  late final _$telefoneAtom =
      Atom(name: '_LoginStore.telefone', context: context);

  @override
  String get telefone {
    _$telefoneAtom.reportRead();
    return super.telefone;
  }

  @override
  set telefone(String value) {
    _$telefoneAtom.reportWrite(value, super.telefone, () {
      super.telefone = value;
    });
  }

  late final _$senhaAtom = Atom(name: '_LoginStore.senha', context: context);

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  late final _$senha_visivelAtom =
      Atom(name: '_LoginStore.senha_visivel', context: context);

  @override
  bool get senha_visivel {
    _$senha_visivelAtom.reportRead();
    return super.senha_visivel;
  }

  @override
  set senha_visivel(bool value) {
    _$senha_visivelAtom.reportWrite(value, super.senha_visivel, () {
      super.senha_visivel = value;
    });
  }

  late final _$processar_dadosAtom =
      Atom(name: '_LoginStore.processar_dados', context: context);

  @override
  bool get processar_dados {
    _$processar_dadosAtom.reportRead();
    return super.processar_dados;
  }

  @override
  set processar_dados(bool value) {
    _$processar_dadosAtom.reportWrite(value, super.processar_dados, () {
      super.processar_dados = value;
    });
  }

  late final _$loggedInAtom =
      Atom(name: '_LoginStore.loggedIn', context: context);

  @override
  bool get loggedIn {
    _$loggedInAtom.reportRead();
    return super.loggedIn;
  }

  @override
  set loggedIn(bool value) {
    _$loggedInAtom.reportWrite(value, super.loggedIn, () {
      super.loggedIn = value;
    });
  }

  late final _$processarDadosAsyncAction =
      AsyncAction('_LoginStore.processarDados', context: context);

  @override
  Future<void> processarDados() {
    return _$processarDadosAsyncAction.run(() => super.processarDados());
  }

  late final _$logOutAsyncAction =
      AsyncAction('_LoginStore.logOut', context: context);

  @override
  Future<void> logOut() {
    return _$logOutAsyncAction.run(() => super.logOut());
  }

  late final _$_LoginStoreActionController =
      ActionController(name: '_LoginStore', context: context);

  @override
  void setTelefone(String valor_telefone) {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.setTelefone');
    try {
      return super.setTelefone(valor_telefone);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String valor_senha) {
    final _$actionInfo =
        _$_LoginStoreActionController.startAction(name: '_LoginStore.setSenha');
    try {
      return super.setSenha(valor_senha);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenhaVisivel() {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.setSenhaVisivel');
    try {
      return super.setSenhaVisivel();
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
telefone: ${telefone},
senha: ${senha},
senha_visivel: ${senha_visivel},
processar_dados: ${processar_dados},
loggedIn: ${loggedIn},
formularioEstaValido: ${formularioEstaValido},
senhaVisivel: ${senhaVisivel}
    ''';
  }
}
