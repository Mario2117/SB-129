import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
class TopScreenTitleWidget extends StatelessWidget {
  const TopScreenTitleWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 66,
              width: 66,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: Color.fromRGBO(106, 213, 203, 100)),
            ),
            Expanded(
              child: Container(
                height: 66,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(228, 228, 228, 100)),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.raleway(
                      fontSize: 48,
                      color: const Color.fromRGBO(139, 139, 139, 100)),
                ),
              ),
            ),
            Container(
              height: 66,
              width: 66,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Color.fromRGBO(106, 213, 203, 100)),
            ),
          ],
        ),
      ),
    );
  }
}