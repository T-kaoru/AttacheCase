// ********************************************************
//
// EncodeDetect Unit Version 1.10
//
// Author: totonica
// URL: http://www.watercolor-city.net/
//
// Copyright(C) 2008 totonica All Rights Reserved.
//
//
// �X�V����
// -2009/10/19 : 1.10-
// UTF-7�̔����ǉ�
//
// -2008/12/25 : 1.01-
// FileStream�ł�CheckEncoding�֐��ǉ��A
// IsSJIS�AIsUTF8�AIsEUC�̋������C��
//
// -2008/10/22 : 1.00-
// ����
//
// ********************************************************

unit EncodeDetect;

interface

uses
  SysUtils, Classes;

type
  TBOMType = (btNone,btUTF8,bt16LE,bt16BE,bt32LE,bt32BE);
  TIgnoreEncode = (ieSJIS,ieEUC,ieUTF8,ieJIS,ieBOM,ieUTF7);
  TIgnoreEncodes = Set of TIgnoreEncode;

const
  ENC_UNKNOWN = -1;
  ENC_SJIS = 0;
  ENC_EUC = 1;
  ENC_JIS = 2;
  ENC_UTF16LE = 3;
  ENC_UTF16BE = 4;
  ENC_UTF8 = 5;
  ENC_UTF8BOM = 6;
  ENC_UTF32LE = 7;
  ENC_UTF32BE = 8;
  ENC_UTF7 = 9;

{BOM Check}
function BOMCheck(const B: array of Byte; IgnoreEncodes: TIgnoreEncodes): TBOMType;

{Internal Checking Encode Function}
function IsASCII(const B: Byte): Boolean;
function IsUTF8(const B: array of Byte; var BCUTF8: Integer; IgnoreEncodes: TIgnoreEncodes): Boolean;
function IsSJIS(const B: array of Byte; var BCSJIS: Integer; IgnoreEncodes: TIgnoreEncodes): Boolean;
function IsEUC(const B: array of Byte; var BCEUC: Integer; IgnoreEncodes: TIgnoreEncodes): Boolean;
function IsJIS(const B: array of Byte; IgnoreEncodes: TIgnoreEncodes): Boolean;
function IsUTF7(const B: array of Byte; var BCUTF7: Integer; IgnoreEncodes: TIgnoreEncodes): Boolean;

{Public Function}
function CheckEncoding(BS: array of Byte; IgnoreEncodes: TIgnoreEncodes = []): Integer; overload;
function CheckEncoding(MS: TMemoryStream; CheckSize: Integer = 1024; IgnoreEncodes: TIgnoreEncodes = []): Integer; overload;
function CheckEncoding(FS: TFileStream; CheckSize: Integer = 1024; IgnoreEncodes: TIgnoreEncodes = []): Integer; overload;

implementation

const
  {For Internal}
  InvalidElement = -1;
  SJISSingle = 0;
  SJISLead = 1;
  EUCSingle = 0;
  EUC2BytesLead = 1;
  EUC2BytesLeadKana = 2;
  EUC3BytesLead = 3;
  UTF8Single = 0;
  UTF82BytesLead = 1;
  UTF83BytesLead = 2;
  UTF84BytesLead = 3;

function BOMCheck(const B: array of Byte; IgnoreEncodes: TIgnoreEncodes): TBOMType;
var
  RES: TBOMType;
begin
  //BOM�����邩�ǂ���
  RES := btNone;

  if not (ieBOM in IgnoreEncodes) then
  begin
    if Length(B) >= 4 then
    begin
      {UTF32LE}
      if (B[0] = $FF) and (B[1] = $FE) and (B[2] = $00) and (B[3] = $00) then
      begin
        RES := bt32LE;
      end;

      {UTF32BE}
      if (B[0] = $00) and (B[1] = $00) and (B[2] = $FE) and (B[3] = $FF) then
      begin
        RES := bt32BE;
      end;
    end;
  
    if (Length(B) >= 2) and (RES = btNone) then
    begin
      {UTF16LE}
      if (B[0] = $FF) and (B[1] = $FE) then
      begin
        RES := bt16LE;
      end;

      {UTF16BE}
      if (B[0] = $FE) and (B[1] = $FF) then
      begin
        RES := bt16BE;
      end;
    end;

    if (Length(B) >= 3) and (RES = btNone)  then
    begin
      {UTF8}
      if (B[0] = $EF) and (B[1] = $BB) and (B[2] = $BF) then
      begin
        RES := btUTF8;
      end;
    end;
  end;    

  Result := RES;
