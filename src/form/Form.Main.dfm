object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
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
  object PageControlLayout: TPageControl
    Left = 0
    Top = 0
    Width = 635
    Height = 299
    ActivePage = TabSheetServer
    Align = alClient
    TabOrder = 0
    object TabSheetServer: TTabSheet
      Caption = 'Servidor'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Button1: TButton
        Left = 224
        Top = 64
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
  end
end
