unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient,
  UnitFrameMenuLateral, Vcl.AppEvnts, frmAllBlack;

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
    pnMainEsquerdoMeio: TPanel;
    pnMEMTop: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    pnMEMTopEsquerdo: TPanel;
    pnMEMTEE: TPanel;
    pnMEMTEED: TPanel;
    Label7: TLabel;
    Image7: TImage;
    Label8: TLabel;
    Label9: TLabel;
    pnMEMTopMeio: TPanel;
    Image8: TImage;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    pnMEMTopDireito: TPanel;
    pnEMTDEsquerdo: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    pnEMTDMEio: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    pnMEMTEEE: TPanel;
    pnMEMTEDMeio: TPanel;
    DBGrid1: TDBGrid;
    pnMEMBottom: TPanel;
    Shape6: TShape;
    pnMEMBTop: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    pnMEMEBTMeio: TPanel;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1OrderNo: TFloatField;
    ClientDataSet1ShipToContact: TStringField;
    ClientDataSet1ItemsTotal: TCurrencyField;
    ClientDataSet1TaxRate: TFloatField;
    ClientDataSet1Freight: TCurrencyField;
    ClientDataSet1AmountPaid: TCurrencyField;
    ClientDataSet1CustNo: TFloatField;
    ApplicationEvents1: TApplicationEvents;
    procedure lbHeaderSairClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnMainDireitoResize(Sender: TObject);
    procedure ApplicationEvents1ModalBegin(Sender: TObject);
    procedure ApplicationEvents1ModalEnd(Sender: TObject);
  private
    { Private declarations }
    procedure AjustaGrid(DbGrid : TDBGrid);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AjustaGrid(DbGrid: TDBGrid);
const
  col_Codigo      = 11;
  col_Descricao   = 33;
  col_Quantidade  = 10;
  col_Preco       = 11;
  col_Desconto    = 11;
  col_Taxa        = 10;
  col_Total       = 10;
begin
  DbGrid.Columns[0].Width := Round((DbGrid.Width * col_Codigo) / 100);
  DbGrid.Columns[1].Width := Round((DbGrid.Width * col_Descricao) / 100);
  DbGrid.Columns[2].Width := Round((DbGrid.Width * col_Quantidade) / 100);
  DbGrid.Columns[3].Width := Round((DbGrid.Width * col_Preco) / 100);
  DbGrid.Columns[4].Width := Round((DbGrid.Width * col_Desconto) / 100);
  DbGrid.Columns[5].Width := Round((DbGrid.Width * col_Taxa) / 100);
  DbGrid.Columns[6].Width := Round((DbGrid.Width * col_Total) / 100);

  Label28.Left:= DbGrid.Left;
  Label29.Left:= Label28.Left + DbGrid.Columns[0].Width;
  Label30.Left:= Label29.Left + DbGrid.Columns[1].Width;
  Label31.Left:= Label30.Left + DbGrid.Columns[2].Width;
  Label32.Left:= Label31.Left + DbGrid.Columns[3].Width;
  Label33.Left:= Label32.Left + DbGrid.Columns[4].Width;
  Label34.Left:= Label33.Left + DbGrid.Columns[5].Width;
end;

procedure TForm1.ApplicationEvents1ModalBegin(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.ApplicationEvents1ModalEnd(Sender: TObject);
begin
  Form3.Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  FrameMenuLateral : TframeMenuLateral;
begin
  FrameMenuLateral := TframeMenuLateral.Create(Self);
  FrameMenuLateral.Parent := pnMainDireito;
  FrameMenuLateral.Show;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  AjustaGrid(DBGrid1);
end;

procedure TForm1.lbHeaderSairClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.pnMainDireitoResize(Sender: TObject);
begin
  AjustaGrid(DBGrid1);
end;

end.
