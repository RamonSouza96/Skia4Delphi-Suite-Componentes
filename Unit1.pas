unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, Skia.FMX,
  FMX.TabControl, FMX.Objects, FMX.Layouts,Skia, FMX.Colors,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Effects,System.UIConsts,
  FMX.ListBox, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo, System.Diagnostics,FMX.Ani;

type
  TFrmMain = class(TForm)
    TabControl1: TTabControl;
    Animações: TTabItem;
    TabItem2: TTabItem;
    SkSvg1: TSkSvg;
    GridPanelLayout1: TGridPanelLayout;
    Image1: TImage;
    Image2: TImage;
    SkSvg2: TSkSvg;
    Layout1: TLayout;
    Text1: TText;
    Text2: TText;
    TabItem3: TTabItem;
    SkPaintBox1: TSkPaintBox;
    Layout2: TLayout;
    ColorPanel1: TColorPanel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Text3: TText;
    Rectangle1: TRectangle;
    Text4: TText;
    Rectangle2: TRectangle;
    ShadowEffect1: TShadowEffect;
    ShadowEffect2: TShadowEffect;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Text5: TText;
    Text6: TText;
    ShadowEffect3: TShadowEffect;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Text7: TText;
    Text8: TText;
    ShadowEffect4: TShadowEffect;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    Text9: TText;
    Text10: TText;
    ShadowEffect5: TShadowEffect;
    Rectangle9: TRectangle;
    ShadowEffect6: TShadowEffect;
    ComboBox1: TComboBox;
    TabItem4: TTabItem;
    TabControl2: TTabControl;
    TabItem5: TTabItem;
    TabItem6: TTabItem;
    SkSvg4: TSkSvg;
    Memo1: TMemo;
    SkAnimatedPaintBox1: TSkAnimatedPaintBox;
    Button1: TButton;
    Layout3: TLayout;
    Image3: TImage;
    SpeedButton1: TSpeedButton;
    SkAnimatedImage1: TSkAnimatedImage;
    SkAnimatedImage2: TSkAnimatedImage;
    SkAnimatedImage3: TSkAnimatedImage;
    SkAnimatedImage4: TSkAnimatedImage;
    SkAnimatedImage7: TSkAnimatedImage;
    SkAnimatedImage8: TSkAnimatedImage;
    RectReact: TRectangle;
    ShadowEffect7: TShadowEffect;
    SkAnimatedHeart: TSkAnimatedImage;
    SkAnimatedImage5: TSkAnimatedImage;
    SkAnimatedImage6: TSkAnimatedImage;
    SkAnimatedImage9: TSkAnimatedImage;
    TabItem7: TTabItem;
    SkLabel2: TSkLabel;
    SkLabel3: TSkLabel;
    SkLabel1: TSkLabel;
    StyleBook1: TStyleBook;
    SkLabel4: TSkLabel;
    procedure SkPaintBox1Draw(ASender: TObject; const ACanvas: ISkCanvas;
      const ADest: TRectF; const AOpacity: Single);
    procedure ColorPanel1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Rectangle1Click(Sender: TObject);
    procedure Rectangle4Click(Sender: TObject);
    procedure Rectangle8Click(Sender: TObject);
    procedure Rectangle6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SkAnimatedPaintBox1AnimationDraw(ASender: TObject;
      const ACanvas: ISkCanvas; const ADest: TRectF; const AProgress: Double;
      const AOpacity: Single);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SkAnimatedImage2Click(Sender: TObject);
    procedure SkAnimatedHeartAnimationFinished(Sender: TObject);
  private

    Color1    : TAlphaColor;
    Color2    : TAlphaColor;
    Direction : TPointF;

    FEffect: ISkRuntimeEffect;
    FEffectPaint: ISkPaint;
    FStopwatch: TStopwatch;
  public

  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.fmx}

procedure TFrmMain.Button1Click(Sender: TObject);
var
  LError: string;
begin
  FEffect := TSkRuntimeEffect.MakeForShader(Memo1.Lines.Text, LError);
  if Assigned(FEffect) then
  begin
    FEffectPaint := TSkPaint.Create;
    FEffectPaint.AntiAlias := True;
    FEffectPaint.Shader := FEffect.MakeShader(True);
    FStopwatch := TStopwatch.StartNew;
  end
  else
    Showmessage(LError);

end;

procedure TFrmMain.CheckBox1Click(Sender: TObject);
begin
CheckBox2.IsChecked := false;
end;

procedure TFrmMain.CheckBox2Click(Sender: TObject);
begin
CheckBox1.IsChecked := false;
end;

procedure TFrmMain.ColorPanel1Change(Sender: TObject);
begin

  if CheckBox1.IsChecked then
  Begin
  Color1:=ColorPanel1.Color;
  End;

  if CheckBox2.IsChecked then
  begin
  Color2:=ColorPanel1.Color;
  end;

 SkPaintBox1.Redraw;

end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  Color1:=$FF0061FF;
  Color2:=$FF60EFFF;
end;

procedure TFrmMain.Rectangle1Click(Sender: TObject);
begin
  Color1:=StringToAlphaColor(Text3.Text);
  Color2:=StringToAlphaColor(Text4.Text);
  SkPaintBox1.Redraw;
end;

procedure TFrmMain.Rectangle4Click(Sender: TObject);
begin
  Color1:=StringToAlphaColor(Text5.Text);
  Color2:=StringToAlphaColor(Text6.Text);
  SkPaintBox1.Redraw;
end;

procedure TFrmMain.Rectangle6Click(Sender: TObject);
begin
  Color1:=StringToAlphaColor(Text7.Text);
  Color2:=StringToAlphaColor(Text8.Text);
  SkPaintBox1.Redraw;
end;

procedure TFrmMain.Rectangle8Click(Sender: TObject);
begin
  Color1:=StringToAlphaColor(Text9.Text);
  Color2:=StringToAlphaColor(Text10.Text);
  SkPaintBox1.Redraw;
end;

procedure TFrmMain.SkAnimatedHeartAnimationFinished(Sender: TObject);
begin
SkAnimatedHeart.Visible:=false;
end;

procedure TFrmMain.SkAnimatedImage2Click(Sender: TObject);
begin
RectReact.Visible:=false;
SkAnimatedHeart.Visible:=true;
end;

procedure TFrmMain.SkAnimatedPaintBox1AnimationDraw(ASender: TObject;
  const ACanvas: ISkCanvas; const ADest: TRectF; const AProgress: Double;
  const AOpacity: Single);
begin
  if Assigned(FEffect) then
  begin
    FEffect.SetUniform('iResolution', TSkRuntimeEffectFloat3.Create(ADest.Width, ADest.Height, 0));
    FEffect.SetUniform('iTime', FStopwatch.Elapsed.TotalSeconds);
    ACanvas.DrawRect(ADest, FEffectPaint);
  end;
end;

procedure TFrmMain.SkPaintBox1Draw(ASender: TObject; const ACanvas: ISkCanvas;
  const ADest: TRectF; const AOpacity: Single);
var
  LPaint: ISkPaint;
begin

  case ComboBox1.ItemIndex of
    0 : Direction:=ADest.CenterPoint;
    1 : Direction:=ADest.Location;
    2 : Direction:=ADest.TopLeft;
    3 : Direction:=ADest.BottomRight;
  end;

  LPaint := TSkPaint.Create;          
  LPaint.Shader := TSkShader.MakeGradientSweep(Direction,[Color1, Color2]);
  ACanvas.DrawPaint(LPaint);

end;

procedure TFrmMain.SpeedButton1Click(Sender: TObject);
begin
RectReact.Visible:=true;
end;

end.
