unit RegisterPackage_UL;

interface

uses
  System.Classes;

procedure Register;

implementation

uses
  UL.TURepositionLayout, UL.TUFlowGridLayout;

procedure Register;
begin
  RegisterComponents('Universal Layout',
    [
      TURepositionLayout, TUFlowGridLayout
    ]);
end;

end.
