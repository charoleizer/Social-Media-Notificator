object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 300
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
  object btnEmailNotify: TButton
    Left = 24
    Top = 32
    Width = 89
    Height = 25
    Caption = 'Email Notify'
    TabOrder = 0
    OnClick = btnEmailNotifyClick
  end
  object btnTelegramNotify: TButton
    Left = 24
    Top = 72
    Width = 89
    Height = 25
    Caption = 'Telegram Notify'
    TabOrder = 1
    OnClick = btnTelegramNotifyClick
  end
end
