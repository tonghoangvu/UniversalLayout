unit UL.TURepositionLayout;

interface

uses
  UL.Classes,
  System.Classes, System.Types,
  VCL.Controls, VCL.ExtCtrls, VCL.Dialogs;

type
  TURepositionLayout = class(TPanel)
    private
      FPanelA: TPanel;
      FPanelB: TPanel;

      FMinWidth: Integer;
      FMaxWidth: Integer;
      FMaxHeight: Integer;

      FLayout1: TULayout;
      FLayout2: TULayout;
      FLayout3: TULayout;
      FLayout4: TULayout;

      FCurrentLayout: Integer;
      FOnSwitch: TNotifyEvent;

      procedure ApplyLayout(APanel, BPanel: TPanel; const LayoutIndex: Integer);

    protected
      procedure Resize; override;

    public
      constructor Create(aOwner: TComponent); override;
      destructor Destroy; override;

    published
      property PanelA: TPanel read FPanelA write FPanelA;
      property PanelB: TPanel read FPanelB write FPanelB;

      property MinWidth: Integer read FMinWidth write FMinWidth default 650;
      property MaxWidth: Integer read FMaxWidth write FMaxWidth default 1000;
      property MaxHeight: Integer read FMaxHeight write FMaxHeight default 700;

      property Layout1: TULayout read FLayout1 write FLayout1;
      property Layout2: TULayout read FLayout2 write FLayout2;
      property Layout3: TULayout read FLayout3 write FLayout3;
      property Layout4: TULayout read FLayout4 write FLayout4;

      property CurrentLayout: Integer read FCurrentLayout;

      property OnSwitch: TNotifyEvent read FOnSwitch write FOnSwitch;
  end;

implementation

{ TTURepositionLayout }

constructor TURepositionLayout.Create(aOwner: TComponent);
begin
  inherited Create(aOwner);

  BevelOuter := bvNone;
  Color := $E6E6E6;
  ShowCaption := false;

  FMinWidth := 650;
  FMaxWidth := 1000;
  FMaxHeight := 700;

  FLayout1 := TULayout.Create;
  FLayout2 := TULayout.Create;
  FLayout3 := TULayout.Create;
  FLayout4 := TULayout.Create;

  FLayout1.AAlign := alClient;
  FLayout1.BAlign := alBottom;
  FLayout1.BHeight := 250;

  FLayout2.AAlign := alClient;
  FLayout2.BAlign := alRight;
  FLayout2.BWidth := 300;

  FLayout3.AAlign := alLeft;
  FLayout3.AWidth := 900;
  FLayout3.BAlign := alRight;
  FLayout3.BWidth := 300;

  FLayout4.AAlign := alTop;
  FLayout4.AHeight := 550;
  FLayout4.BAlign := alTop;
  FLayout4.BHeight := 200;

  FCurrentLayout := 0;
end;

destructor TURepositionLayout.Destroy;
begin
  inherited;

  FLayout1.Free;
  FLayout2.Free;
  FLayout3.Free;
  FLayout4.Free;
end;

procedure TURepositionLayout.Resize;
begin
  inherited;

  if Width < MinWidth then
    begin
      if Height < MaxHeight then
        ApplyLayout(PanelA, PanelB, 1)
      else
        ApplyLayout(PanelA, PanelB, 4);
    end

  else if Width < MaxWidth then
    ApplyLayout(PanelA, PanelB, 2)

  else
    ApplyLayout(PanelA, PanelB, 3);
end;

procedure TURepositionLayout.ApplyLayout(APanel, BPanel: TPanel; const LayoutIndex: Integer);
var
  Layout: TULayout;
begin
  case LayoutIndex of
    1: Layout := Layout1;
    2: Layout := Layout2;
    3: Layout := Layout3;
    4: Layout := Layout4;
    else
      exit;
  end;

  if APanel <> nil then
    begin
      APanel.Align := Layout.AAlign;
      APanel.Width := Layout.AWidth;
      APanel.Height := Layout.AHeight;
    end;

  if BPanel <> nil then
    begin
      BPanel.Align := Layout.BAlign;
      BPanel.Width := Layout.BWidth;
      BPanel.Height := Layout.BHeight;
    end;

  FCurrentLayout := LayoutIndex;
  if Assigned(FOnSwitch) then
    FOnSwitch(Self);
end;

end.
