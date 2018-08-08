unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls, Vcl.Buttons, uDM, ufrmEditCreature;

type
  TfrmMain = class(TForm)
    btnLoad: TBitBtn;
    btnSave: TBitBtn;
    lbNPCs: TListBox;
    ScrollBox1: TScrollBox;
    btnAddCreature: TBitBtn;
    Panel1: TPanel;
    image: TImage;
    procedure btnSaveClick(Sender: TObject);
    procedure lbNPCsClick(Sender: TObject);
    procedure btnAddCreatureClick(Sender: TObject);
    procedure ScrollBox1MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FPlayers   : Array of TCreature;
//    FNPCs      : Array of TCreature;
    FEncounter : Array of TIndividual;
    Procedure LoadCreature(aCreature: TCreature);
  public
    { Public declarations }
  end;

const
  NPCFile = 'NPCs.txt';

var
  frmMain: TfrmMain;

implementation

uses
  pngImage, bUtils;

{$R *.dfm}

procedure TfrmMain.btnAddCreatureClick(Sender: TObject);
var
  aModalResult : Integer;
  aCreature    : TCreature;
begin
  aCreature := TCreature.Create;
  frmEditCreature := TfrmEditCreature.Create(self);
  Try
//     frmEditCreature.SetCreature(TCreature(lbNPCs.Items.Objects[lbNPCs.ItemIndex]));
     aModalResult := frmEditCreature.ShowModal;

     aCreature := frmEditCreature.GetCreature;
     if aCreature.name <> '' then Begin
        lbNPCs.AddItem(aCreature.name, aCreature);
//        SetLength(FNPCs, Length(FNPCs) + 1);
//        FNPCs[Length(FNPCs) - 1] := aCreature;
     End;
//     if aModalResult = mrOK then TCreature(lbNPCs.Items.Objects[lbNPCs.ItemIndex]) := frmEditCreature.GetCreature;
     
  Finally
     frmEditCreature.Free;
//     aCreature.Free;
  End;
end;

procedure TfrmMain.btnSaveClick(Sender: TObject);
var
  i     : Integer;
  aFile : TextFile;
  aLine : String;
  aCreature : TCreature;
begin
  aCreature := TCreature.Create;
  AssignFile(aFile, NPCFile);
  Rewrite(aFile);
  For i := 0 to lbNPCs.Items.Count - 1 do Begin
     aCreature := TCreature(lbNPCs.Items.Objects[i]);
     aLine := '';
     aLine := aCreature.name + '|' +
              aCreature.image + '|' +
              IntToStr(aCreature.maxHealth) + '|' +
              IntToStr(aCreature.initiative) + '|' +
              CurrToStr(aCreature.cr) + '|' +
              IntToStr(aCreature.xp);
     WriteLn(aFile, aLine);
  End;

  CloseFile(aFile);
  aCreature.Free;

end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  aCreature : TCreature;
  aFile     : TextFile;
  aLine     : String;
begin
  aCreature := TCreature.Create;
  AssignFile(aFile, NPCFile);
  Reset(aFile);

  while not EOF(aFile) do Begin
     ReadLn(aFile, aLine);

//     SetLength(FNPCs, Length(FNPCs) + 1);
     aCreature := TCreature.Create;

     aCreature.name       := GetToken(aLine, '|');
     aCreature.image      := GetToken(aLine, '|');
     aCreature.maxHealth  := StrToInt(GetToken(aLine, '|'));
     aCreature.initiative := StrToInt(GetToken(aLine, '|'));
     aCreature.cr         := StrToCurr(GetToken(aLine, '|'));
     aCreature.xp         := StrToInt(aLine);

//     FNPCs[Length(FNPCs) - 1] := aCreature;
     lbNPCs.AddItem(aCreature.name, aCreature);
  End;
  if lbNPCs.Items.Count > 0 then
     LoadCreature(TCreature(lbNPCs.Items.Objects[lbNPCs.Items.Count - 1]));

  CloseFile(aFile);
  aCreature.Free;
end;

procedure TfrmMain.lbNPCsClick(Sender: TObject);
begin
  if (lbNPCs.ItemIndex > -1) AND (lbNPCs.ItemIndex < lbNPCs.Items.Count) then
     LoadCreature(TCreature(lbNPCs.Items.Objects[lbNPCs.ItemIndex]));
end;

procedure TfrmMain.LoadCreature(aCreature: TCreature);
var
  aStream : TMemoryStream;
  aPImage : TPngImage;
begin
  if not FileExists(aCreature.image) then exit;
  
  Try
     aStream := TMemoryStream.Create;
     aStream.LoadFromFile(aCreature.image);
     aStream.Position := 0;

     aPImage := TPngImage.Create;
     aPImage.LoadFromStream(aStream);

     image.Picture.Graphic := aPImage;
  Finally
     aPImage.Free;
     aStream.Free;
  End;
end;

procedure TfrmMain.ScrollBox1MouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
var
  NewScrollPos: Integer;
begin
  NewScrollPos := ScrollBox1.VertScrollBar.Position - (WheelDelta div 5);
  //Trigger the OnScroll event:
//  ScrollBox1.HorzScrollBar.Scroll(scPosition, NewScrollPos);
  //Scroll the bar into the new position:
  ScrollBox1.VertScrollBar.Position := NewScrollPos;
  Handled := True;
end;

end.
