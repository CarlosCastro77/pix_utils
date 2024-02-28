import 'entities.dart';

class QrCode {
  late Map<QrCodeTagEnum, QrCodeTag> tags; 

  QrCode() {
    tags = <QrCodeTagEnum, QrCodeTag>{};
  }

  @override
  String toString() {
    String pixQrCode = "";
    tags.forEach((key, tag) { 
      pixQrCode = pixQrCode + key.code.toString().padLeft(2, '0') + tag.value.length.toString().padLeft(2, '0') + tag.value;
    });
      return pixQrCode;
  }
    
}