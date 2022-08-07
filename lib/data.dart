import 'package:responsive_dashboard/dashboard.dart';
import 'package:responsive_dashboard/loading.dart';

import 'component/paymentListTile.dart';

double financq1 = num.parse(
        (Dashboard.financialjanscore * 100 / Dashboard.financialWaight)
            .toStringAsFixed(2)) +
    num.parse((Dashboard.financialfebscore * 100 / Dashboard.financialWaight)
        .toStringAsFixed(2)) +
    num.parse((Dashboard.financialmarchscore * 100 / Dashboard.financialWaight)
        .toStringAsFixed(2));
double financq2 = num.parse(
        (Dashboard.financialaprilscore * 100 / Dashboard.financialWaight)
            .toStringAsFixed(2)) +
    num.parse((Dashboard.financialmayscore * 100 / Dashboard.financialWaight)
        .toStringAsFixed(2)) +
    num.parse((Dashboard.financialjunescore * 100 / Dashboard.financialWaight)
        .toStringAsFixed(2));
double financq3 = num.parse(
        (Dashboard.financialjulyscore * 100 / Dashboard.financialWaight)
            .toStringAsFixed(2)) +
    num.parse((Dashboard.financialaugestscore * 100 / Dashboard.financialWaight)
        .toStringAsFixed(2)) +
    num.parse((Dashboard.financialseptscore * 100 / Dashboard.financialWaight)
        .toStringAsFixed(2));

double financq4 = num.parse(
        (Dashboard.financialoctscore * 100 / Dashboard.financialWaight)
            .toStringAsFixed(2)) +
    num.parse((Dashboard.financialnovscore * 100 / Dashboard.financialWaight)
        .toStringAsFixed(2)) +
    num.parse((Dashboard.financialdesscore * 100 / Dashboard.financialWaight)
        .toStringAsFixed(2));
//customer
double custq1 = num.parse(
        (Dashboard.customerjanscore * 100 / Dashboard.customerlWaight)
            .toStringAsFixed(2)) +
    num.parse((Dashboard.customerfebscore * 100 / Dashboard.customerlWaight)
        .toStringAsFixed(2)) +
    num.parse((Dashboard.customermarchscore * 100 / Dashboard.customerlWaight)
        .toStringAsFixed(2));
double custq2 = num.parse(
        (Dashboard.customeraprilscore * 100 / Dashboard.customerlWaight)
            .toStringAsFixed(2)) +
    num.parse((Dashboard.customermayscore * 100 / Dashboard.customerlWaight)
        .toStringAsFixed(2)) +
    num.parse((Dashboard.customerjunescore * 100 / Dashboard.customerlWaight)
        .toStringAsFixed(2));
double custq3 = num.parse(
        (Dashboard.customerjulyscore * 100 / Dashboard.customerlWaight)
            .toStringAsFixed(2)) +
    num.parse((Dashboard.customeraugestscore * 100 / Dashboard.customerlWaight)
        .toStringAsFixed(2)) +
    num.parse((Dashboard.customerseptscore * 100 / Dashboard.customerlWaight)
        .toStringAsFixed(2));

double custq4 = num.parse(
        (Dashboard.customeroctscore * 100 / Dashboard.customerlWaight)
            .toStringAsFixed(2)) +
    num.parse((Dashboard.customernovscore * 100 / Dashboard.customerlWaight)
        .toStringAsFixed(2)) +
    num.parse((Dashboard.customerdesscore * 100 / Dashboard.customerlWaight)
        .toStringAsFixed(2));
//internal
double internal1 = num.parse(
        (Dashboard.internaljanscore * 100 / Dashboard.internalWaight)
            .toStringAsFixed(2)) +
    num.parse((Dashboard.internalfebscore * 100 / Dashboard.internalWaight)
        .toStringAsFixed(2)) +
    num.parse((Dashboard.internalmarchscore * 100 / Dashboard.internalWaight)
        .toStringAsFixed(2));
double internal2 = num.parse(
        (Dashboard.internalaprilscore * 100 / Dashboard.internalWaight)
            .toStringAsFixed(2)) +
    num.parse((Dashboard.internalmayscore * 100 / Dashboard.internalWaight)
        .toStringAsFixed(2)) +
    num.parse((Dashboard.internaljunescore * 100 / Dashboard.internalWaight)
        .toStringAsFixed(2));
