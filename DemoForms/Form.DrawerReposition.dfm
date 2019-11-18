object formDrawerReposition: TformDrawerReposition
  Left = 0
  Top = 0
  Caption = 'TURepositionLayout (drawer demo)'
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
  object layoutDrawerReposition: TURepositionLayout
    Left = 0
    Top = 0
    Width = 900
    Height = 600
    Align = alClient
    BevelOuter = bvNone
    Caption = 'layoutDrawerReposition'
    Color = 15132390
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    PanelA = PanelA
    PanelB = PanelB
    MinWidth = 400
    MaxWidth = 900
    MaxHeight = 300
    Layout1.AAlign = alLeft
    Layout1.AWidth = 0
    Layout1.AHeight = 0
    Layout1.BAlign = alClient
    Layout1.BWidth = 0
    Layout1.BHeight = 250
    Layout2.AAlign = alLeft
    Layout2.AWidth = 50
    Layout2.AHeight = 0
    Layout2.BAlign = alClient
    Layout2.BWidth = 300
    Layout2.BHeight = 0
    Layout3.AAlign = alLeft
    Layout3.AWidth = 320
    Layout3.AHeight = 0
    Layout3.BAlign = alClient
    Layout3.BWidth = 300
    Layout3.BHeight = 0
    Layout4.AAlign = alLeft
    Layout4.AWidth = 0
    Layout4.AHeight = 0
    Layout4.BAlign = alClient
    Layout4.BWidth = 0
    Layout4.BHeight = 200
    object PanelA: TPanel
      Left = 0
      Top = 0
      Width = 320
      Height = 600
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'A'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object Button3: TButton
        Left = 0
        Top = 0
        Width = 320
        Height = 57
        Align = alTop
        Caption = 'Background'
        CommandLinkHint = 'Change your background image'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Style = bsCommandLink
        TabOrder = 0
      end
      object Button4: TButton
        Left = 0
        Top = 57
        Width = 320
        Height = 57
        Align = alTop
        Caption = 'Colors'
        CommandLinkHint = 'Change colors in Windows'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Style = bsCommandLink
        TabOrder = 1
      end
      object Button5: TButton
        Left = 0
        Top = 114
        Width = 320
        Height = 57
        Align = alTop
        Caption = 'Lock screen'
        CommandLinkHint = 'Notifications, image'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Style = bsCommandLink
        TabOrder = 2
      end
    end
    object PanelB: TPanel
      Left = 320
      Top = 0
      Width = 580
      Height = 600
      Align = alClient
      BevelOuter = bvNone
      Caption = 'B'
      Color = 15921906
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object Button1: TButton
        Left = 10
        Top = 10
        Width = 160
        Height = 50
        Caption = 'Inline drawer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 180
        Top = 10
        Width = 160
        Height = 50
        Caption = 'Overlay drawer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button2Click
      end
    end
  end
end
