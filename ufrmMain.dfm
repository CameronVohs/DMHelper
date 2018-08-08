object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 480
  ClientWidth = 711
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    711
    480)
  PixelsPerInch = 96
  TextHeight = 13
  object btnLoad: TBitBtn
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Load'
    TabOrder = 0
    Visible = False
  end
  object btnSave: TBitBtn
    Left = 96
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 1
    OnClick = btnSaveClick
  end
  object lbNPCs: TListBox
    Left = 8
    Top = 79
    Width = 121
    Height = 193
    ItemHeight = 13
    TabOrder = 2
    OnClick = lbNPCsClick
  end
  object ScrollBox1: TScrollBox
    Left = 237
    Top = 8
    Width = 435
    Height = 452
    VertScrollBar.Tracking = True
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    OnMouseWheel = ScrollBox1MouseWheel
    DesignSize = (
      414
      448)
    object Panel1: TPanel
      Left = -1
      Top = 0
      Width = 415
      Height = 700
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      DesignSize = (
        415
        700)
      object image: TImage
        Left = 1
        Top = 0
        Width = 413
        Height = 618
        Anchors = [akLeft, akTop, akRight, akBottom]
        AutoSize = True
        Stretch = True
        ExplicitHeight = 448
      end
    end
  end
  object btnAddCreature: TBitBtn
    Left = 8
    Top = 39
    Width = 121
    Height = 25
    Caption = 'Add Creature'
    TabOrder = 4
    OnClick = btnAddCreatureClick
  end
end
