enum QrCodeTagEnum {
  // Dados da conta
  payloadFormatIndicator(code: 0, title: "Indicador de formato de payload"), // (00) Indicador de formato de payload
  pointOfInitiation(code: 1, title: "Ponto de iniciação"),
  merchantAccountInformation1(code: 2, title: "Informações da conta do recebedor"),
  merchantAccountInformation2(code: 26, title: "Informações da conta do recebedor"), // (26) Informações da conta do recebedor
  merchantCategoryCode(code: 52, title: "Código da categoria do mercador"), // (52) Código da categoria do mercador
  transactionCurrency(code: 53, title: "Moeda da transação"), // (53) Moeda da transação
  transactionAmount(code: 54, title: "Valor da transação"), // (54) Valor da transação
  tipOrConvenienceIndicator(code: 55, title: "Indicador de gorjeta ou conveniência"),
  tipOrConvenienceFixed(code: 56, title: "Valor de conveniência fixo"),
  tipOrConveniencePercentage(code: 57, title: "Valor de conveniência em porcentagem"),
  countryCode(code: 58, title: "País"), // (58) País
  merchantName(code: 59, title: "Nome do recebedor"), // (59) Nome do recebedor
  merchantCity(code: 60, title: "Cidade do recebedor"), // (60) Cidade do recebedor
  postalCode(code: 61, title: "Código postal"),
  additionalDataFieldTemplate(code: 62, title: "Campo de templates de dados adicionais"), // (62) Campo de templates de dados adicionais
  crc16(code: 63, title: "CRC16"); // (63) CRC16

  const QrCodeTagEnum({
    required this.code,
    required this.title
  });

  final int code;
  final String title;

  static QrCodeTagEnum fromCode(String code) {
    return QrCodeTagEnum.values.where((k) => k.code == int.parse(code)).first;
  }
}