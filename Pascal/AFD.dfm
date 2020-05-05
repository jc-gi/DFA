object AFDForm: TAFDForm
  Left = 0
  Top = 0
  Caption = 'AFDForm'
  ClientHeight = 67
  ClientWidth = 423
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object VEdit: TEdit
    Left = 8
    Top = 8
    Width = 407
    Height = 21
    TabOrder = 0
  end
  object VButton: TButton
    Left = 8
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Validar'
    TabOrder = 1
    OnClick = VButtonClick
  end
end
