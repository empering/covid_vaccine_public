enum SidoEnum {
  ALL,
  SEOUL,
  BUSAN,
  DAEGU,
  INCHEON,
  GWANGJU,
  DAEJEON,
  ULSAN,
  SEJONG,
  GYEONGGI,
  GANGWON,
  CHUNGBUK,
  CHUNGNAM,
  JEONBUK,
  JEONNAM,
  GYEONGBUK,
  GYEONGNAM,
  JEJU,
  ETC,
}

class Sido {
  static String getSidoName(SidoEnum sidoEnum, {bool isShort = false}) {
    String sidoName = '';
    switch (sidoEnum) {
      case SidoEnum.ALL:
        sidoName = '전국';
        break;
      case SidoEnum.SEOUL:
        sidoName = '서울특별시';
        break;
      case SidoEnum.BUSAN:
        sidoName = '부산광역시';
        break;
      case SidoEnum.DAEGU:
        sidoName = '대구광역시';
        break;
      case SidoEnum.INCHEON:
        sidoName = '인천광역시';
        break;
      case SidoEnum.GWANGJU:
        sidoName = '광주광역시';
        break;
      case SidoEnum.DAEJEON:
        sidoName = '대전광역시';
        break;
      case SidoEnum.ULSAN:
        sidoName = '울산광역시';
        break;
      case SidoEnum.SEJONG:
        sidoName = '세종특별자치시';
        break;
      case SidoEnum.GYEONGGI:
        sidoName = '경기도';
        break;
      case SidoEnum.GANGWON:
        sidoName = '강원도';
        break;
      case SidoEnum.CHUNGBUK:
        sidoName = '충청북도';
        break;
      case SidoEnum.CHUNGNAM:
        sidoName = '충청남도';
        break;
      case SidoEnum.JEONBUK:
        sidoName = '전라북도';
        break;
      case SidoEnum.JEONNAM:
        sidoName = '전라남도';
        break;
      case SidoEnum.GYEONGBUK:
        sidoName = '경상북도';
        break;
      case SidoEnum.GYEONGNAM:
        sidoName = '경상남도';
        break;
      case SidoEnum.JEJU:
        sidoName = '제주특별자치도';
        break;
      case SidoEnum.ETC:
        sidoName = '기타';
    }

    return isShort ? sidoName.substring(0, 2) : sidoName;
  }

  static SidoEnum getSidoEnum(String sidoName) {
    var sidoEnum = SidoEnum.ETC;
    SidoEnum.values.forEach((s) {
      if (getSidoName(s) == sidoName) {
        sidoEnum = s;
      }
    });

    return sidoEnum;
  }

  static String getSidoEngName(String sidoName) {
    return getSidoEnum(sidoName).toString().split('.')[1].toLowerCase();
  }

  static String getSidoShortName(String sidoName) {
    var sidoShortName = sidoName.substring(0, 2);
    if (sidoShortName == '충청' ||
        sidoShortName == '경상' ||
        sidoShortName == '전라') {
      sidoShortName = sidoShortName.substring(0, 1) + sidoName.substring(2, 3);
    }

    return sidoShortName;
  }
}