end;

function IsASCII(const B: Byte): Boolean;
begin
  //ASCII���ǂ���
  Result := B <= $7F;
end;

{UTF-8}

function IsUTF8FirstElement(const B: Byte): Integer;
var
  RES: Integer;
begin
  //UTF8�̍ŏ��̃G�������g�𒲂ׂ�
  RES := InvalidElement;

  {ASCII}
  if IsASCII(B) then
  begin
    RES := UTF8Single;
  end;

  {Leadbyte : 2Byte}
  if (B >= $C0) and (B <= $DF) then
  begin
    RES := UTF82BytesLead;
  end;

  {Leadbyte : 3Byte}
  if (B >= $E0) and (B <= $EF) then
  begin
    RES := UTF83BytesLead;
  end;

  {Leadbyte : 4Byte}
  if (B >= $F0) and (B <= $F7) then
  begin
    RES := UTF84BytesLead;
  end;

  Result := RES;
end;

function IsUTF8AfterSecondByte(const B: Byte): Boolean;
begin
  //UTF8��2�o�C�g�ڈȍ~���ǂ���
  Result := (B >= $80) and (B <= $BF);
end;

function IsUTF8(const B: array of Byte; var BCUTF8: Integer; IgnoreEncodes: TIgnoreEncodes): Boolean;
var
  i: Integer;
  CheckIndex: Integer;
begin
  //UTF8���ǂ���
  if ieUTF8 in IgnoreEncodes then
  begin
    Result := False;
    Exit;
  end;

  Result := True;

  CheckIndex := 0;

  for i := 0 to Length(B) - 1 do
  begin
    if i = CheckIndex then
    begin
      case IsUTF8FirstElement(B[i]) of
        InvalidElement:
        begin
          {1�o�C�g�ڂ��s��}
          Result := False;
          Break;
        end;
        UTF8Single:
        begin
          {1�o�C�g�����iASCII�j}
          //Inc(BCUTF8);
        end;
        UTF82BytesLead:
        begin
          if i < Length(B) - 1 then
          begin
            if IsUTF8AfterSecondByte(B[i+1]) then
            begin
              {������2�o�C�g����}
              Inc(BCUTF8,2);
              Inc(CheckIndex);
            end
            else
            begin
              {2�o�C�g�ڂ��s��}
              Result := False;
              Break;
            end;
          end;
        end;
        UTF83BytesLead:
        begin
          if i < Length(B) - 1 then
          begin
            if IsUTF8AfterSecondByte(B[i+1]) then
            begin
              {������2�o�C�g��}
              if i < Length(B) - 2 then
              begin
                if IsUTF8AfterSecondByte(B[i+2]) then
                begin
                  {������3�o�C�g����}
                  Inc(BCUTF8,3);
                  Inc(CheckIndex,2);
                end
                else
                begin
                  {3�o�C�g�ڂ��s��}
                  Result := False;
                  Break;
                end;
              end;
            end
            else
            begin
              {2�o�C�g�ڂ��s��}
              Result := False;
              Break;
            end;
          end;
        end;
        UTF84BytesLead:
        begin
          {4�o�C�g����}
          if i < Length(B) - 1 then
          begin
            if IsUTF8AfterSecondByte(B[i+1]) then
            begin
              {������2�o�C�g��}
              if i < Length(B) - 2 then
              begin                
                if IsUTF8AfterSecondByte(B[i+2]) then
                begin
                  {������3�o�C�g��}
                  if i < Length(B) - 3 then
                  begin
                    if IsUTF8AfterSecondByte(B[i+3]) then
                    begin
                      {������4�o�C�g����}
                      Inc(BCUTF8,4);
                      Inc(CheckIndex,3);
                    end
                    else
                    begin
                      {4�o�C�g�ڂ��s��}
                      Result := False;
                      Break;
                    end;
                  end;
                end
                else
                begin
                  {3�o�C�g�ڂ��s��}
                  Result := False;
                  Break;
                end;
              end;
            end
            else
            begin
              {2�o�C�g�ڂ��s��}
              Result := False;
              Break;
            end;
          end;
        end;
      end;

      Inc(CheckIndex);
    end;
  end;
end;

{Shift_JIS}

function IsSJISFirstElement(const B: Byte): Integer;
var
  RES: Integer;
