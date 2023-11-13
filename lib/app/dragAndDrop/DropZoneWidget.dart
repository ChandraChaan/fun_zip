import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:fun_zippy/app/utilities/colors_text_properties.dart';

import 'File_Data_Model.dart';

class DropZoneWidget extends StatefulWidget {
  final ValueChanged<File_Data_Model> onDroppedFile;

  const DropZoneWidget({
    Key? key,
    required this.onDroppedFile,
  }) : super(key: key);

  @override
  _DropZoneWidgetState createState() => _DropZoneWidgetState();
}

class _DropZoneWidgetState extends State<DropZoneWidget> {
  //controller to hold data of file dropped by user
  late DropzoneViewController controller;

  // a variable just to update UI color when user hover or leave the drop zone
  bool highlight = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 10),
        child: buildDecorattion(
            child: Stack(
          children: [
            DropzoneView(
                onCreated: (controller) => this.controller = controller,
                onHover: () => setState(() => highlight == true),
                onLeave: () => setState(() => highlight == false),
                onDrop: UploadedFile),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.cloud_upload_outlined,
                    size: 40,
                    color: AppColors.deepPurple,
                  ),
                  Text("Drop File in Template Format", style: AppTextStyles.lineText12Style,),
                ],
              ),
            ),
          ],
        )));
  }

  Widget buildDecorattion({required Widget child}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
          color: Colors.grey[300], padding: EdgeInsets.all(10), child: child
          // DottedBorder(
          //   borderType: BorderType.RRect,
          //   color: Colors.white,
          //   padding: EdgeInsets.zero,
          //   strokeWidth: 3,
          //   dashPattern: [8, 4],
          //   radius: Radius.circular(10),
          //   child: child,
          // )
          ),
    );
  }

  // Future

  Future UploadedFile(dynamic event) async {
    // this method is called when user drop the file in drop area in flutter

    final name = event.name;
    final mime = await controller.getFileMIME(event);
    final byte = await controller.getFileSize(event);
    final url = await controller.createFileUrl(event);
    print('Name : $name');
    print('Mime: $mime');
    print('Size : ${byte / (1024 * 1024)}');
    print('URL: $url');

    final droppedFile = File_Data_Model(
      name: name,
      mime: mime,
      bytes: byte,
      url: url,
    );

    widget.onDroppedFile(droppedFile);
    // update the data model with recent file uploaded
    // final droppedFile = File_Data_Model
    //   (name: name, mime: mime, bytes: byte, url: url);
    // //Update the UI
    // widget.onDroppedFile(droppedFile);
    // setState(() {
    //   highlight = false;
    // });
  }
//
// Widget buildDecoration({required Widget child}) {
//   final colorBackground = highlight ? Colors.blue : Colors.green;
//   return ClipRRect(
//     borderRadius: BorderRadius.circular(12),
//     child: Container(
//       padding: const EdgeInsets.all(10),
//       color: colorBackground,
//       child: DottedBorder(
//           borderType: BorderType.RRect,
//           color: Colors.white,
//           strokeWidth: 3,
//           dashPattern: const [8, 4],
//           radius: const Radius.circular(10),
//           padding: EdgeInsets.zero,
//           child: child
//       ),
//     ),
//   );
// }
}
