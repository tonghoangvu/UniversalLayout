unit Form.RepositionLayout;

interface

uses
  UL.TURepositionLayout,
  System.SysUtils, System.Variants, System.Classes,
  Winapi.Windows, Winapi.Messages,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TformRepositionLayout = class(TForm)
    layoutReposition: TURepositionLayout;
    PanelA: TPanel;
    PanelB: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formRepositionLayout: TformRepositionLayout;

implementation

{$R *.dfm}

end.