begin
  //SJIS�̍ŏ��̃G�������g�𒲂ׂ�
  RES := InvalidElement;

  {ASCII or 1�o�C�g�J�i}
  if IsASCII(B)  or ((B >= $A1) and (B <= $DF)) then
  begin
    RES := SJISSingle;
  end;

  {Leadbyte}
  if (((B >= $81) and (B <= $9F)) or ((B >= $E0) and (B <= $FC))) then
  begin
    RES := SJISLead;
  end;

  Result := RES;
end;

function IsSJIS(const B: array of Byte; var BCSJIS: Integer; IgnoreEncodes: TIgnoreEncodes): Boolean;
var
  i: Integer;
  CheckIndex: Integer;
begin
  //SJIS���ǂ���
  if ieSJIS in IgnoreEncodes then
  begin
    Result := False;
    Exit;
  end;

  Result := True;

  CheckIndex := 0;

  for i := 0 to Length(B) - 1 do
  begin
    if i = CheckIndex then
    begin
      case IsSJISFirstElement(B[i]) of
        InvalidElement:
        begin
          Result := False;
          Break;
        end;
        SJISSingle:
        begin
          //Inc(BCSJIS);
        end;
        SJISLead:
        begin
          if i < Length(B) - 1 then
          begin
            if ((B[i+1] >= $40) and (B[i+1] <= $7E)) or ((B[i+1] >= $80) and (B[i+1] <= $FC)) then
            begin
              Inc(BCSJIS,2);
              Inc(CheckIndex);
            end
            else
            begin
              Result := False;
              Break;
            end;
          end;
        end;
      end;
      Inc(CheckIndex);
    end;
  end;
end;

{EUC-JP}

function IsEUCFirstElement(const B: Byte): Integer;
var
  RES: Integer;
begin
  //EUC�̍ŏ��̃G�������g�𒲂ׂ�
  RES := InvalidElement;

  {ASCII}
  if IsASCII(B) then
  begin
    RES := EUCSingle;
  end;

  {Leadbyte : 2Byte}
  if (B >= $A1) and (B <= $FE) then
  begin
    RES := EUC2BytesLead;
  end;

  {Leadbyte : 2ByteKana}
  if B = $8E then
  begin
    RES := EUC2BytesLeadKana;
  end;

  {Leadbyte : 3Byte}
  if B = $8F then
  begin
    RES := EUC3BytesLead;
  end;

  Result := RES;
end;


function IsEUC(const B: array of Byte; var BCEUC: Integer; IgnoreEncodes: TIgnoreEncodes): Boolean;
var
  i: Integer;
  CheckIndex: Integer;
begin
  //EUC���ǂ���
  if ieEUC in IgnoreEncodes then
  begin
    Result := False;
    Exit;
  end;

  Result := True;

  CheckIndex := 0;

  for i := 0 to Length(B) - 1 do
  begin
    if i = CheckIndex then
    begin
      case IsEUCFirstElement(B[i]) of
        InvalidElement:
        begin
          Result := False;
          Break;
        end;
        EUCSingle:
        begin
          //Inc(BCEUC);
        end;
        EUC2BytesLead:
        begin
          if i < Length(B) -1 then
          begin
            if (B[i+1] >= $A1) and (B[i+1] <= $FE) then
            begin
              Inc(BCEUC,2);
              Inc(CheckIndex);
            end
            else
            begin
              Result := False;
              Break;
            end;
          end;
        end;
        EUC2BytesLeadKana:
        begin
          if i < Length(B) -1 then
          begin
            if (B[i+1] >= $A1) and (B[i+1] <= $DF)  then
            begin
              Inc(BCEUC,2);
              Inc(CheckIndex);
            end
            else
            begin
              Result := False;
              Break;
            end;
          end;
        end;
        EUC3BytesLead:
        begin
          if i < Length(B) -1 then
          begin
            if (B[i+1] >= $A1) and (B[i+1] <= $FE)  then
            begin
              if i < Length(B) -2 then
              begin
                if (B[i+2] >= $A1) and (B[i+2] <= $FE) then
                begin
                  Inc(BCEUC,3);
                  Inc(CheckIndex,2);
                end
                else
                begin
                  Result := False;
                  Break;
                end;
              end;
            end
            else
            begin
              Result := False;
              Break;
            end;
          end;
        end;
      end;
      Inc(CheckIndex);
    end;
  end;
end;

{JIS}

function IsJIS(const B: array of Byte; IgnoreEncodes: TIgnoreEncodes): Boolean;
var
  i: Integer;
