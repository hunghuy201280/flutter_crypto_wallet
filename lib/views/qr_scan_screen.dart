import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/views/withdraw_token/withdraw_screen.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRScanScreen extends StatefulWidget {
  const QRScanScreen({Key? key}) : super(key: key);
  static const id = "QRScanScreen";

  @override
  State<QRScanScreen> createState() => _QRScanScreenState();
}

class _QRScanScreenState extends State<QRScanScreen> {
  bool isFound = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MobileScanner(
        allowDuplicates: false,
        onDetect: (barcode, args) {
          if (barcode.rawValue == null) {
            debugPrint('Failed to scan Barcode');
          } else {
            final String code = barcode.rawValue!;
            if (code.contains("wikipedia")) {
              if (!isFound) {
                isFound = true;

                Navigator.pushReplacementNamed(context, WithdrawScreen.id);
              }
            }
            debugPrint('Barcode found! $code');
          }
        },
      ),
    );
  }
}
