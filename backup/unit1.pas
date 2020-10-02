unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    findText: TButton;
    FindDialog1: TFindDialog;
    OpenDialog1: TOpenDialog;
    openFile: TButton;
    Memo1: TMemo;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure findTextClick(Sender: TObject);
    procedure openFileClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  filename: string;
  tfIn: TextFile;
   s: string;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.openFileClick(Sender: TObject);
begin



if OpenDialog1.Execute then
begin
  filename := OpenDialog1.FileName;
  //ShowMessage(filename);
  AssignFile(tfIn, filename);
      // Open the file for reading
    reset(tfIn);
    Memo1.Lines.Clear;                              //delete all lines of Memo1
    // Keep reading lines until the end of the file is reached
    while not eof(tfIn) do
      begin
        readln(tfIn, s);
        Memo1.Lines.Add(s);

      end;

    // Done so close the file
    CloseFile(tfIn);
end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
        If SaveDialog1.Execute then
      begin
      Memo1.lines.SaveToFile(SaveDialog1.FileName);
      end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if filename='' then


  If SaveDialog1.Execute then
        Memo1.lines.SaveToFile(SaveDialog1.FileName);



else if
Memo1.lines.SaveToFile(filename);

end;



procedure TForm1.findTextClick(Sender: TObject);
begin

end;

end.

