unit frmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  frmHeader, frmHeaderSecundario;

type
  TfrmUnitPrincipal = class(TForm)
    Body: TLayout;
    Header: TLayout;
    Main: TLayout;
    HeaderSecundario: TLayout;
    SectionPrincipal: TLayout;
    SectionPerfil: TLayout;
    SectionAreas: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure montarHeader;
    procedure montarHeaderSecundario;
  end;

var
  frmUnitPrincipal: TfrmUnitPrincipal;

implementation

{$R *.fmx}

{ TfrmUnitPrincipal }

procedure TfrmUnitPrincipal.FormCreate(Sender: TObject);
begin
  montarHeader;
  montarHeaderSecundario;
end;

{$REGION 'MONTAR HEADER'}
procedure TfrmUnitPrincipal.montarHeader;
begin
  Header.AddObject(frmHeader.TfrmUnitHeader.Create(Self).Body);
end;

procedure TfrmUnitPrincipal.montarHeaderSecundario;
begin
  HeaderSecundario.AddObject(frmHeaderSecundario.TfrmUnitHeaderSecundario.Create(Self).Body);
end;

{$ENDREGION}

end.
