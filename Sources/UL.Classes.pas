unit UL.Classes;

interface

uses
  System.Classes,
  VCL.Controls;

type
  TUExtAlign = (
    ualNone, ualTop, ualLeft, ualRight, ualBottom,
    ualTopCenter, ualLeftCenter, ualRightCenter, ualBottomCenter,
    ualCenter, ualClient);

  TULayout = class(TPersistent)
    private
      FAAlign: TAlign;
      FAWidth: Integer;
      FAHeight: Integer;

      FBAlign: TAlign;
      FBWidth: Integer;
      FBHeight: Integer;

    published
      property AAlign: TAlign read FAAlign write FAAlign;
      property AWidth: Integer read FAWidth write FAWidth;
      property AHeight: Integer read FAHeight write FAHeight;

      property BAlign: TAlign read FBAlign write FBAlign;
      property BWidth: Integer read FBWidth write FBWidth;
      property BHeight: Integer read FBHeight write FBHeight;

      procedure Assign(Source: TPersistent); override;
  end;

implementation

{ TULayout }

procedure TULayout.Assign(Source: TPersistent);
begin
  if Source is TULayout then
    begin
      FAAlign := (Source as TULayout).AAlign;
      FAWidth := (Source as TULayout).AWidth;
      FAHeight := (Source as TULayout).AHeight;

      FBAlign := (Source as TULayout).BAlign;
      FBWidth := (Source as TULayout).BWidth;
      FBHeight := (Source as TULayout).BHeight;
    end
  else
    inherited;
end;

end.
