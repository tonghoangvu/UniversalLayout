unit Form.DrawerReposition;

interface

uses
  UL.TURepositionLayout,
  System.SysUtils, System.Variants, System.Classes,
  Winapi.Windows, Winapi.Messages,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, System.ImageList, Vcl.ImgList;

type
  TformDrawerReposition = class(TForm)
    layoutDrawerReposition: TURepositionLayout;
    PanelA: TPanel;
    PanelB: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Pr
  public
    { Public declarations }
  end;

var
  formDrawerReposition: TformDrawerReposition;

implementation

{$R *.dfm}

procedure TformDrawerReposition.Button1Click(Sender: TObject);
begin
  if layoutDrawerReposition.CurrentLayout = 2 then
    begin
      if PanelA.Width = layoutDrawerReposition.Layout2.AWidth then
        PanelA.Width := PanelA.Width + 200
      else
        PanelA.Width := PanelA.Width - 200;
    end;
end;

procedure TformDrawerReposition.Button2Click(Sender: TObject);
begin
  if layoutDrawerReposition.CurrentLayout = 2 then
    begin
      PanelB.Align := alRight;
      PanelB.Anchors := [akLeft, akTop, akRight, akBottom];
      PanelA.BringToFront;
      if PanelA.Width = layoutDrawerReposition.Layout2.AWidth then
        PanelA.Width := PanelA.Width + 200
      else
        PanelA.Width := PanelA.Width - 200;
    end;
end;

end.