double internal3 = num.parse(
        (Dashboard.internaljulyscore * 100 / Dashboard.internalWaight)
            .toStringAsFixed(2)) +
    num.parse((Dashboard.internalaugestscore * 100 / Dashboard.internalWaight)
        .toStringAsFixed(2)) +
    num.parse((Dashboard.internalseptscore * 100 / Dashboard.internalWaight)
        .toStringAsFixed(2));

double internal4 = num.parse(
        (Dashboard.internaloctscore * 100 / Dashboard.internalWaight)
            .toStringAsFixed(2)) +
    num.parse((Dashboard.internalnovscore * 100 / Dashboard.internalWaight)
        .toStringAsFixed(2)) +
    num.parse((Dashboard.internaldesscore * 100 / Dashboard.internalWaight)
        .toStringAsFixed(2));
//learning
double learning1 = num.parse(
        (Dashboard.learningjanscore * 100 / Dashboard.learningWaight)
            .toStringAsFixed(2)) +
    num.parse((Dashboard.learningfebscore * 100 / Dashboard.learningWaight)
        .toStringAsFixed(2)) +
    num.parse((Dashboard.learningmarchscore * 100 / Dashboard.learningWaight)
        .toStringAsFixed(2));
double learning2 = num.parse(
        (Dashboard.learningaprilscore * 100 / Dashboard.learningWaight)
            .toStringAsFixed(2)) +
    num.parse((Dashboard.learningmayscore * 100 / Dashboard.learningWaight)
        .toStringAsFixed(2)) +
    num.parse((Dashboard.learningjunescore * 100 / Dashboard.learningWaight)
        .toStringAsFixed(2));
double learning3 = num.parse(
        (Dashboard.learningjulyscore * 100 / Dashboard.learningWaight)
            .toStringAsFixed(2)) +
    num.parse((Dashboard.learningaugestscore * 100 / Dashboard.learningWaight)
        .toStringAsFixed(2)) +
    num.parse((Dashboard.learningseptscore * 100 / Dashboard.learningWaight)
        .toStringAsFixed(2));

double learning4 = num.parse(
        (Dashboard.learningoctscore * 100 / Dashboard.learningWaight)
            .toStringAsFixed(2)) +
    num.parse((Dashboard.learningnovscore * 100 / Dashboard.learningWaight)
        .toStringAsFixed(2)) +
    num.parse((Dashboard.learningdesscore * 100 / Dashboard.learningWaight)
        .toStringAsFixed(2));
String riskcolorf2() {
  if (financq2 < financq1) {
    return "assets/red.gif";
  } else if (financq2 == financq1) {
    return "assets/green.gif";
  } else {
    return "assets/green.gif";
  }
}

String riskcolorf3() {
  if (financq3 < financq2) {
    return "assets/red.gif";
  } else if (financq3 == financq2) {
    return "assets/green.gif";
  } else {
    return "assets/green.gif";
  }
}

String riskcolorf4() {
  if (financq4 < financq3) {
    return "assets/red.gif";
  } else if (financq4 == financq3) {
    return "assets/green.gif";
  } else {
    return "assets/green.gif";
  }
}

String trendf2() {
  if (financq2 < financq1) {
    return "assets/dec.gif";
  } else if (financq2 == financq1) {
    return "assets/inc.gif";
  } else {
    return "assets/inc.gif";
  }
}

String trendf3() {
  if (financq3 < financq2) {
    return "assets/dec.gif";
  } else if (financq3 == financq2) {
    return "assets/inc.gif";
  } else {
    return "assets/inc.gif";
  }
}

String trendf4() {
  if (financq4 < financq3) {
    return "assets/dec.gif";
  } else if (financq4 == financq3) {
    return "assets/inc.gif";
  } else {
    return "assets/inc.gif";
  }
}