begin
  //JIS���ǂ���
  Result := False;

  if ieJIS in IgnoreEncodes then
  begin
    Exit;
  end;

  for i := 0 to Length(B) - 1 do
  begin
    if B[i] <= $7F then
    begin
      if i < Length(B) - 2 then
      begin
        if((B[i] = $1B) and (B[i+1] = $28) and (B[i+2] = $42))//ESC ( B : JIS ASCII
         or ((B[i] = $1B) and (B[i+1] = $28) and (B[i+2] = $4A))//ESC ( J : JIS X 0201-1976 Roman Set
         or ((B[i] = $1B) and (B[i+1] = $28) and (B[i+2] = $49))//ESC ( I : JIS X 0201-1976 kana
         or ((B[i] = $1B) and (B[i+1] = $24) and (B[i+2] = $40))//ESC $ @ : JIS X 0208-1978(old_JIS)
         or ((B[i] = $1B) and (B[i+1] = $24) and (B[i+2] = $42))//ESC $ B : JIS X 0208-1983(new_JIS)
        then
        begin
          Result := True;
          Break;
        end;
      end;

      if i < Length(B) - 3 then
      begin
        //ESC $ ( D : JIS X 0212-1990
        if (B[i] = $1B) and (B[i+1] = $24) and (B[i+2] = $28) and (B[i+3] = $44) then
        begin
          Result := True;
          Break;
        end;
      end;

      if i < Length(B) - 5 then
      begin
        //ESC & @ ESC $ B : JIS X 0208-1990
        if (B[i] = $1B) and (B[i+1] = $26) and (B[i+2] = $40) and (B[i+3] = $1B) and (B[i+4] = $24) and (B[i+5] = $42) then
        begin
          Result := True;
          Break;
        end;
      end;

    end
    else
    begin
    	Break;
    end;
  end;
end;

{UTF-7}

function IsInvalidUTF7Char(const B: Byte): Boolean;
begin
  //�s����UTF-7�������ǂ��� !"#$%&*;<=>@[\]^_`{|}~
  Result := ((B >= $21) and (B <= $26))
   or (B = $2A)
   or ((B >= $3B) and (B <= $3E))
   or (B = $40)
   or ((B >= $5B) and (B <= $60))
   or ((B >= $7B) and (B <= $7E));
end;

function IsBase64(const B: Byte): Boolean;
begin
  //Base64���ǂ��� A-Z a-z 0-9 +/
  Result := ((B >= $41) and (B <= $5A))
   or ((B >= $61) and (B <= $7A))
   or ((B >= $30) and (B <= $39))
   or (B = $2B)
   or (B = $2F);
end;

function IsUTF7(const B: array of Byte; var BCUTF7: Integer; IgnoreEncodes: TIgnoreEncodes): Boolean;
var
  i: Integer;
  InBase64Seq: Boolean;
begin
  //UTF-7���ǂ���
  if ieUTF7 in IgnoreEncodes then
  begin
    Result := False;
    Exit;
  end;

  Result := True;
  InBase64Seq := False;

  for i := 0 to Length(B) - 1 do
  begin
    if (B[i] > $7F) or (IsInvalidUTF7Char(B[i]) = True) then
    begin
      {7bit������ or �s����UTF-7������������A�E�g}
      Result := False;
      Break;
    end
    else
    begin
      if (B[i] = $2B) and (InBase64Seq = False) then InBase64Seq := True;//BASE64�̃V�[�P���X�J�n
      if (B[i] = $2D) and (InBase64Seq = True) then InBase64Seq := False;//BASE64�̃V�[�P���X�I��

      if InBase64Seq = True then
      begin
        if IsBase64(B[i]) = True then
        begin
          Inc(BCUTF7,2);
        end
        else
        begin
          Result := False;
          Break;
        end;
      end;

    end;
  end;
end;

function CheckEncoding(BS: array of Byte; IgnoreEncodes: TIgnoreEncodes = []): Integer;
var
  RES: Integer;
  BOM: TBOMType;
  BCSJIS,BCEUC,BCUTF8,BCUTF7: Integer;
  BVSJIS,BVEUC,BVUTF8,BVUTF7: Boolean;
