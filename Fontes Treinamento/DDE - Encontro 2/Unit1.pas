unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.WinXCtrls, Vcl.Imaging.jpeg, Datasnap.DBClient,
  Vcl.Imaging.pngimage, Vcl.AppEvnts;

type
  TForm1 = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    SplitView1: TSplitView;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    DBGrid1: TDBGrid;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Image2: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Shape1: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Image3: TImage;
    Image4: TImage;
    Label12: TLabel;
    Image5: TImage;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Panel11: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    dbcol_Codigo: TFloatField;
    dbcol_Descricao: TStringField;
    dbcol_Total: TCurrencyField;
    dbcol_Quantidade: TFloatField;
    dbcol_Preco: TCurrencyField;
    dbcol_Desconto: TCurrencyField;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    ApplicationEvents1: TApplicationEvents;
    procedure Label2Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel6Resize(Sender: TObject);
    procedure ApplicationEvents1ModalBegin(Sender: TObject);
    procedure ApplicationEvents1ModalEnd(Sender: TObject);
  private
    { Private declarations }
    procedure AjustaGrid(Grid : TDbGrid);
    public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Frame.Pagamento, Frame.Menu, Form.Fundo;


procedure TForm1.AjustaGrid(Grid : TDbGrid);
const
  col_Codigo = 13.79;
  col_Descricao = 27.30; //27.40
  col_Quantidade = 18.23;
  col_Preco = 12.68;
  col_Desconto = 14.90;
  col_Total = 11.58;
begin
  Grid.Columns[0].Width := round((Grid.Width * col_Codigo) / 100);
  Grid.Columns[1].Width := round((Grid.Width * col_Descricao) / 100);
  Grid.Columns[2].Width := round((Grid.Width * col_Quantidade) / 100);
  Grid.Columns[3].Width := round((Grid.Width * col_Preco) / 100);
  Grid.Columns[4].Width := round((Grid.Width * col_Desconto) / 100);
  Grid.Columns[5].Width := round((Grid.Width * col_Total) / 100);

  Label16.Left := Grid.Left;
  Label17.Left := Label16.Left + Grid.Columns[0].Width;
  Label18.Left := Label17.Left + Grid.Columns[1].Width;
  Label19.Left := Label18.Left + Grid.Columns[2].Width;
  Label20.Left := Label19.Left + Grid.Columns[3].Width;
  Label21.Left := Label20.Left + Grid.Columns[4].Width;
end;


procedure TForm1.ApplicationEvents1ModalBegin(Sender: TObject);
begin
  FormFundo.Show;
end;

procedure TForm1.ApplicationEvents1ModalEnd(Sender: TObject);
begin
  FormFundo.Hide;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  FrameMenu : TFrameMenu;
begin
  FrameMenu := TFrameMenu.Create(Self);
  FrameMenu.PanelContainer := Panel5;
  FrameMenu.Parent := Panel5;
  FrameMenu.Show;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  AjustaGrid(DBGrid1);
end;



procedure TForm1.Label2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Panel6Resize(Sender: TObject);
begin
  AjustaGrid(DBGrid1);
end;

end.
