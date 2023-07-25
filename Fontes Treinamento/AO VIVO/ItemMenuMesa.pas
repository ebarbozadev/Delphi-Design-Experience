unit ItemMenuMesa;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts;

type
  TItemMenuMesa1 = class(TForm)
    LayoutPrincipal: TLayout;
    Line1: TLine;
    Label1: TLabel;
    Label2: TLabel;
    Rectangle1: TRectangle;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1MouseEnter(Sender: TObject);
    procedure SpeedButton1MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Recursos (NumeroMesa : Integer) : TItemMenuMesa1;
  end;

var
  ItemMenuMesa1: TItemMenuMesa1;

implementation

{$R *.fmx}

function TItemMenuMesa1.Recursos(NumeroMesa: Integer): TItemMenuMesa1;
begin
  Result := Self;
  Label2.Text := IntToStr(NumeroMesa);
end;

procedure TItemMenuMesa1.SpeedButton1MouseEnter(Sender: TObject);
begin
  Rectangle1.Visible := True;
  Line1.Visible := True;
end;

procedure TItemMenuMesa1.SpeedButton1MouseLeave(Sender: TObject);
begin
  Rectangle1.Visible := False;
  Line1.Visible := False;
end;

end.