begin
  //�����R�[�h����֐�
  RES := ENC_UNKNOWN;

  if Length(BS) > 0 then
  begin
    {������}
    BCSJIS := 0;
    BCEUC := 0;
    BCUTF8 := 0;
    BCUTF7 := 0;

    {���菈��}
    BOM := BOMCheck(BS,IgnoreEncodes);
    if BOM = btNone then
    begin
      {BOM�Ȃ��FJIS,UTF8,SJIS,EUC,UTF7,UNKNOWN�̂����ꂩ}
      if IsJIS(BS,IgnoreEncodes) then
      begin
        {JIS}
        RES := ENC_JIS;
      end
      else
      begin
        {JIS�ȊO�FUTF8,SJIS,EUC,UTF7,UNKNOWN�̂����ꂩ}
        BVSJIS := IsSJIS(BS,BCSJIS,IgnoreEncodes);
        BVEUC := IsEUC(BS,BCEUC,IgnoreEncodes);
        BVUTF8 := IsUTF8(BS,BCUTF8,IgnoreEncodes);
        BVUTF7 := IsUTF7(BS,BCUTF7,IgnoreEncodes);

        if (BCEUC > BCSJIS) and (BCEUC > BCUTF8) and (BCEUC > BCUTF7) and (BVEUC = True) and (RES = ENC_UNKNOWN) then
        begin
          {EUC}
          RES := ENC_EUC;
        end;

        if (BCSJIS > BCEUC) and (BCSJIS > BCUTF8) and (BCSJIS > BCUTF7) and (BVSJIS = True) and (RES = ENC_UNKNOWN) then
        begin
          {SJIS}
          RES := ENC_SJIS;
        end;

        if (BCUTF8 > BCEUC) and (BCUTF8 > BCSJIS) and (BCUTF8 > BCUTF7) and (BVUTF8 = True) and (RES = ENC_UNKNOWN) then
        begin
          {UTF8}
          RES := ENC_UTF8;
        end;

        if (BCUTF7 > BCEUC) and (BCUTF7 > BCSJIS) and (BCUTF7 > BCUTF8) and (BVUTF7 = True) and (RES = ENC_UNKNOWN) then
        begin
          {UTF8}
          RES := ENC_UTF7;
        end;
      end;
    end
    else
    begin
      {BOM����FUTF32LE/BE,UTF16LE/BE,UTF8BOM�̂����ꂩ}
      case BOM of
        bt32LE: RES := ENC_UTF32LE;
        bt32BE: RES := ENC_UTF32BE;
        bt16LE: RES := ENC_UTF16LE;
        bt16BE: RES := ENC_UTF16BE;
        btUTF8: RES := ENC_UTF8BOM;
      end;
    end;
  end;
  Result := RES;
end;

function CheckEncoding(MS: TMemoryStream; CheckSize: Integer = 1024; IgnoreEncodes: TIgnoreEncodes = []): Integer;
var
  i: Integer;
  BS: array of Byte;
begin
  //�����R�[�h����֐�
  Result := ENC_UNKNOWN;

  if MS.Size > 0 then
  begin
    {������}
    MS.Position := 0;

    {�`�F�b�N�T�C�Y�̐ݒ�}
    if (CheckSize <= 0) or (CheckSize > MS.Size) then
    begin
      if MS.Size > MaxInt then
      begin
        CheckSize := MaxInt;
      end
      else
      begin
        CheckSize := MS.Size;
      end;
    end;

    {Byte�z��Ƀ`�F�b�N�T�C�Y���ς�}
    SetLength(BS,CheckSize);
    for i := 0 to CheckSize - 1 do
    begin
      MS.ReadBuffer(BS[i],1);
    end;

    Result := CheckEncoding(BS, IgnoreEncodes);
  end;
end;

function CheckEncoding(FS: TFileStream; CheckSize: Integer = 1024; IgnoreEncodes: TIgnoreEncodes = []): Integer;
var
  i: Integer;
  BS: array of Byte;
begin
  //�����R�[�h����֐�
  Result := ENC_UNKNOWN;

  if FS.Size > 0 then
  begin
    {������}
    FS.Position := 0;

    {�`�F�b�N�T�C�Y�̐ݒ�}
    if (CheckSize <= 0) or (CheckSize > FS.Size) then
    begin
      if FS.Size > MaxInt then
      begin
        CheckSize := MaxInt;
      end
      else
      begin
        CheckSize := FS.Size;
      end;
    end;

    {Byte�z��Ƀ`�F�b�N�T�C�Y���ς�}
    SetLength(BS,CheckSize);
    for i := 0 to CheckSize - 1 do
    begin
      FS.ReadBuffer(BS[i],1);
    end;

    Result := CheckEncoding(BS, IgnoreEncodes);
  end;
end;

end.
