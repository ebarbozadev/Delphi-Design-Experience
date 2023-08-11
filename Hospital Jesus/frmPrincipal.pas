unit frmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  frmHeader, frmHeaderSecundario, frmPerfil, frmAreas, FMX.Effects,
  FMX.Filter.Effects;

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
    procedure montarPerfil;
    procedure montarAreas;
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
  montarPerfil;
  montarAreas;
end;

{$REGION 'MONTAR HEADER'}
procedure TfrmUnitPrincipal.montarAreas;
begin
  SectionAreas.AddObject(TfrmUnitAreas.Create(Self).body);
end;

procedure TfrmUnitPrincipal.montarHeader;
begin
  Header.AddObject(TfrmUnitHeader.Create(Self).Body);
end;

procedure TfrmUnitPrincipal.montarHeaderSecundario;
begin
  HeaderSecundario.AddObject(TfrmUnitHeaderSecundario.Create(Self).Body);
end;

procedure TfrmUnitPrincipal.montarPerfil;
begin
  SectionPerfil.AddObject(TfrmUnitPerfil.Create(Self).body);
end;

{$ENDREGION}

end.
