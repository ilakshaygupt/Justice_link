import 'package:flutter/material.dart';
import 'package:justice_link/features/medical_updates/widgets/file_pick_button.dart';
import 'package:justice_link/features/medical_updates/widgets/open_file.dart';

class RequiredDocuments extends StatefulWidget {
  final String title;

  const RequiredDocuments({Key? key, required this.title}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RequiredDocumentsState createState() => _RequiredDocumentsState();
}

class _RequiredDocumentsState extends State<RequiredDocuments> {
  late String pickedFilePath = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 329,
      height: 77,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0,
            spreadRadius: 0.0,
            offset: Offset(0.0, 0.0),
          ),
        ],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(9, 3, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                MyElevatedButton(
                  onFilePicked: (filePath) {
                    setState(() {
                      pickedFilePath = filePath;
                    });
                  },
                  borderRadius: BorderRadius.circular(10),
                  child: const Text(
                    '+ Add File ',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ViewFile(filePath: pickedFilePath),
                      ),
                    );
                  },
                  child: const Text(
                    'View Files ',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
