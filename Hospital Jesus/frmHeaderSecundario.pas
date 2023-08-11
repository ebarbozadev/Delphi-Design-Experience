unit frmHeaderSecundario;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Effects;

type
  TfrmUnitHeaderSecundario = class(TForm)
    bkBody: TRectangle;
    Body: TLayout;
    lyHistorico: TLayout;
    Layout2: TLayout;
    lyPerfil: TLayout;
    lbCadastros: TLabel;
    lbClientes: TLabel;
    lbJesusCristo: TLabel;
    CircleLogo: TCircle;
    lbPadrao1: TLabel;
    lbNome: TLabel;
    lyPLeft: TLayout;
    ShadowEffect1: TShadowEffect;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUnitHeaderSecundario: TfrmUnitHeaderSecundario;

implementation

{$R *.fmx}

end.
