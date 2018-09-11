unit un01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Datasnap.DBClient;

type
  TFormulario = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    CmbAcao: TComboBox;
    CmbCampo: TComboBox;
    Edit1: TEdit;
    Button1: TButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label15: TLabel;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Codigo: TIntegerField;
    ClientDataSet1Descricao: TStringField;
    ClientDataSet1Unidade: TStringField;
    ClientDataSet1Fornecedor: TStringField;
    ClientDataSet1Data: TDateField;
    ClientDataSet1Quantidade: TFloatField;
    ClientDataSet1Unitario: TCurrencyField;
    ClientDataSet1Total: TCurrencyField;
    ClientDataSet1EstoqueQTD: TAggregateField;
    ClientDataSet1EstoqueVLR: TAggregateField;
    procedure FormCreate(Sender: TObject);
    procedure ClientDataSet1CalcFields(DataSet: TDataSet);
    procedure ClientDataSet1BeforePost(DataSet: TDataSet);
    procedure CmbAcaoChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formulario: TFormulario;

implementation

{$R *.dfm}

procedure TFormulario.Button1Click(Sender: TObject);
var
  vEncontrei: Boolean;
begin
  case CmbAcao.ItemIndex of
    0: // Indexar
      begin
        ClientDataSet1.IndexFieldNames := CmbCampo.Text;
      end;
    1:
      begin
        if Edit1.Text = '' then
          MessageDlg('Insira um Dado', mtInformation, mbOKCancel, 0)
        else if ClientDataSet1.Locate(CmbCampo.Text, Edit1.Text, []) then
        begin
          ShowMessage('Encontrado e Registro Posicinado');
        end
        else
          ShowMessage('Não Encontrado');
      end;
    2:
      begin
        if Edit1.Text = '' then
          MessageDlg('Insira um Dado', mtInformation, mbOKCancel, 0)
        else
          ClientDataSet1.IndexFieldNames := CmbCampo.Text;
        if ClientDataSet1.FindKey([Edit1.Text]) then
        begin
          ShowMessage('Arquivo encontrado com sucesso');
        end
        else
          ShowMessage('Não Encontrado');
      end;
    3:
      begin
        ClientDataSet1.EmptyDataSet;
      end;
    4:
      begin
        if Edit1.Text = '' then
          MessageDlg('Insira um Dado', mtInformation, mbOKCancel, 0)
        else
          vEncontrei := False;
        ClientDataSet1.DisableControls;
        try
          ClientDataSet1.First;
          while not ClientDataSet1.Eof do
          begin
            if (ClientDataSet1.FieldByName(CmbCampo.Text).AsString = Edit1.Text)
            then
            begin
              vEncontrei := True;
              Break   ;
              ShowMessage('Encontrou');
            end;
            ClientDataSet1.Next
          end;
        finally
          ClientDataSet1.EnableControls
        end;
      end;
     5:
      begin
         if Edit1.Text = '' then
          MessageDlg('Insira um Dado', mtInformation, mbOKCancel, 0)
        else
        begin
          ClientDataSet1.Filtered := false;
          ClientDataSet1.Filter := Edit1.Text;
          ClientDataSet1.Filtered := True;
        end;
      end;
    6:
      begin
       ClientDataSet1.Filtered := false;
       ClientDataSet1.Filter := '';
      end;
  end;
end;

procedure TFormulario.ClientDataSet1BeforePost(DataSet: TDataSet);
begin
  if ClientDataSet1Codigo.IsNull then
  begin
    ShowMessage('voce nao imformou um Codigo');
    Abort
  end;

  if ClientDataSet1Descricao.IsNull then
  begin
    ShowMessage('voce nao imformou uma Descricao');
    Abort
  end;
  if ClientDataSet1Unidade.IsNull then
  begin
    ShowMessage('voce nao imformou uma Unidade');
    Abort
  end;
  if ClientDataSet1Data.IsNull then
  begin
    ShowMessage('voce nao imformou uma Data');
    Abort
  end;
  if ClientDataSet1Fornecedor.IsNull then
  begin
    ShowMessage('voce nao imformou um Fornecedor');
    Abort
  end;
  if ClientDataSet1Quantidade.IsNull then
  begin
    ShowMessage('voce nao imformou uma Quantidade');
    Abort
  end;
  if ClientDataSet1Unitario.IsNull then
  begin
    ShowMessage('voce nao imformou um Unitario');
    Abort
  end;
end;

procedure TFormulario.ClientDataSet1CalcFields(DataSet: TDataSet);
begin
  if (not ClientDataSet1.FieldByName('Quantidade').IsNull) and
    (not ClientDataSet1.FieldByName('Unitario').IsNull) Then
  begin
    ClientDataSet1.FieldByName('Total').Value :=
      ClientDataSet1.FieldByName('Quantidade').Value *
      ClientDataSet1.FieldByName('Unitario').Value;
  end;
end;

procedure TFormulario.CmbAcaoChange(Sender: TObject);
begin

  if (CmbAcao.Text = 'Indexar') or (CmbAcao.Text = 'Limpar') or
    (CmbAcao.Text = 'Limpar Filtro') then
    Edit1.Enabled := False;
end;

procedure TFormulario.FormCreate(Sender: TObject);
const
  cDataFile = 'Dados.xml';
begin
  ClientDataSet1.FileName := ExtractFilePath(Application.ExeName) + cDataFile;
  if FileExists(ClientDataSet1.FileName) then
    ClientDataSet1.Open
  else
    ClientDataSet1.CreateDataSet
end;

end.
