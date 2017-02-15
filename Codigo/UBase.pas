unit UBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, System.ImageList,
  Vcl.ImgList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Datasnap.Provider, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, iniFiles,
  DBGridBeleza, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.Imaging.pngimage,
  EditBeleza, UDataModule;

type
  TFBase = class(TForm)
    DS: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    FDQuery1: TFDQuery;
    PageControl: TPageControl;
    TbDados: TTabSheet;
    grDados: TGroupBox;
    TbFiltros: TTabSheet;
    GBFiltros: TGroupBox;
    DBGridBeleza1: TDBGridBeleza;
    Panel2: TPanel;
    ImageListBase: TImageList;
    BInserir: TSpeedButton;
    BEditar: TSpeedButton;
    BExcluir: TSpeedButton;
    BSalvar: TSpeedButton;
    BCancelar: TSpeedButton;
    BPesquisar: TSpeedButton;
    BFechar: TSpeedButton;
    BFirst: TSpeedButton;
    BPrior: TSpeedButton;
    BNext: TSpeedButton;
    BLast: TSpeedButton;
    Acoes: TActionList;
    Action5: TAction;
    BtnLimparFiltros: TButton;
    Panel1: TPanel;
    PanelFiltros: TPanel;
    ActionMostrarFiltros: TAction;
    btnFiltrar: TButton;
    bRelatorio: TSpeedButton;
    ActionExcluir: TAction;

    procedure ClientDataSet1AfterCancel(DataSet: TDataSet);
    procedure ClientDataSet1AfterDelete(DataSet: TDataSet);
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure DSStateChange(Sender: TObject);
    procedure ClientDataSet1BeforeInsert(DataSet: TDataSet);
    procedure ArredondarComponente(Componente: TWinControl; const Radius: SmallInt);
    procedure BEditarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure BSalvarClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BPesquisarClick(Sender: TObject);
    procedure BFecharClick(Sender: TObject);
    procedure BFirstClick(Sender: TObject);
    procedure BPriorClick(Sender: TObject);
    procedure BNextClick(Sender: TObject);
    procedure BLastClick(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure Action5Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnLimparFiltrosClick(Sender: TObject);
    procedure ActionMostrarFiltrosExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BInserirClick(Sender: TObject);
    procedure btnRelatoriosClick(Sender: TObject);
    procedure bRelatorioClick(Sender: TObject);
    procedure ClientDataSet1ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure StatusBotoes (e : integer);
  public
    { Public declarations }
    adicionar, editar, consultar, excluir : boolean;
    function CorCamposOnlyRead():TColor;
    function validacao(operacao: integer):Boolean;
  end;

var
  FBase: TFBase;


implementation

{$R *.dfm}


procedure TFBase.Action5Execute(Sender: TObject);
begin
//
end;

procedure TFBase.ActionMostrarFiltrosExecute(Sender: TObject);
begin
  if(PanelFiltros.Visible = true) then
  begin
       PanelFiltros.Visible := false;
       BtnLimparFiltros.Click;
  end else
  begin
    PanelFiltros.Visible := true;
  end;

end;

procedure TFBase.ArredondarComponente(Componente: TWinControl; const Radius: SmallInt);
var
  R : TRect;
  Rgn : HRGN;
begin
  with Componente do
  begin
    R := ClientRect;
    Rgn := CreateRoundRectRgn(R.Left +2, R.Top+2, R.Right-2, R.Bottom-2, Radius, Radius);

    //Perform(EM_GETRECT, 0, lParam(@R));
    //InflateRect(R, -5, -5);
    //Perform(EM_SETRECTNP, 0, lParam(@R));
    SetWindowRgn(Handle, Rgn, True);
    Invalidate;
  end;

end;

procedure TFBase.ClientDataSet1AfterCancel(DataSet: TDataSet);
begin
 ClientDataSet1.CancelUpdates;
end;

procedure TFBase.ClientDataSet1AfterDelete(DataSet: TDataSet);
begin
  ClientDataSet1.ApplyUpdates(-1);
end;

procedure TFBase.ClientDataSet1AfterInsert(DataSet: TDataSet);
begin
    {Toda tela tem um codigo com parametro diferente.  >> SEQUENCIAL <<}
end;

procedure TFBase.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
  ClientDataSet1.ApplyUpdates(-1);
end;


procedure TFBase.ClientDataSet1BeforeInsert(DataSet: TDataSet);
var i : integer;
begin

 TClientDataSet( dataset).IndexFieldNames := '';

  for i := 0 to TClientDataSet(DataSet).IndexDefs.Count - 1 do
  begin
    TClientDataSet(DataSet).IndexDefs.delete(i);
  end;
end;

procedure TFBase.ClientDataSet1ReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ShowMessage(e.Message);

end;

function TFBase.CorCamposOnlyRead: TColor;
begin
  Result := $00CECBC2;
end;

procedure TFBase.DSDataChange(Sender: TObject; Field: TField);
begin
//
end;

procedure TFBase.DSStateChange(Sender: TObject);
begin
    tbFiltros.TabVisible := ds.DataSet.State in [dsBrowse, dsInactive];
    grDados.Enabled      := ds.DataSet.State in dsEditModes;

    if ds.DataSet.State in dsEditModes then
      StatusBotoes(1)
    else
      StatusBotoes(2);
end;

procedure TFBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action5.Execute;
end;

procedure TFBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // Impede Alt+F4
  if ((ssAlt in Shift) and (Key = VK_F4)) then
  Key := 0;
end;

procedure TFBase.FormShow(Sender: TObject);
begin
  ArredondarComponente(btnFiltrar, 60);
  ArredondarComponente(BtnLimparFiltros, 60);
  BSalvar.Enabled := false;
  BCancelar.Enabled := false;
end;

procedure TFBase.BLastClick(Sender: TObject);
begin
  //if(validacao(2) = true)then
  //begin
    DS.DataSet.Last;
  //end else
  //begin
  //  ShowMessage('Permiss�o Negada');
  //end;
end;

procedure TFBase.BNextClick(Sender: TObject);
begin
  //if(validacao(2) = true)then
  //begin
    DS.DataSet.Next;
  //end else
  //begin
  //  ShowMessage('Permiss�o Negada');
  //end;
end;

procedure TFBase.BEditarClick(Sender: TObject);
begin
  //if(validacao(3) = true)then
  //  begin
    if ds.DataSet.Active then
    begin
          if not ds.DataSet.IsEmpty then
          begin
              ds.DataSet.Edit;
              PageControl.ActivePageIndex := 0;
          end else
              ShowMessage('N�o H� Registros para Altera��o.');
    end;

  //end else
  //begin
  //  ShowMessage('Permiss�o Negada');
  //end;
end;

procedure TFBase.BExcluirClick(Sender: TObject);
begin
  //if(validacao(4) = true)then
  //begin
    if ds.DataSet.Active then
    begin
      if not ds.DataSet.IsEmpty then
      begin
          if (Application.MessageBox('Deseja Deletar ', 'Deletar', MB_YESNO + MB_ICONQUESTION) = id_yes) then
          begin
            ActionExcluir.Execute;
            ds.DataSet.Delete;
          end;
      end else
          ShowMessage('N�o H� registros');
    end;
  //end else
  //begin
  //  ShowMessage('Permiss�o Negada');
  //end;


end;

procedure TFBase.BFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFBase.BFirstClick(Sender: TObject);
begin
  //if(validacao(2) = true)then
  //begin
    DS.DataSet.First;
  //end else
  //begin
  //  ShowMessage('Permiss�o Negada');
  //end;
end;

procedure TFBase.BInserirClick(Sender: TObject);
begin
  //if(validacao(1) = true)then
  //begin
    if not ds.DataSet.Active then
          ds.DataSet.Open;

      PageControl.ActivePageIndex := 0;
      ds.DataSet.Append;
  //end else
  //begin
  //  ShowMessage('Permiss�o Negada');
  //end;
end;

procedure TFBase.BSalvarClick(Sender: TObject);
begin
DS.DataSet.Post;
DS.OnDataChange(Sender, nil);
end;

procedure TFBase.BtnLimparFiltrosClick(Sender: TObject);
begin
//
  ClientDataSet1.Filtered := false;
end;

procedure TFBase.btnRelatoriosClick(Sender: TObject);
var
  nomeTela: String;
begin
{
  frelatorios := tfrelatorios.Create(self);
  with frelatorios do
  begin
      try
        visible := false;
          Assimila_Relat_q(Screen.ActiveForm.Name, 0, DS.DataSet, DS.DataSet, '', '');
          ShowModal;
      finally
          Relatorios_sis.close;
          relats_usur.close;
          Free;
      end;
   end;
}
end;


procedure TFBase.BCancelarClick(Sender: TObject);
begin
if (Application.MessageBox('Deseja Cancelar ', 'Cancelar', MB_YESNO + MB_ICONQUESTION )= id_yes) then
    begin
        action5.Execute;
        ds.DataSet.Cancel;
        DS.OnDataChange(Sender, nil);
    end;

end;

procedure TFBase.BPesquisarClick(Sender: TObject);
begin
  {if(validacao(2) = true)then
    begin }
    DS.DataSet.Close;
    DS.DataSet.Open;
  {end else
  begin
    ShowMessage('Permiss�o Negada');
  end; }
end;

procedure TFBase.BPriorClick(Sender: TObject);
begin
  //if(validacao(2) = true)then
  //begin
    DS.DataSet.Prior;
  //end else
  //begin
  //  ShowMessage('Permiss�o Negada');
  //end;
end;

procedure TFBase.bRelatorioClick(Sender: TObject);
begin
  //

end;

procedure TFBase.StatusBotoes(e: integer);
begin
//
  BSalvar.Enabled := e=1;

  BCancelar.Enabled := e=1;

  //Next Prior Lest Fi
  BPrior.Enabled := (e=2) and not (DS.DataSet.IsEmpty);
  BNext.Enabled := (e=2) and not (DS.DataSet.IsEmpty);
  BFirst.Enabled := (e=2) and not (DS.DataSet.IsEmpty);
  BLast.Enabled := (e=2) and not (DS.DataSet.IsEmpty);
  BFechar.Enabled := (e=2) and not (DS.DataSet.IsEmpty);

  BInserir.Enabled := e=2;

  BExcluir.Enabled := (e=2) and not (DS.DataSet.IsEmpty);

  BEditar.Enabled := (e=2) and not (DS.DataSet.IsEmpty);

  bRelatorio.Enabled := (e=2) and not (DS.DataSet.IsEmpty);

  BPesquisar.Enabled := e=2;

end;

function TFBase.validacao(operacao: integer): Boolean;
var
iduser : string;
idInterface, edit : integer;
nomeInterface : string;
resultado : boolean;
begin
  //
    consultar := false;
    editar := false;
    adicionar := false;
    excluir := false;

    //Obtem id interface
    idInterface := 0;
    Dmodule.qAux.close;
    Dmodule.qAux.SQL.Text := 'select idinterface from interface where tela =:idT';
    nomeInterface := self.Name;
    Delete(nomeInterface,1,1);  //Tira o F do nome da interface
    //ShowMessage('Interface: ' + nomeInterface);
    Dmodule.qAux.ParamByName('idT').Value := nomeInterface;
    Dmodule.qAux.open;
    idInterface := Dmodule.qAux.FieldByName('idinterface').AsInteger;

    //Pesquisa as permiss�es
    DModule.qAcesso.Close;
    DModule.qAcesso.SQL.Text := 'select s.*, i.idinterface as interface, m.idmodulo as modulo from seguranca s ';
    DModule.qAcesso.SQL.Add('left outer join interface i on i.idinterface = s.idinterface ');
    DModule.qAcesso.SQL.Add('left outer join modulo m on m.idmodulo = i.idmodulo ');
    DModule.qAcesso.SQL.Add('where s.idTipo_usuario =:idTU and s.idInterface =:idInterf');
    DModule.qAcesso.ParamByName('idTU').Value := Dmodule.idTipoUsuario;
    DModule.qAcesso.ParamByName('idInterf').Value := idInterface;
    DModule.qAcesso.Open();
    DModule.cdsAcesso.Close;
    DModule.cdsAcesso.Open;
    DModule.cdsAcesso.First;

    case operacao of
      1: //Adicionar
        begin
          if(Dmodule.cdsAcessocadastrar.AsBoolean = true)then
          begin
            resultado := true;
          end else
            resultado := false;

        end;
      2://Consultar
        begin
          if(Dmodule.cdsAcessoconsultar.AsBoolean = true)then
          begin
            resultado := true;
          end else
            resultado := false;

        end;
      3://Editar
        begin
          if(Dmodule.cdsAcessoalterar.AsBoolean = true)then
          begin
            resultado := true;
          end else
            resultado := false;

        end;
      4: //Exclui
        begin
          if(Dmodule.cdsAcessoexcluir.AsBoolean = true)then
          begin
            resultado := true;
          end else
            resultado := false;

        end;
    end;
    result := resultado;


end;

end.
