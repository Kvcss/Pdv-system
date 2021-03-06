unit ufrmMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    e1: TMenuItem;
    Movimentaes1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    Produtos1: TMenuItem;
    Fornecedores1: TMenuItem;
    Usuarios1: TMenuItem;
    Funcionarios1: TMenuItem;
    Cargos1: TMenuItem;
    procedure Usuarios1Click(Sender: TObject);
    procedure Funcionarios1Click(Sender: TObject);
    procedure Cargos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

{$R *.dfm}

uses ufrmUsuarios, urfmFuncionarios, urfmCargos;

procedure TFrmMenu.Cargos1Click(Sender: TObject);
begin
  FrmCargos := TFrmCargos.Create(self);
  FrmCargos.ShowModal;
end;

procedure TFrmMenu.Funcionarios1Click(Sender: TObject);
begin
  FrmFuncionarios := TFrmFuncionarios.Create(self);
  FrmFuncionarios.ShowModal;
end;

procedure TFrmMenu.Usuarios1Click(Sender: TObject);
begin
  FrmUsuarios := TFrmUsuarios.Create(self);
  FrmUsuarios.ShowModal;
end;

end.
