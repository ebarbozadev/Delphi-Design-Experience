unit Frame.Pagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, System.TypInfo;

type
  TtypePagamento = (pg_money, pg_creditcard);

  TFramePagamento = class(TFrame)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    Edit1: TEdit;
    Shape1: TShape;
    Label4: TLabel;
    Shape2: TShape;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Edit4: TEdit;
    Label7: TLabel;
    Panel10: TPanel;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    procedure Panel10Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
  private
    { Private declarations }
    tpPagamento : String;
  public
    { Public declarations }
    IcoCard : TtypePagamento;
    FrameParent : TFrame;
    PanelContainer : TPanel;
  end;

implementation

{$R *.dfm}

procedure TFramePagamento.Panel10Click(Sender: TObject);
  var
  _Resource : TResourceStream;
begin
  case IcoCard of
    pg_money: IcoCard := pg_creditcard;
    pg_creditcard: IcoCard := pg_money;
  end;
     _Resource := TResourceStream.Create(HInstance, GetEnumName(TypeInfo(TtypePagamento),integer(IcoCard)), RT_RCDATA);
  try
    Image1.Picture.LoadFromStream(_Resource);
  finally
    _Resource.Free;
  end;

    Label4.Visible := (IcoCard = pg_creditcard);
    Label5.Visible := (IcoCard = pg_creditcard);
    Label6.Visible := (IcoCard = pg_creditcard);
    Label7.Visible := (IcoCard = pg_creditcard);
    Edit1.Visible  := (IcoCard = pg_creditcard);
    Edit2.Visible  := (IcoCard = pg_creditcard);
    Edit3.Visible  := (IcoCard = pg_creditcard);
    Edit4.Visible  := (IcoCard = pg_creditcard);
    Shape1.Visible := (IcoCard = pg_creditcard);
    Shape2.Visible := (IcoCard = pg_creditcard);
    Shape3.Visible := (IcoCard = pg_creditcard);
    Shape4.Visible := (IcoCard = pg_creditcard);
end;

procedure TFramePagamento.Panel8Click(Sender: TObject);
begin
  Self.Destroy;
  PanelContainer.Width := 260;
  FrameParent.Parent := PanelContainer;
  FrameParent.Show;
end;

end.
