unit UL.TUFlowGridLayout;

interface

uses
  System.Classes, System.Types,
  VCL.Controls, VCL.Graphics, VCL.ExtCtrls;

type
  TUFlowGridLayout = class(TPanel)
    private
      FMaxColumns: Integer;
      FAlignSpace: Integer;
      FOneCol2List: Boolean;
      FItemWidth: Integer;
      FItemHeight: Integer;
      FListItemHeight: Integer;

    protected
      procedure Resize; override;

    public
      constructor Create(aOwner: TComponent); override;
      function GetColumnCount: Integer;

    published
      property MaxColumns: Integer read FMaxColumns write FMaxColumns default 5;
      property AlignSpace: Integer read FAlignSpace write FAlignSpace default 20;
      property OneCol2List: Boolean read FOneCol2List write FOneCol2List default true;
      property ItemWidth: Integer read FItemWidth write FItemWidth default 250;
      property ItemHeight: Integer read FItemHeight write FItemHeight default 80;
      property ListItemHeight: Integer read FListItemHeight write FListItemHeight default 60;
  end;

implementation

{ TUFlowGridLayout }

constructor TUFlowGridLayout.Create(aOwner: TComponent);
begin
  inherited;

  BevelOuter := bvNone;
  Color := $E6E6E6;
  ShowCaption := false;

  FMaxColumns := 5;
  FAlignSpace := 20;
  FOneCol2List := true;
  FItemWidth := 250;
  FItemHeight := 80;
  FListItemHeight := 60;
end;

procedure TUFlowGridLayout.Resize;
var
  ColCount: Integer;
  FrameWidth: Integer;
  LeftSide: Integer;
  i, Col, Row, ItemLeft, ItemTop: Integer;
  Item: TControl;
begin
  inherited;

  ColCount := GetColumnCount;
  FrameWidth := ColCount * ItemWidth + (ColCount + 1) * AlignSpace;
  LeftSide := (Width - FrameWidth) div 2;

  for i := 0 to ControlCount - 1 do
    begin
      Item := Controls[i];

      Col := i mod ColCount;
      Row := i div ColCount;
      if (ColCount = 1) and (OneCol2List) then
        begin
          ItemLeft := 0;
          ItemTop := Row * ListItemHeight;
          Item.Width := Width;
          Item.Height := ListItemHeight;
        end
      else
        begin
          ItemLeft := LeftSide + Col * ItemWidth + (Col + 1) * AlignSpace;
          ItemTop := 0 + Row * ItemHeight + (Row + 1) * AlignSpace;
          Item.Width := ItemWidth;
          Item.Height := ItemHeight;
        end;

      Item.Top := ItemTop;
      Item.Left := ItemLeft;
    end;
end;

function TUFlowGridLayout.GetColumnCount: Integer;
var
  NeededWidth: Integer;
begin
  Result := MaxColumns + 1;

  repeat
    Result := Result - 1;
    NeededWidth :=
      Result * ItemWidth +        //  Items width on row
      (Result + 1) * AlignSpace;  //  Space between items
  until Width > NeededWidth;

  if Result = 0 then
    Result := 1;
end;

end.
