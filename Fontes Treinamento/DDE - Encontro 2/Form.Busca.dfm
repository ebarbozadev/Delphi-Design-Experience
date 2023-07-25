object FormBusca: TFormBusca
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormBusca'
  ClientHeight = 80
  ClientWidth = 800
  Color = clSkyBlue
  TransparentColor = True
  TransparentColorValue = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    800
    80)
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 8
    Top = 8
    Width = 784
    Height = 64
    Anchors = [akLeft, akTop, akRight, akBottom]
    Brush.Color = 4866625
    Pen.Style = psClear
    Shape = stRoundRect
    ExplicitWidth = 1061
    ExplicitHeight = 70
  end
  object Edit1: TEdit
    Left = 176
    Top = 19
    Width = 436
    Height = 39
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderStyle = bsNone
    Color = 4866625
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'Edit1'
    OnKeyPress = Edit1KeyPress
  end
end