var transactionHistory = [
  {
    "avatar": 'assets/quarter.png',
    "label": 'Quarter Name',
    "amount": "Achievement",
    "time": "assets/risk.png",
    "status": "assets/trend.png",
  },
  {
    "avatar": 'assets/quarter1.png',
    "label": 'Quarter 1',
    "amount": num.parse(custq1.toString()).toStringAsFixed(2),
    "time": "assets/green.gif",
    "status": "assets/inc.gif",
  },
  {
    "avatar": 'assets/quarter2.png',
    "label": 'Quarter 2',
    "amount": num.parse(custq2.toString()).toStringAsFixed(2),
    "time": riskcolorc2(),
    "status": trendc2(),
  },
  {
    "avatar": 'assets/quarter3.png',
    "label": 'Quarter 3',
    "amount": num.parse(custq3.toString()).toStringAsFixed(2),
    "time": riskcolorc3(),
    "status": trendc3(),
  },
  {
    "avatar": 'assets/quarter4.png',
    "label": 'Quarter 4',
    "amount": num.parse(custq4.toString()).toStringAsFixed(2),
    "time": riskcolorc4(),
    "status": trendc4(),
  },
];
String riskcolorc2() {
  if (custq2 < custq1) {
    return "assets/red.gif";
  } else if (custq2 == custq1) {
    return "assets/green.gif";
  } else {
    return "assets/green.gif";
  }
}

String riskcolorc3() {
  if (custq3 < custq2) {
    return "assets/red.gif";
  } else if (custq3 == custq2) {
    return "assets/green.gif";
  } else {
    return "assets/green.gif";
  }
}

String riskcolorc4() {
  if (custq4 < custq3) {
    return "assets/red.gif";
  } else if (custq4 == custq3) {
    return "assets/green.gif";
  } else {
    return "assets/green.gif";
  }
}

String trendc2() {
  if (custq2 < custq1) {
    return "assets/dec.gif";
  } else if (custq2 == custq1) {
    return "assets/inc.gif";
  } else {
    return "assets/inc.gif";
  }
}

String trendc3() {
  if (custq3 < custq2) {
    return "assets/dec.gif";
  } else if (custq3 == custq2) {
    return "assets/inc.gif";
  } else {
    return "assets/inc.gif";
  }
}

String trendc4() {
  if (custq4 < custq3) {
    return "assets/dec.gif";
  } else if (custq4 == custq3) {
    return "assets/inc.gif";
  } else {
    return "assets/inc.gif";
  }
}

var transactionHistory2 = [
  {
    "avatar": 'assets/quarter.png',
    "label": 'Quarter Name',
    "amount": "Achievement",
    "time": "assets/risk.png",
    "status": "assets/trend.png",
  },
  {
    "avatar": 'assets/quarter1.png',
    "label": 'Quarter 1',
    "amount": num.parse(financq1.toString()).toStringAsFixed(2),
    "time": "assets/green.gif",
    "status": "assets/inc.gif",
  },
  {
    "avatar": 'assets/quarter2.png',
    "label": 'Quarter 2',
    "amount": num.parse(financq2.toString()).toStringAsFixed(2),
    "time": riskcolorf2(),
    "status": trendf2(),
  },
  {
    "avatar": 'assets/quarter3.png',
    "label": 'Quarter 3',
    "amount": num.parse(financq3.toString()).toStringAsFixed(2),
    "time": riskcolorf3(),
    "status": trendf3(),
  },
  {
    "avatar": 'assets/quarter4.png',
    "label": 'Quarter 4',
    "amount": num.parse(financq4.toString()).toStringAsFixed(2),
    "time": riskcolorf4(),
    "status": trendf4(),
  },
];
String riskcolori2() {
  if (internal2 < internal1) {
    return "assets/red.gif";
  } else if (internal2 == internal1) {
    return "assets/green.gif";
  } else {
    return "assets/green.gif";
  }
}

String riskcolori3() {
  if (internal3 < internal2) {
    return "assets/red.gif";
  } else if (internal3 == internal2) {
    return "assets/green.gif";
  } else {
    return "assets/green.gif";
  }
}

String riskcolori4() {
  if (internal4 < internal3) {
    return "assets/red.gif";
  } else if (internal4 == internal3) {
    return "assets/green.gif";
  } else {
    return "assets/green.gif";
  }
}

String trendi2() {
  if (internal2 < internal1) {
    return "assets/dec.gif";
  } else if (internal2 == internal1) {
    return "assets/inc.gif";
  } else {
    return "assets/inc.gif";
  }
}

