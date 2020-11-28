object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'NeoSkincare Cosm'#233'ticos Asi'#225'ticos'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 40
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 40
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 40
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 192
    Top = 61
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 3
    OnClick = Button4Click
  end
  object MaskEdit: TMaskEdit
    Left = 192
    Top = 34
    Width = 120
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 4
    Text = '  /  /    '
  end
end
