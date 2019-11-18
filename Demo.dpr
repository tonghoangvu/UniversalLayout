program Demo;

uses
  Vcl.Forms,
  Form.RepositionLayout in 'DemoForms\Form.RepositionLayout.pas' {formRepositionLayout},
  Form.FlowGridLayout in 'DemoForms\Form.FlowGridLayout.pas' {formFlowGridLayout},
  Form.DrawerReposition in 'DemoForms\Form.DrawerReposition.pas' {formDrawerReposition};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformRepositionLayout, formRepositionLayout);
  Application.CreateForm(TformFlowGridLayout, formFlowGridLayout);
  Application.CreateForm(TformDrawerReposition, formDrawerReposition);
  Application.Run;
end.
