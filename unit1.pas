unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label38Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  XSonne, YSonne : Extended;
  XPlanet, YPlanet : Extended;
  XPlanet2, YPlanet2 : Extended;
  Kraft : Extended;
  Kraft2 : Extended;
  Kraft3 : Extended;
  Hypo : Extended;
  Hypo2 : Extended;
  Hypo3 : Extended;
  VXPlanet, VYPlanet : Extended;
  VXPlanet2, VYPlanet2 : Extended;
  VXSonne , VYSonne : Extended;
  XAbstand, YAbstand : Extended;
  XAbstand2, YAbstand2 : Extended;
  XAbstand3, YAbstand3 : Extended;

  MSonne , MPlanet, MPlanet2 : Extended;

  Skali : integer;

  Pause : Boolean;



implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Shape1.Left := 456;
  Shape1.Top := 295;
  label35.caption := '0';
  label37.caption := '0';
  MSonne := StrToFloat(Edit1.Text);
  MPlanet := StrToFloat(Edit2.Text);
  MPlanet2 := StrToFloat(Edit6.Text);
  XAbstand := StrToFloat(Edit3.Text);
  XAbstand2 := StrToFloat(Edit7.Text);
  YAbstand := StrToFloat(Edit9.Text);
  YAbstand2 := StrToFloat(Edit10.Text);
  VYPlanet := StrToFloat(Edit4.Text);
  VYPlanet2 := StrToFloat(Edit8.Text);
  VYSonne := StrToFloat(Edit5.Text);
  VXPlanet := StrToFloat(Edit12.Text);
  VXPlanet2 := StrToFloat(Edit13.Text);
  VXSonne := StrToFloat(Edit11.Text);
  skali := strtoint(edit14.text);
  XSonne := (Shape1.Left + Shape1.Width/2)*Skali;
  YSonne := (Shape1.Top + Shape1.Height/2)*Skali;
  YPlanet := YSonne-YAbstand;
  YPlanet2 := YSonne-YAbstand2;
  XPlanet := XSonne - XAbstand;
  XPlanet2 := XSonne - XAbstand2;
  XAbstand3 := XPlanet - XPlanet2;
  YAbstand3 := YPlanet - YPlanet2;


  Label3.caption := inttostr(round(sqrt((strtofloat(Edit3.text))*(strtofloat(edit3.text))+(strtofloat(edit9.text))*(strtofloat(edit9.text)))));
  Label4.caption := inttostr(round(sqrt((strtofloat(Edit3.text))*(strtofloat(edit3.text))+(strtofloat(edit9.text))*(strtofloat(edit9.text)))));
  Label5.caption := inttostr(round(sqrt((strtofloat(Edit7.text))*(strtofloat(edit7.text))+(strtofloat(edit10.text))*(strtofloat(edit10.text)))));
  Label6.caption := inttostr(round(sqrt((strtofloat(Edit7.text))*(strtofloat(edit7.text))+(strtofloat(edit10.text))*(strtofloat(edit10.text)))));
  Label23.caption := inttostr(round(sqrt((strtofloat(edit7.text)-strtofloat(edit3.text))*(strtofloat(edit7.text)-strtofloat(edit3.text))+((strtofloat(edit9.text))-(strtofloat(edit10.text)))*((strtofloat(edit9.text))-(strtofloat(edit10.text))))));
  Label24.caption := inttostr(round(sqrt((strtofloat(edit7.text)-strtofloat(edit3.text))*(strtofloat(edit7.text)-strtofloat(edit3.text))+((strtofloat(edit9.text))-(strtofloat(edit10.text)))*((strtofloat(edit9.text))-(strtofloat(edit10.text))))));
  Label30.caption := floattostr((sqrt((strtofloat(edit4.text))*(strtofloat(edit4.text))+(strtofloat(edit12.text))*(strtofloat(edit12.text)))));
  Label31.caption := floattostr((sqrt((strtofloat(edit4.text))*(strtofloat(edit4.text))+(strtofloat(edit12.text))*(strtofloat(edit12.text)))));
  Label32.caption := floattostr((sqrt((strtofloat(edit8.text))*(strtofloat(edit8.text))+(strtofloat(edit13.text))*(strtofloat(edit13.text)))));
  Label33.caption := floattostr((sqrt((strtofloat(edit8.text))*(strtofloat(edit8.text))+(strtofloat(edit13.text))*(strtofloat(edit13.text)))));
  label7.width := 22;
  Label8.width := 22;
  Label30.width := 22;
  Label31.width := 22;
  Label32.width := 22;
  Label33.width := 22;

  Pause := false;
  Button3.visible:=true;
  Button1.visible:=false;
  Button4.visible:=true;
  Label9.Visible:=false;
  Label10.visible:=false;
  Label11.visible:=false;
  Label12.visible:=false;
  Label13.visible:=false;
  Label14.visible:=false;
  Label15.visible:=false;
  Label16.visible:=false;
  edit1.visible:=false;
  edit2.visible:=false;
  edit3.visible:=false;
  edit4.visible:=false;
  edit5.visible:=false;
  edit6.visible:=false;
  edit7.visible:=false;
  edit8.visible:=false;
  edit9.visible:=false;
  edit10.visible:=false;
  edit11.visible:=false;
  edit12.visible:=false;
  edit13.visible:=false;
  label25.Visible:=false;
  label26.Visible:=false;
  label27.Visible:=false;
  label28.Visible:=false;
  label29.Visible:=false;
  label34.visible:=false;
  edit14.visible:=false;

   Timer1.Enabled := True;
   Timer2.Enabled := true;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Timer1.Enabled := False;

  XSonne := round((456 + Shape1.Width/2)*Skali);
  YSonne := round((295 + Shape1.Height/2)*Skali);
  YPlanet := YSonne-YAbstand;
  YPlanet2 := YSonne-YAbstand2;
  XPlanet := XSonne - XAbstand;
  XPlanet2 := XSonne - XAbstand2;

  timer1.enabled := true;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  timer1.enabled := false;
  timer2.enabled := false;



  Button4.visible:=false;
  Button3.visible:=false;
  Button1.visible:=true;
  Label9.Visible:=true;
  Label10.visible:=true;
  Label11.visible:=true;
  Label12.visible:=true;
  Label13.visible:=true;
  Label14.visible:=true;
  Label15.visible:=true;
  Label16.visible:=true;
  edit1.visible:=true;
  edit2.visible:=true;
  edit3.visible:=true;
  edit4.visible:=true;
  edit5.visible:=true;
  edit6.visible:=true;
  edit7.visible:=true;
  edit8.visible:=true;
  edit9.visible:=true;
  edit10.visible:=true;
  edit11.visible:=true;
  edit12.visible:=true;
  edit13.visible:=true;
  label25.Visible:=true;
  label26.Visible:=true;
  label27.Visible:=true;
  label28.Visible:=true;
  label29.Visible:=true;
  label34.visible:=true;
  edit14.visible:=true;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  If timer1.enabled = false then begin
    button4.caption := 'Pause';
    Pause := true;
    timer1.enabled := true;
    timer2.enabled := true;
    Label9.Visible:=false;
    Label10.visible:=false;
    Label11.visible:=false;
    Label12.visible:=false;
    Label13.visible:=false;
    Label14.visible:=false;
    Label15.visible:=false;
    Label16.visible:=false;
    edit1.visible:=false;
    edit2.visible:=false;
    edit3.visible:=false;
    edit4.visible:=false;
    edit5.visible:=false;
    edit6.visible:=false;
    edit7.visible:=false;
    edit8.visible:=false;
    edit9.visible:=false;
    edit10.visible:=false;
    edit11.visible:=false;
    edit12.visible:=false;
    edit13.visible:=false;
    label25.Visible:=false;
    label26.Visible:=false;
    label27.Visible:=false;
    label28.Visible:=false;
    label29.Visible:=false;
    label34.visible:=false;
    edit14.visible:=false;
  end;
  If Pause = false then begin
    timer1.enabled := false;
    timer2.enabled := false;
    button4.caption := 'Weiter!';
    Label9.Visible:=true;
    Label10.visible:=true;
    Label11.visible:=true;
    Label12.visible:=true;
    Label13.visible:=true;
    Label14.visible:=true;
    Label15.visible:=true;
    Label16.visible:=true;
    edit1.visible:=true;
    edit2.visible:=true;
    edit3.visible:=true;
    edit4.visible:=true;
    edit5.visible:=true;
    edit6.visible:=true;
    edit7.visible:=true;
    edit8.visible:=true;
    edit9.visible:=true;
    edit10.visible:=true;
    edit11.visible:=true;
    edit12.visible:=true;
    edit13.visible:=true;
    label25.Visible:=true;
    label26.Visible:=true;
    label27.Visible:=true;
    label28.Visible:=true;
    label29.Visible:=true;
    label34.visible:=true;
    edit14.visible:=true;
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Label38Click(Sender: TObject);
begin

