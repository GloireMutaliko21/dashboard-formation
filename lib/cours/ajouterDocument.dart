import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class AjouterDocument extends StatefulWidget {
  const AjouterDocument({Key? key}) : super(key: key);

  @override
  State<AjouterDocument> createState() => _AjouterDocumentState();
}

class _AjouterDocumentState extends State<AjouterDocument> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () async {
              FilePickerResult? result = await FilePicker.platform
                  .pickFiles(withReadStream: true, allowMultiple: true);

              if (result == null) return;

              openFiles(result.files);

              final file = result.files.first;

              await saveFilePermanently(file);
              // openFile(file);
            },
            child: Row(
              children: const [
                Text('Join file'),
                Icon(
                  Icons.attachment,
                )
              ],
            ))
      ],
    );
  }

  void openFiles(List<PlatformFile> files) =>
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Center(
                // files: files,
                //     onOpenedFile: openFile,
                child: MaterialApp(
                  home: GridView.builder(
                      padding: const EdgeInsets.all(16),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 8,
                              crossAxisSpacing: 8),
                      itemCount: files.length,
                      itemBuilder: ((context, index) {
                        final file = files[index];
                        return InkWell(
                          onTap: () => openFile(file),
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Container(
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    file.extension!,
                                    style: const TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                )),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  file.name,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Text(
                                  '${file.size}',
                                  style: const TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        );
                      })),
                ),
              )));

  Future<File> saveFilePermanently(PlatformFile file) async {
    final appStorage = await getApplicationDocumentsDirectory();
    final newFile = File('${appStorage.path}/${file.name}');

    return File(file.path!).copy(newFile.path);
  }

  void openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }
}
