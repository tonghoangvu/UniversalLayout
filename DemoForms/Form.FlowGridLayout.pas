unit Form.FlowGridLayout;

interface

uses
  UL.TUFlowGridLayout,
  System.SysUtils, System.Variants, System.Classes,
  Winapi.Windows, Winapi.Messages,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TformFlowGridLayout = class(TForm)
    layoutFlowGrid: TUFlowGridLayout;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formFlowGridLayout: TformFlowGridLayout;

implementation

{$R *.dfm}

end.
