import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_service/src/utils/resources/resources.dart';

void main() {
  test('i assets test', () {
    expect(File(I.circle).existsSync(), isTrue);
    expect(File(I.grommetIconsGoogle).existsSync(), isTrue);
    expect(File(I.logosFacebook).existsSync(), isTrue);
  });
}
