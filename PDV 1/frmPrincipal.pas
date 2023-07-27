unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    pnPrincipal: TPanel;
    pnHeader: TPanel;
    pnHeaderLogo: TPanel;
    lbHeaderLogo: TLabel;
    pnHeaderMeio: TPanel;
    lbHeaderMEio: TLabel;
    pnHeaderSair: TPanel;
    lbHeaderSair: TLabel;
    pnFooter: TPanel;
    pnFooterPart1: TPanel;
    pnFooterPart2: TPanel;
    pnFPT1Meio: TPanel;
    lbFPT1: TLabel;
    lbFPT1Data: TLabel;
    lbFPT1Horario: TLabel;
    pnFPT2Direita: TPanel;
    lb: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    pnMain: TPanel;
    pnMainEsquerdo: TPanel;
    pnMainDireito: TPanel;
    pnMainEsquerdoTop: TPanel;
    pnMETEsquerdo: TPanel;
    Image6: TImage;
    pnMETMeio: TPanel;
    pnMETDireito: TPanel;
    lbpnMETDireitoTotal: TLabel;
    Label4: TLabel;
    pnMainDireitoTop1: TPanel;
    pnMainDireitoTop2: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.