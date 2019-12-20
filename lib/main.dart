import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UploadPdf(),
    );
  }
}

class UploadPdf extends StatefulWidget {
  @override
  _UploadPdfState createState() => _UploadPdfState();
}

class _UploadPdfState extends State<UploadPdf> {
  String _rg = '';
  String _cnh = '';
  String _ctps = '';
  String _passaport = ''; 
  String _compResidencia = '';
  bool _loadingPath = false;
  String _filename = '';

  // void _openFileExplorer() async {
  //   String _path = await FilePicker.getFilePath(
  //     type: FileType.CUSTOM,
  //     fileExtension: 'PDF'
  //   );
  //   setState(() {
  //     _loadingPath = false;
  //     if(_path != null)
  //       _filename = _path.split('/').last;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload de Documentos"),
      ),
      body: Column(
        children: <Widget>[
          Text("Faça upload dos documentos abaixo:"),
          Row(
            children: <Widget>[
              Text("RG: "),
              Text(_rg),
              IconButton(
                icon: Icon(Icons.file_upload),
                onPressed: () async {
                  String _path = await FilePicker.getFilePath(
                    type: FileType.CUSTOM,
                    fileExtension: 'PDF'
                  );
                  setState(() {
                    _loadingPath = false;
                    if(_path != null)
                      _rg = _path.split('/').last;
                  });
                }
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text("CNH: "),
              Text(_cnh),
              IconButton(
                icon: Icon(Icons.file_upload),
                onPressed: () async {
                  String _path = await FilePicker.getFilePath(
                    type: FileType.CUSTOM,
                    fileExtension: 'PDF'
                  );
                  setState(() {
                    _loadingPath = false;
                    if(_path != null)
                      _cnh = _path.split('/').last;
                  });
                }
              )
            ],
          ),
        ],
      )
    );
  }
}

