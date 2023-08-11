unit frmHeader;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Objects,
  frmPrincipal.ItemMenuPrincipal;

type
  TfrmUnitHeader = class(TForm)
    bkBody: TRectangle;
    Body: TLayout;
    Header: TLayout;
    lbNomeLogo: TLabel;
    sectionPrincipal: TLayout;
    headerSecundario: TLayout;
    lbMenuPrincipal: TLabel;
    flowItensMenuPrincipal: TFlowLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure montarMenuPrincipal;

    procedure montarInicio(Sender : TObject);
    procedure montarSobre(Sender : TObject);
  end;

var
  frmUnitHeader: TfrmUnitHeader;

implementation

{$R *.fmx}

procedure TfrmUnitHeader.FormCreate(Sender: TObject);
begin
  montarMenuPrincipal;
end;

procedure TfrmUnitHeader.montarInicio(Sender : TObject);
begin
  ShowMessage('Início Montado');
end;

procedure TfrmUnitHeader.montarSobre(Sender: TObject);
begin
  ShowMessage('Sobre Montado');
end;

procedure TfrmUnitHeader.montarMenuPrincipal;
begin
  flowItensMenuPrincipal.AddObject(TfrmItemMenuPrincipal.Create(Self).montarItem('Início', 'menu_principal_casa', montarInicio).Body);
  flowItensMenuPrincipal.AddObject(TfrmItemMenuPrincipal.Create(Self).montarItem('Sobre', 'menu_principal_sobre', montarSobre).Body);
end;

end.
