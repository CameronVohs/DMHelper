unit uDM;

interface

Type
  TStats = Record
     str : integer;
     dex : integer;
     con : integer;
     int : integer;
     wis : integer;
     cha : integer;
  end;
  TCreature = Class(TObject)
    name      : String;
    image     : String;
    stats     : TStats;
    maxHealth : Integer;
    initiative : Integer;
    cr        : Currency;
    xp        : integer;
  end;
  TIndividual = Class(TObject)
    name       : String;
    player     : Boolean;
    creature   : TCreature;
    health     : integer;
    initiative : Integer;
  End;

implementation

end.
