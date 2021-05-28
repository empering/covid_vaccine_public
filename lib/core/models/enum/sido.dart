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

  static String getSidoCode(String sidoName) {
    String sidoCode = '';
    switch (sidoName) {
      case '전국':
        sidoCode = '';
        break;
      case '서울특별시':
        sidoCode = '11';
        break;
      case '부산광역시':
        sidoCode = '26';
        break;
      case '대구광역시':
        sidoCode = '27';
        break;
      case '인천광역시':
        sidoCode = '28';
        break;
      case '광주광역시':
        sidoCode = '29';
        break;
      case '대전광역시':
        sidoCode = '30';
        break;
      case '울산광역시':
        sidoCode = '31';
        break;
      case '세종특별자치시':
        sidoCode = '36';
        break;
      case '경기도':
        sidoCode = '41';
        break;
      case '강원도':
        sidoCode = '42';
        break;
      case '충청북도':
        sidoCode = '43';
        break;
      case '충청남도':
        sidoCode = '44';
        break;
      case '전라북도':
        sidoCode = '45';
        break;
      case '전라남도':
        sidoCode = '46';
        break;
      case '경상북도':
        sidoCode = '47';
        break;
      case '경상남도':
        sidoCode = '48';
        break;
      case '제주특별자치도':
        sidoCode = '50';
        break;
      case '기타':
        sidoCode = '';
    }

    return sidoCode;
  }
}
