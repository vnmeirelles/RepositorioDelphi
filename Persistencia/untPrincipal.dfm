object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 338
  ClientWidth = 635
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
    Left = 8
    Top = 8
    Width = 43
    Height = 13
    Caption = 'Matricula'
  end
  object Label2: TLabel
    Left = 135
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 135
    Top = 97
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label4: TLabel
    Left = 8
    Top = 97
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label6: TLabel
    Left = 8
    Top = 54
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object btnInserir: TButton
    Left = 535
    Top = 114
    Width = 75
    Height = 23
    Caption = 'btnInserir'
    TabOrder = 0
    OnClick = btnInserirClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 143
    Width = 602
    Height = 120
    DataSource = DataSource
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnGetAll: TButton
    Left = 8
    Top = 269
    Width = 75
    Height = 25
    Caption = 'btnGetAll'
    TabOrder = 2
    OnClick = btnGetAllClick
  end
  object edMatricula: TEdit
    Left = 8
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '001'
  end
  object edNome: TEdit
    Left = 135
    Top = 27
    Width = 475
    Height = 21
    TabOrder = 4
    Text = 'Vinicius Nogueira Meirelles'
  end
  object edEndereco: TEdit
    Left = 8
    Top = 69
    Width = 602
    Height = 21
    TabOrder = 5
    Text = 'Av. Edul Rangel '
  end
  object edTelefone: TEdit
    Left = 8
    Top = 116
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '16 981986837'
  end
  object edCPF: TEdit
    Left = 135
    Top = 115
    Width = 121
    Height = 22
    TabOrder = 7
    Text = '34938636832'
  end
  object DataSource: TDataSource
    DataSet = TDSServerModuleBaseDados.FDQuery
    Left = 128
    Top = 264
  end
end
