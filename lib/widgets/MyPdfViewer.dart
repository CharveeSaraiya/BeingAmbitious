// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:native_pdf_view/native_pdf_view.dart';

// class MyPdfViewer extends StatefulWidget {
//   final String pdfPath;
//   MyPdfViewer({required this.pdfPath}) {
//     print("File name");
//     print(this.pdfPath);
//   }
//   @override
//   _MyPdfViewerState createState() => _MyPdfViewerState();
// }

// class _MyPdfViewerState extends State<MyPdfViewer> {
//   late PdfController pdfViewController;
//   int? pages = 0;
//   int? currentPage = 0;
//   bool isReady = false;
//   String errorMessage = '';

//   //  final Completer<PDFViewController> _controller =
//   //     Completer<PDFViewController>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Document"),
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(Icons.share),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Stack(
//         children: <Widget>[
//           PdfView(
//             filePath: PdfDocument.openAsset(widget.pdfPath),
//             onRender: (_pages) {
//               setState(() {
//                 pages = _pages;
//                 isReady = true;
//               });
//             },
//             onError: (error) {
//               setState(() {
//                 errorMessage = error.toString();
//               });
//               print(error.toString());
//             },
//             onPageError: (page, error) {
//               setState(() {
//                 errorMessage = '$page: ${error.toString()}';
//               });
//               print('$page: ${error.toString()}');
//             },
//             onViewCreated: (PDFViewController pdfViewController) {
//               pdfViewController;
//             },
//           ),
//           errorMessage.isEmpty
//               ? !isReady
//                   ? const Center(
//                       child: CircularProgressIndicator(),
//                     )
//                   : Container()
//               : Center(
//                   child: Text(errorMessage),
//                 )
//         ],
//       ),
//     );
//   }
// }
