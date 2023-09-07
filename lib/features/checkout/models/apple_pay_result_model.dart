class ApplePayResultModel {
  Token token;
  // BillingContact billingContact;
  // String transactionIdentifier;
  // PaymentMethod paymentMethod;

  ApplePayResultModel({
    required this.token,
    // required this.billingContact,
    // required this.transactionIdentifier,
    // required this.paymentMethod,
  });

  factory ApplePayResultModel.fromJson(Map<String, dynamic> json) =>
      ApplePayResultModel(
        token: Token.fromJson(json["token"]),
        // billingContact: BillingContact.fromJson(json["billingContact"]),
        // transactionIdentifier: json["transactionIdentifier"],
        // paymentMethod: PaymentMethod.fromJson(json["paymentMethod"]),
      );
}

class BillingContact {
  Name name;

  BillingContact({
    required this.name,
  });

  factory BillingContact.fromJson(Map<String, dynamic> json) => BillingContact(
        name: Name.fromJson(json["name"]),
      );
}

class Name {
  PhoneticRepresentation phoneticRepresentation;
  String givenName;
  String nickname;
  String familyName;
  String middleName;
  String nameSuffix;
  String namePrefix;

  Name({
    required this.phoneticRepresentation,
    required this.givenName,
    required this.nickname,
    required this.familyName,
    required this.middleName,
    required this.nameSuffix,
    required this.namePrefix,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        phoneticRepresentation:
            PhoneticRepresentation.fromJson(json["phoneticRepresentation"]),
        givenName: json["givenName"],
        nickname: json["nickname"],
        familyName: json["familyName"],
        middleName: json["middleName"],
        nameSuffix: json["nameSuffix"],
        namePrefix: json["namePrefix"],
      );
}

class PhoneticRepresentation {
  String nameSuffix;
  String familyName;
  String phoneticRepresentation;
  String givenName;
  String nickname;
  String namePrefix;
  String middleName;

  PhoneticRepresentation({
    required this.nameSuffix,
    required this.familyName,
    required this.phoneticRepresentation,
    required this.givenName,
    required this.nickname,
    required this.namePrefix,
    required this.middleName,
  });

  factory PhoneticRepresentation.fromJson(Map<String, dynamic> json) =>
      PhoneticRepresentation(
        nameSuffix: json["nameSuffix"],
        familyName: json["familyName"],
        phoneticRepresentation: json["phoneticRepresentation"],
        givenName: json["givenName"],
        nickname: json["nickname"],
        namePrefix: json["namePrefix"],
        middleName: json["middleName"],
      );
}

class PaymentMethod {
  int type;
  String displayName;
  String network;

  PaymentMethod({
    required this.type,
    required this.displayName,
    required this.network,
  });

  factory PaymentMethod.fromJson(Map<String, dynamic> json) => PaymentMethod(
        type: json["type"],
        displayName: json["displayName"],
        network: json["network"],
      );
}

class Token {
  String data;
  String signature;
  Header header;
  String version;

  Token({
    required this.data,
    required this.signature,
    required this.header,
    required this.version,
  });

  factory Token.fromJson(Map<String, dynamic> json) => Token(
        data: json["data"],
        signature: json["signature"],
        header: Header.fromJson(json["header"]),
        version: json["version"],
      );
}

class Header {
  String publicKeyHash;
  String ephemeralPublicKey;
  String transactionId;

  Header({
    required this.publicKeyHash,
    required this.ephemeralPublicKey,
    required this.transactionId,
  });

  factory Header.fromJson(Map<String, dynamic> json) => Header(
        publicKeyHash: json["publicKeyHash"],
        ephemeralPublicKey: json["ephemeralPublicKey"],
        transactionId: json["transactionId"],
      );
}
