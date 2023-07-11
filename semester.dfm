object Form5: TForm5
  Left = 192
  Top = 152
  Width = 928
  Height = 480
  Caption = 'Semester'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 24
    Width = 59
    Height = 13
    Caption = 'ID Semester'
  end
  object Label2: TLabel
    Left = 48
    Top = 56
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object Label3: TLabel
    Left = 48
    Top = 88
    Width = 45
    Height = 13
    Caption = 'Semester'
  end
  object Label4: TLabel
    Left = 48
    Top = 120
    Width = 63
    Height = 13
    Caption = 'Tingkat Kelas'
  end
  object Label5: TLabel
    Left = 48
    Top = 152
    Width = 41
    Height = 13
    Caption = 'ID Siswa'
  end
  object Label6: TLabel
    Left = 440
    Top = 24
    Width = 34
    Height = 13
    Caption = 'ID Poin'
  end
  object Label7: TLabel
    Left = 440
    Top = 56
    Width = 62
    Height = 13
    Caption = 'ID Wali Kelas'
  end
  object Label8: TLabel
    Left = 440
    Top = 88
    Width = 65
    Height = 13
    Caption = 'ID Orang Tua'
  end
  object Label9: TLabel
    Left = 440
    Top = 120
    Width = 39
    Height = 13
    Caption = 'ID Kelas'
  end
  object btn1: TButton
    Left = 88
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 0
  end
  object btn2: TButton
    Left = 184
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 1
  end
  object btn3: TButton
    Left = 280
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 2
  end
  object btn4: TButton
    Left = 376
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 3
  end
  object btn5: TButton
    Left = 472
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 4
  end
  object edt1: TEdit
    Left = 160
    Top = 24
    Width = 257
    Height = 21
    TabOrder = 5
  end
  object edt2: TEdit
    Left = 160
    Top = 56
    Width = 257
    Height = 21
    TabOrder = 6
  end
  object edt3: TEdit
    Left = 160
    Top = 88
    Width = 257
    Height = 21
    TabOrder = 7
  end
  object edt4: TEdit
    Left = 160
    Top = 120
    Width = 257
    Height = 21
    TabOrder = 8
  end
  object edt5: TEdit
    Left = 160
    Top = 152
    Width = 257
    Height = 21
    TabOrder = 9
  end
  object dbgrd1: TDBGrid
    Left = 88
    Top = 264
    Width = 729
    Height = 145
    DataSource = ds1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn6: TButton
    Left = 568
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 11
  end
  object edt6: TEdit
    Left = 552
    Top = 24
    Width = 257
    Height = 21
    TabOrder = 12
  end
  object edt7: TEdit
    Left = 552
    Top = 56
    Width = 257
    Height = 21
    TabOrder = 13
  end
  object edt8: TEdit
    Left = 552
    Top = 88
    Width = 257
    Height = 21
    TabOrder = 14
  end
  object edt9: TEdit
    Left = 552
    Top = 120
    Width = 257
    Height = 21
    TabOrder = 15
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from semester')
    Params = <>
    Left = 200
    Top = 320
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'datasiswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\KULIAH\SEMESTER 4\VISUAL\TUGAS AKHIR\libmysql.dll'
    Left = 240
    Top = 320
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 200
    Top = 368
  end
  object frxrprt1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45099.923103125000000000
    ReportOptions.LastChange = 45099.943111203700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 840
    Top = 120
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object ReportTitle1: TfrxReportTitle
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 298.582870000000000000
          Top = 15.118120000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'LAPORAN DATA KUSTOMER')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 26.456710000000000000
        Top = 86.929190000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 22.677180000000000000
          Width = 45.354360000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 68.031540000000000000
          Width = 260.787570000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 328.819110000000000000
          Width = 105.826840000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TELEPON')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 434.645950000000000000
          Width = 139.842610000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 574.488560000000000000
          Width = 105.826840000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'KOTA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 680.315400000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'KODEPOS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 30.236240000000000000
        Top = 173.858380000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo8: TfrxMemoView
          Left = 22.677180000000000000
          Width = 45.354360000000000000
          Height = 30.236240000000000000
          DataField = 'idkustomer'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."idkustomer"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 68.031540000000000000
          Width = 260.787570000000000000
          Height = 30.236240000000000000
          DataField = 'nmkustomer'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."nmkustomer"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 328.819110000000000000
          Width = 105.826840000000000000
          Height = 30.236240000000000000
          DataField = 'telp'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."telp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 434.645950000000000000
          Width = 139.842610000000000000
          Height = 30.236240000000000000
          DataField = 'alamat'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 574.488560000000000000
          Width = 105.826840000000000000
          Height = 30.236240000000000000
          DataField = 'kota'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."kota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 680.315400000000000000
          Width = 94.488250000000000000
          Height = 30.236240000000000000
          DataField = 'kodepos'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."kodepos"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 840
    Top = 64
  end
end
