object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'WebView'
  ClientHeight = 796
  ClientWidth = 988
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object EdgeBrowser1: TEdgeBrowser
    Left = 0
    Top = 41
    Width = 988
    Height = 755
    Align = alClient
    TabOrder = 0
    AllowSingleSignOnUsingOSPrimaryAccount = False
    TargetCompatibleBrowserVersion = '117.0.2045.28'
    UserDataFolder = '%LOCALAPPDATA%\bds.exe.WebView2'
    OnWebMessageReceived = EdgeBrowser1WebMessageReceived
    ExplicitLeft = 32
    ExplicitTop = 48
    ExplicitWidth = 897
    ExplicitHeight = 673
  end
  object ToolBar: TPanel
    Left = 0
    Top = 0
    Width = 988
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 408
    ExplicitTop = 400
    ExplicitWidth = 185
    object tbCall: TSpeedButton
      Left = 1
      Top = 1
      Width = 96
      Height = 39
      Align = alLeft
      Caption = #54632#49688#54840#52636
      OnClick = tbCallClick
    end
  end
end
