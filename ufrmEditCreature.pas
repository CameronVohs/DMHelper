unit ufrmEditCreature;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, uDM;

type
  TfrmEditCreature = class(TForm)
    btnSave: TBitBtn;
    edtName: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtImage: TEdit;
    Label3: TLabel;
    edtMaxHP: TEdit;
    Label4: TLabel;
    edtCR: TEdit;
    Label5: TLabel;
    edtInit: TEdit;
    Label6: TLabel;
    edtStr: TEdit;
    Label7: TLabel;
    edtDex: TEdit;
    Label8: TLabel;
    edtCon: TEdit;
    Label9: TLabel;
    edtWis: TEdit;
    Label10: TLabel;
    edtInt: TEdit;
    Label11: TLabel;
    edtCha: TEdit;
    Label12: TLabel;
    edtXP: TEdit;
    procedure btnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FCreature : TCreature;
  public
    { Public declarations }
    Procedure SetCreature(aCreature : TCreature);
    Function  GetCreature : TCreature;
  end;

var
  frmEditCreature: TfrmEditCreature;

implementation

{$R *.dfm}

procedure TfrmEditCreature.btnSaveClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmEditCreature.FormCreate(Sender: TObject);
begin
  FCreature := TCreature.Create;
end;

procedure TfrmEditCreature.FormDestroy(Sender: TObject);
begin
  FCreature.Free;
end;

function TfrmEditCreature.GetCreature: TCreature;
begin
  FCreature.Name       := edtName.Text;
  FCreature.image      := edtImage.Text;
  FCreature.maxHealth  := StrToIntDef(edtMaxHP.Text, 0);
  FCreature.initiative := StrToIntDef(edtInit.Text, 0);
  FCreature.cr         := StrToCurrDef(edtCR.Text, 0);
  FCreature.xp         := StrToIntDef(edtXP.Text, 0);

  FCreature.stats.str := StrToIntDef(edtStr.Text, 0);
  FCreature.stats.dex := StrToIntDef(edtDex.Text, 0);
  FCreature.stats.con := StrToIntDef(edtCon.Text, 0);
  FCreature.stats.int := StrToIntDef(edtInt.Text, 0);
  FCreature.stats.wis := StrToIntDef(edtWis.Text, 0);
  FCreature.stats.cha := StrToIntDef(edtCha.Text, 0);

  Result := FCreature;
end;

procedure TfrmEditCreature.SetCreature(aCreature: TCreature);
begin
  FCreature := aCreature;

  edtName.Text  := FCreature.Name;
  edtImage.Text := FCreature.image;
  edtMaxHP.Text := IntToStr(FCreature.maxHealth);
  edtInit.Text  := IntToStr(FCreature.initiative);
  edtCR.Text    := CurrToStr(FCreature.cr);
  edtXP.Text    := IntToStr(FCreature.xp);

  edtStr.Text := IntToStr(FCreature.stats.str);
  edtDex.Text := IntToStr(FCreature.stats.dex);
  edtCon.Text := IntToStr(FCreature.stats.con);
  edtInt.Text := IntToStr(FCreature.stats.int);
  edtWis.Text := IntToStr(FCreature.stats.wis);
  edtCha.Text := IntToStr(FCreature.stats.cha);
end;

end.
