part of 'services.dart';

abstract final class ExcelHelper {
  static Future<String?> exportOrder({
    required List<Order> orders,
    DateTimeRange? dateTimeRange,
  }) async {
    try {
      CellStyle boldStyle = CellStyle(bold: true);

      Excel excel = Excel.createExcel();

      for (Order order in orders) {
        Sheet sheet = excel[order.orderersName ?? '?'];

        int currentRow = 1;
        for (int i = 0; i < 7; i++) {
          Data cell = sheet.cell(CellIndex.indexByString('A${i + currentRow}'));
          cell.value = TextCellValue([
            'Nama pemesan',
            'Alamat',
            'Tipe biji',
            'Kota asal',
            'Jumlah',
            'Total',
            'Tanggal pemesanan',
          ][i]);
          cell.cellStyle = boldStyle;

          cell = sheet.cell(CellIndex.indexByString('B${i + currentRow}'));
          cell.value = switch (i) {
            0 => TextCellValue(order.orderersName ?? ''),
            1 => TextCellValue(order.address ?? ''),
            2 => TextCellValue(order.fromDistrict ?? ''),
            3 => TextCellValue(order.beanType?.text ?? ''),
            4 => IntCellValue(order.amount ?? 0),
            5 => DoubleCellValue(order.total ?? 0.0),
            6 => TextCellValue((order.createdAt ?? DateTime.now()).toFormattedDate(withWeekday: true, withMonthName: true, withHour: true)),
            _ => null,
          };
          if ([5].contains(i)) {
            cell.cellStyle = switch (i) {
              5 => CellStyle(numberFormat: const CustomNumericNumFormat(formatCode: '#,##0')),
              _ => null,
            };
          }
        }

        currentRow = 7;

        for (int i = 0; i < 6; i++) {
          Data cell = sheet.cell(CellIndex.indexByColumnRow(columnIndex: i, rowIndex: currentRow));
          cell.value = TextCellValue([
            'Time1',
            'Time2',
            'ET',
            'BT',
            'Δ BT',
            'Event',
          ][i]);
          cell.cellStyle = boldStyle;
        }

        currentRow++;

        for (Degree degree in order.roastings?.first.degrees ?? []) {
          for (int i = 0; i < 6; i++) {
            Data cell = sheet.cell(CellIndex.indexByColumnRow(columnIndex: i, rowIndex: currentRow));
            cell.value = switch (i) {
              1 => TextCellValue(Duration(milliseconds: degree.timeElapsed?.toInt() ?? 0).toFormattedString()),
              2 => IntCellValue(degree.envTemp?.toInt() ?? 0),
              3 => IntCellValue(degree.beanTemp?.toInt() ?? 0),
              5 => TextCellValue(degree.type?.text ?? ''),
              _ => null,
            };
          }
          currentRow++;
        }
      }

      excel.delete('Sheet1');

      List<int>? bytes = excel.save();

      if (bytes == null) throw 'Gagal menyimpan data';

      Directory? directory = await getExternalStorageDirectory();

      if (directory == null) throw 'Gagal mengambil directory';

      DateTime? start = dateTimeRange?.start;
      DateTime? end = dateTimeRange?.end;

      String fileName = '${start?.toFormattedDate(withMonthName: true)} - ${end?.toFormattedDate(withMonthName: true)}';

      File file = File(path.joinAll([path.dirname(directory.path), 'roastings/$fileName.xlsx']));

      int fileIteration = 1;
      while (await file.exists()) {
        file = File(path.joinAll([path.dirname(directory.path), 'roastings/$fileName (${fileIteration++}).xlsx']));
      }

      if (!await file.exists()) await file.create(recursive: true);
      await file.writeAsBytes(bytes);

      debugPrint('filePath : ${file.path}');

      return file.path;
    } catch (e) {
      showErrorDialog(e.toString());
    }

    return null;
  }
}
