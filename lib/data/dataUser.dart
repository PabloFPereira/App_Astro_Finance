class DataUser {
  String email;
  String password;
  Map<String, bool> progressoAulas = {
    'Como funciona a economia': false,
    'Como Organizar suas finanças - com Planilha de organização Financeira':
        false,
    'Como Criar uma Carteira de investimentos 1': false,
    'Como Criar uma Carteira de investimentos 2': false,
    'Como Criar uma Carteira de investimentos 3': false,
    'Onde Investir seu dinheiro': false,
    'O Melhor Banco para voce': false,
    'Oque é DayTrade': false,
    'Swing Trade - EM INGLES': false,
    'Checkin': false,
  };

  DataUser({
    required this.email,
    required this.password,
    required this.progressoAulas,
  });

  set checkin(bool checkin) {}
}
