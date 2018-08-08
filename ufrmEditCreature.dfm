object frmEditCreature: TfrmEditCreature
  Left = 0
  Top = 0
  Caption = 'Edit Creature'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 39
    Top = 11
    Width = 27
    Height = 13
    Alignment = taRightJustify
    Caption = 'Name'
  end
  object Label2: TLabel
    Left = 36
    Top = 35
    Width = 30
    Height = 13
    Alignment = taRightJustify
    Caption = 'Image'
  end
  object Label3: TLabel
    Left = 30
    Top = 59
    Width = 36
    Height = 13
    Alignment = taRightJustify
    Caption = 'Max HP'
  end
  object Label4: TLabel
    Left = 52
    Top = 107
    Width = 14
    Height = 13
    Alignment = taRightJustify
    Caption = 'CR'
  end
  object Label5: TLabel
    Left = 24
    Top = 83
    Width = 42
    Height = 13
    Alignment = taRightJustify
    Caption = 'Initiative'
  end
  object Label6: TLabel
    Left = 236
    Top = 11
    Width = 14
    Height = 13
    Alignment = taRightJustify
    Caption = 'Str'
  end
  object Label7: TLabel
    Left = 231
    Top = 35
    Width = 19
    Height = 13
    Alignment = taRightJustify
    Caption = 'Dex'
  end
  object Label8: TLabel
    Left = 231
    Top = 59
    Width = 19
    Height = 13
    Alignment = taRightJustify
    Caption = 'Con'
  end
  object Label9: TLabel
    Left = 233
    Top = 107
    Width = 17
    Height = 13
    Alignment = taRightJustify
    Caption = 'Wis'
  end
  object Label10: TLabel
    Left = 236
    Top = 83
    Width = 14
    Height = 13
    Alignment = taRightJustify
    Caption = 'Int'
  end
  object Label11: TLabel
    Left = 231
    Top = 131
    Width = 19
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cha'
  end
  object Label12: TLabel
    Left = 54
    Top = 131
    Width = 12
    Height = 13
    Alignment = taRightJustify
    Caption = 'XP'
  end
  object btnSave: TBitBtn
    Left = 168
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 12
    OnClick = btnSaveClick
  end
  object edtName: TEdit
    Left = 72
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtImage: TEdit
    Left = 72
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtMaxHP: TEdit
    Left = 72
    Top = 56
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 2
  end
  object edtCR: TEdit
    Left = 72
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edtInit: TEdit
    Left = 72
    Top = 80
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 3
  end
  object edtStr: TEdit
    Left = 256
    Top = 8
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 6
  end
  object edtDex: TEdit
    Left = 256
    Top = 32
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 7
  end
  object edtCon: TEdit
    Left = 256
    Top = 56
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 8
  end
  object edtWis: TEdit
    Left = 256
    Top = 104
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 10
  end
  object edtInt: TEdit
    Left = 256
    Top = 80
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 9
  end
  object edtCha: TEdit
    Left = 256
    Top = 128
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 11
  end
  object edtXP: TEdit
    Left = 72
    Top = 128
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 5
  end
end
