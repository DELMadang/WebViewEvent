unit uMain;

interface

uses
  System.SysUtils,
  System.Classes,
  System.JSON,

  Winapi.WebView2,
  Winapi.ActiveX,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Edge,
  Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    EdgeBrowser1: TEdgeBrowser;
    ToolBar: TPanel;
    tbCall: TSpeedButton;
    procedure EdgeBrowser1WebMessageReceived(Sender: TCustomEdgeBrowser; Args:
        TWebMessageReceivedEventArgs);
    procedure tbCallClick(Sender: TObject);
  private
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

constructor TfrmMain.Create(AOwner: TComponent);
begin
  inherited;

  var LFileName := ExtractFilePath(ParamStr(0)) + 'test.html';
  EdgeBrowser1.Navigate(LFileName)
end;

procedure TfrmMain.EdgeBrowser1WebMessageReceived(Sender: TCustomEdgeBrowser;
    Args: TWebMessageReceivedEventArgs);
var
  LMessage: PWideChar;
  LJSON: TJSONObject;
begin
  var LResult := Args.ArgsInterface.Get_webMessageAsJson(LMessage);
  if LResult = S_OK then
  begin
    LJSON := TJSONObject.ParseJSONValue(LMessage) as TJSONObject;
    ShowMessage(LJSON.ToJSON);
    LJSON.Free;
  end;
end;

procedure TfrmMain.tbCallClick(Sender: TObject);
begin
  EdgeBrowser1.ExecuteScript('messageBox("¾È³ç~ µ¨ÆÄÀÌ")');
end;

end.