end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin

  // timer procedures are called periodically

  // update positions using velocity
  XPlanet := XPlanet + VXPlanet;
  YPlanet:= YPlanet + VYPlanet;

  XPlanet2 := XPlanet2 + VXPlanet2;
  YPlanet2 := YPlanet2 + VYPlanet2;

  XSonne := XSonne + VXSonne;
  YSonne := YSonne +VYSonne;

  // update shapes
  Shape1.Left := Round(XSonne/Skali - Shape1.Width/2);
  Shape1.Top := Round(YSonne/Skali - Shape1.Height/2);

  Shape2.Left := Round(XPlanet/Skali - Shape2.Width/2);
  Shape2.Top := Round(YPlanet/Skali - Shape2.Height/2);

  Shape3.Left := Round(XPlanet2/Skali - Shape3.Width/2);
  Shape3.Top := Round(YPlanet2/Skali - Shape3.Height/2);

  // calc distances
  XAbstand := XSonne - XPlanet;
  YAbstand := YSonne - YPlanet;

  XAbstand2 := XSonne - XPlanet2;
  YAbstand2 := YSonne - YPlanet2;

  XAbstand3 := XPlanet - XPlanet2;
  YAbstand3 := YPlanet - YPlanet2;

  // triangle magic, we need the hypotenuse to calc angles later
  Hypo := sqrt((XAbstand*XAbstand)+(YAbstand*Yabstand));
  Hypo2 := sqrt((XAbstand2*XAbstand2)+(YAbstand2*Yabstand2));
  Hypo3 := sqrt((XAbstand3*XAbstand3)+(YAbstand3*Yabstand3));

  // calc force using newtons grvity law
  // F = ( m1*m2 ) / r**2
  Kraft := MSonne*MPlanet*(100/((XAbstand*XAbstand)+(YAbstand*Yabstand)));
  Kraft2 := MSonne*MPlanet2*(100/((XAbstand2*XAbstand2)+(YAbstand2*Yabstand2)));
  Kraft3 := MPlanet*MPlanet2*(100/((XAbstand3*XAbstand3)+(YAbstand3*Yabstand3)));

  // bodies are accelerated by forces, so update velocities
  // F = m*a
  // a = F/m
  VXPlanet := Kraft/MPlanet * (XAbstand/Hypo) - Kraft3/MPlanet * (XAbstand3/Hypo3) + VXPlanet;
  VYPlanet := Kraft/MPlanet * (YAbstand/Hypo) - Kraft3/MPlanet * (YAbstand3/Hypo3) + VYPlanet;

  VXPlanet2 := Kraft2/MPlanet2 * (XAbstand2/Hypo2) + Kraft3/MPlanet2 * (XAbstand3/Hypo3) + VXPlanet2;
  VYPlanet2 := Kraft2/MPlanet2 * (YAbstand2/Hypo2) + Kraft3/MPlanet2 * (YAbstand3/Hypo3) + VYPlanet2;

  VXSonne := (-1)*Kraft/MSonne * (XAbstand/Hypo) - Kraft2/MSonne * (XAbstand2/Hypo2) +  VXSonne;
  VYSonne := (-1)*Kraft/MSonne * (YAbstand/Hypo) - Kraft2/MSonne * (YAbstand2/Hypo2) + VYSonne;

  // fix sun? vodoo starts here...
  If checkbox1.Checked = true then begin
     XSonne := round((456 + Shape1.Width/2)*Skali);
     YSonne := round((295 + Shape1.Height/2)*Skali);
     YPlanet := YSonne-YAbstand;
     YPlanet2 := YSonne-YAbstand2;
     XPlanet := XSonne - XAbstand;
     XPlanet2 := XSonne - XAbstand2;
  end;
  Label1.caption := inttostr(round(hypo));
  Label2.caption := inttostr(round(hypo2));
  Label22.caption := inttostr(round(hypo3));
  If strtoint(label3.caption) > strtoint(label1.caption) then Label3.caption := Label1.caption;
  If strtoint(label4.caption) < strtoint(label1.caption) then Label4.caption := Label1.caption;
  If strtoint(label5.caption) > strtoint(label2.caption) then Label5.caption := Label2.caption;
  If strtoint(label6.caption) < strtoint(label2.caption) then Label6.caption := Label2.caption;
  If strtoint(label23.caption) > strtoint(label22.caption) then Label23.caption := Label22.caption;
  If strtoint(label24.caption) < strtoint(label22.caption) then Label24.caption := Label22.caption;
  label7.caption := floattostr(sqrt(Vxplanet*Vxplanet + Vyplanet*Vyplanet));
  label8.caption := floattostr((sqrt(Vxplanet2*Vxplanet2 + Vyplanet2*Vyplanet2)));
  If strtofloat(label30.caption) > strtofloat(label7.caption) then Label30.caption := Label7.caption;
  If strtofloat(label31.caption) < strtofloat(label7.caption) then Label31.caption := Label7.caption;
  If strtofloat(label32.caption) > strtofloat(label8.caption) then Label32.caption := Label8.caption;
  If strtofloat(label33.caption) < strtofloat(label8.caption) then Label33.caption := Label8.caption;
  Pause := false;
  label37.caption := inttostr(strtoint(label37.caption)+1);

end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  label35.caption := floattostr(strtofloat(label35.caption) + (1))
end;

end.
