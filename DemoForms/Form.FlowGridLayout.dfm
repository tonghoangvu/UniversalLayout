object formFlowGridLayout: TformFlowGridLayout
  Left = 0
  Top = 0
  Caption = 'TUFlowGridLayout'
  ClientHeight = 600
  ClientWidth = 900
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 15
  object layoutFlowGrid: TUFlowGridLayout
    Left = 0
    Top = 0
    Width = 900
    Height = 600
    Align = alClient
    BevelOuter = bvNone
    Caption = 'layoutFlowGrid'
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Button1: TButton
      Left = 55
      Top = 20
      Width = 250
      Height = 80
      Caption = 'System'
      CommandLinkHint = 'Display, sound, notifications, power'
      Style = bsCommandLink
      TabOrder = 0
    end
    object Button2: TButton
      Left = 325
      Top = 20
      Width = 250
      Height = 80
      Caption = 'Devices'
      CommandLinkHint = 'Bluetooth, printers, mouse'
      Style = bsCommandLink
      TabOrder = 1
    end
    object Button3: TButton
      Left = 595
      Top = 20
      Width = 250
      Height = 80
      Caption = 'Phone'
      CommandLinkHint = 'Link your Android, iPhone'
      Style = bsCommandLink
      TabOrder = 2
    end
    object Button4: TButton
      Left = 55
      Top = 120
      Width = 250
      Height = 80
      Caption = 'Network & Internet'
      CommandLinkHint = 'Wi-Fi, airplance mode, VPN'
      Style = bsCommandLink
      TabOrder = 3
    end
    object Button5: TButton
      Left = 325
      Top = 120
      Width = 250
      Height = 80
      Caption = 'Personalization'
      CommandLinkHint = 'Background, lock screen, colors'
      Style = bsCommandLink
      TabOrder = 4
    end
    object Button6: TButton
      Left = 595
      Top = 120
      Width = 250
      Height = 80
      Caption = 'Apps'
      CommandLinkHint = 'Uninstall, defaults, optional features'
      Style = bsCommandLink
      TabOrder = 5
    end
    object Button7: TButton
      Left = 55
      Top = 220
      Width = 250
      Height = 80
      Caption = 'Accounts'
      CommandLinkHint = 'Your accounts, email, sync, work, family'
      Style = bsCommandLink
      TabOrder = 6
    end
    object Button8: TButton
      Left = 325
      Top = 220
      Width = 250
      Height = 80
      Caption = 'Time & Language'
      CommandLinkHint = 'Speech, region, date'
      Style = bsCommandLink
      TabOrder = 7
    end
  end
end