String trendi3() {
  if (internal3 < internal2) {
    return "assets/dec.gif";
  } else if (internal3 == internal2) {
    return "assets/inc.gif";
  } else {
    return "assets/inc.gif";
  }
}

String trendi4() {
  if (internal4 < internal3) {
    return "assets/dec.gif";
  } else if (internal4 == internal3) {
    return "assets/inc.gif";
  } else {
    return "assets/inc.gif";
  }
}

var transactionHistory3 = [
  {
    "avatar": 'assets/quarter.png',
    "label": 'Quarter Name',
    "amount": "Achievement",
    "time": "assets/risk.png",
    "status": "assets/trend.png",
  },
  {
    //internal1
    "avatar": 'assets/quarter1.png',
    "label": 'Quarter 1',
    "amount": num.parse(internal2.toString()).toStringAsFixed(2),
    "time": "assets/green.gif",
    "status": "assets/inc.gif",
  },
  {
    "avatar": 'assets/quarter2.png',
    "label": 'Quarter 2',
    "amount": num.parse(internal2.toString()).toStringAsFixed(2),
    "time": riskcolori2(),
    "status": trendi2(),
  },
  {
    "avatar": 'assets/quarter3.png',
    "label": 'Quarter 3',
    "amount": num.parse(internal3.toString()).toStringAsFixed(2),
    "time": riskcolori3(),
    "status": trendi3(),
  },
  {
    "avatar": 'assets/quarter4.png',
    "label": 'Quarter 4',
    "amount": num.parse(internal4.toString()).toStringAsFixed(2),
    "time": riskcolori4(),
    "status": trendi4(),
  },
];
String riskcolorl2() {
  if (learning2 < learning1) {
    return "assets/red.gif";
  } else if (learning2 == learning1) {
    return "assets/green.gif";
  } else {
    return "assets/green.gif";
  }
}

String riskcolorl3() {
  if (learning3 < learning2) {
    return "assets/red.gif";
  } else if (learning3 == learning2) {
    return "assets/green.gif";
  } else {
    return "assets/green.gif";
  }
}

String riskcolorl4() {
  if (learning4 < learning3) {
    return "assets/red.gif";
  } else if (learning4 == learning3) {
    return "assets/green.gif";
  } else {
    return "assets/green.gif";
  }
}

String trendl2() {
  if (learning2 < learning1) {
    return "assets/dec.gif";
  } else if (learning2 == learning1) {
    return "assets/inc.gif";
  } else {
    return "assets/inc.gif";
  }
}

String trendl3() {
  if (learning3 < learning2) {
    return "assets/dec.gif";
  } else if (learning3 == learning2) {
    return "assets/inc.gif";
  } else {
    return "assets/inc.gif";
  }
}

String trendl4() {
  if (learning4 < learning3) {
    return "assets/dec.gif";
  } else if (learning4 == learning3) {
    return "assets/inc.gif";
  } else {
    return "assets/inc.gif";
  }
}

var transactionHistory4 = [
  {
    "avatar": 'assets/quarter.png',
    "label": 'Quarter Name',
    "amount": "Achievement",
    "time": "assets/risk.png",
    "status": "assets/trend.png",
  },
  {
    "avatar": 'assets/quarter1.png',
    "label": 'Quarter 1',
    "amount": num.parse(learning1.toString()).toStringAsFixed(2),
    "time": "assets/green.gif",
    "status": "assets/inc.gif",
  },
  {
    "avatar": 'assets/quarter2.png',
    "label": 'Quarter 2',
    "amount": num.parse(learning2.toString()).toStringAsFixed(2),
    "time": riskcolorl2(),
    "status": trendl2(),
  },
  {
    "avatar": 'assets/quarter3.png',
    "label": 'Quarter 3',
    "amount": num.parse(learning3.toString()).toStringAsFixed(2),
    "time": riskcolorl3(),
    "status": trendl3(),
  },
  {
    "avatar": 'assets/quarter4.png',
    "label": 'Quarter 4',
    "amount": num.parse(learning4.toString()).toStringAsFixed(2),
    "time": riskcolorl4(),
    "status": trendl4(),
  },
];
