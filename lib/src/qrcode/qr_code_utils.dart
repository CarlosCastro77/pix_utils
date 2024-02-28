import 'package:pix_utils/src/qrcode/crc.dart';

import './entities/entities.dart';

class PixQrCodeUtils {
  static QrCode parse(String qrCode) {
    QrCode qrCodeEntity = QrCode();
    int currentIndex = 0;

    while (currentIndex < qrCode.length) {
      // Extrai o identificador da tag
      String tagCode = qrCode.substring(currentIndex, currentIndex + 2);
      currentIndex += 2;

      // Extrai o tamanho do valor
      int length = int.parse(qrCode.substring(currentIndex, currentIndex + 2));
      currentIndex += 2;

      // Extrai o valor correspondente à tag
      String value = qrCode.substring(currentIndex, currentIndex + length);
      currentIndex += length;

      QrCodeTagEnum currentTag = QrCodeTagEnum.fromCode(tagCode);
      qrCodeEntity.tags[currentTag] = QrCodeTag(length: length, value: value);
    }

    return qrCodeEntity;
  }

  static QrCode update(QrCode qrcode, QrCodeTagEnum tag, String value) {
    qrcode.tags[tag]?.value = value;
    
    String newCrc = CRC.recalculateCRC(qrcode.toString());
    qrcode.tags[QrCodeTagEnum.crc16]?.value = newCrc; 
    
    return qrcode;
  }
}