unit U01001;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UBase, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, DBGridBeleza,
  Vcl.ExtCtrls, EditBeleza, Vcl.StdCtrls, Vcl.ComCtrls, udatamodule, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, Vcl.Mask, Vcl.DBCtrls, cxTextEdit,
  cxMaskEdit, cxSpinEdit, Vcl.Tabs, dxBarBuiltInMenu, Vcl.Menus, cxPC, cxImage,
  dxCameraControl, cxBlobEdit, Vcl.DdeMan, cxCheckBox, cxGroupBox, cxLabel,
  cxRadioGroup, cxButtons, DateUtils, cxMemo, Math, DBEditBeleza,
  Vcl.Samples.Spin, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppBands, ppCache, ppDesignLayer, ppParameter, ppCtrls, ppPrnabl, frxClass,
  frxDBSet, frxGradient, frxExportPDF, ShellAPI, System.Bluetooth,
  System.Bluetooth.Components, frxExportImage, dxBar, dxRibbonRadialMenu,
  cxClasses, dxCustomTileControl, dxTileControl, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.Ribbon, Vcl.RibbonLunaStyleActnCtrls, dxToggleSwitch;

type
  TF01001 = class(TFBase)
    cxPageControl1: TcxPageControl;
    pagPerfil: TcxTabSheet;
    pagFichaExercicios: TcxTabSheet;
    pagMensalidades: TcxTabSheet;
    camera: TdxCameraControl;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    cxDBMaskEdit5: TcxDBMaskEdit;
    Label5: TLabel;
    cxGroupBox8: TcxGroupBox;
    qFichaAluno: TFDQuery;
    pFichaAluno: TDataSetProvider;
    CDSFichaAluno: TClientDataSet;
    DSFichaAluno: TDataSource;
    qTreino: TFDQuery;
    pTreino: TDataSetProvider;
    CDSTreino: TClientDataSet;
    qTreinoidTreino: TIntegerField;
    qTreinodescricaoTreino: TStringField;
    CDSTreinoidTreino: TIntegerField;
    CDSTreinodescricaoTreino: TStringField;
    cxGroupBox10: TcxGroupBox;
    DBGridBelezaFichasAluno: TDBGridBeleza;
    DSTreino: TDataSource;
    pagModalidades: TcxTabSheet;
    cxGroupBox11: TcxGroupBox;
    cxGroupBox12: TcxGroupBox;
    cxGroupBox13: TcxGroupBox;
    SpeedButton3: TSpeedButton;
    DBGridBeleza4: TDBGridBeleza;
    DSModalidade: TDataSource;
    cdsModalidade: TClientDataSet;
    pModalidade: TDataSetProvider;
    QMODALIDADE: TFDQuery;
    QMODALIDADEidAluno: TIntegerField;
    QMODALIDADEidmodalidade: TIntegerField;
    QMODALIDADEdataInscri��o: TDateField;
    QMODALIDADEdiavencimento: TIntegerField;
    QMODALIDADEDESCRICAOMODALIDADE: TStringField;
    cdsModalidadeidAluno: TIntegerField;
    cdsModalidadeidmodalidade: TIntegerField;
    cdsModalidadedataInscri��o: TDateField;
    cdsModalidadediavencimento: TIntegerField;
    cdsModalidadeDESCRICAOMODALIDADE: TStringField;
    QMODALIDADEvalor: TSingleField;
    cdsModalidadevalor: TSingleField;
    Label27: TLabel;
    EditModalidade: TEdit;
    editBModalidade: TEditBeleza;
    PanelBotoesModalidades: TPanel;
    btnCancelaMatricula: TSpeedButton;
    cxGroupBox14: TcxGroupBox;
    cxGroupBox15: TcxGroupBox;
    cxGroupBox16: TcxGroupBox;
    DBGridBeleza5: TDBGridBeleza;
    PanelBotoesMensalidades: TPanel;
    btnPagamento: TSpeedButton;
    pPagamento: TDataSetProvider;
    cdsPagamento: TClientDataSet;
    DSPagamento: TDataSource;
    qPagamento: TFDQuery;
    btnIsencao: TSpeedButton;
    btnCancelarPI: TSpeedButton;
    PanelBotoesFichaDeExercicios: TPanel;
    btnImprimirFicha: TSpeedButton;
    btnNovoFicha: TSpeedButton;
    REPORT_FICHA: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frxGradientObject1: TfrxGradientObject;
    frxPDFExport1: TfrxPDFExport;
    DSRelFicha: TDataSource;
    qRelFicha: TFDQuery;
    pRelFicha: TDataSetProvider;
    CDSRelFicha: TClientDataSet;
    EditPesqModalidade: TEditBeleza;
    cbxPesqModalidade: TCheckBox;
    editPesqidModalidade: TEdit;
    EditPesqNome: TEdit;
    cbxPesqNome: TCheckBox;
    cbxPesqSemFichaExercicios: TCheckBox;
    cbxPesqSemMatriculaAtiva: TCheckBox;
    cbxPesqFichaVencida: TCheckBox;
    cbxPesqPagamentoEmAtraso: TCheckBox;
    cxImage1: TcxImage;
    ImageListAUX: TImageList;
    frxJPEGExport1: TfrxJPEGExport;
    frxDBDataset1: TfrxDBDataset;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    GROUPBOX2: TGroupBox;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    GroupBox_ALUNO: TGroupBox;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label28: TLabel;
    Label29: TLabel;
    qFichaAlunoidFichaAluno: TIntegerField;
    qFichaAlunoidAluno: TIntegerField;
    qFichaAlunodataComposicao: TDateField;
    qFichaAlunonomeInstrutor: TStringField;
    CDSFichaAlunoidFichaAluno: TIntegerField;
    CDSFichaAlunoidAluno: TIntegerField;
    CDSFichaAlunodataComposicao: TDateField;
    CDSFichaAlunonomeInstrutor: TStringField;
    cxGroupBox9: TcxGroupBox;
    DBEditBInstrutor: TDBEditBeleza;
    DBEditInstrutor: TDBEdit;
    Label22: TLabel;
    qFichaAlunodataVencimento: TDateField;
    CDSFichaAlunodataVencimento: TDateField;
    qserieFichaAluno: TFDQuery;
    qserieFichaAlunoidFichaAluno: TIntegerField;
    qserieFichaAlunoidTreino: TIntegerField;
    qserieFichaAlunoidExercicio: TIntegerField;
    qserieFichaAlunoqtdSerie: TIntegerField;
    qserieFichaAlunoqtdRepeticao: TIntegerField;
    qserieFichaAlunodescricaoTreino: TStringField;
    qserieFichaAlunonomeExercicio: TStringField;
    qserieFichaAlunoidgrupoExercicio: TIntegerField;
    qserieFichaAlunodescricaoGrupoExercicio: TStringField;
    qserieFichaAlunoidequipamento: TIntegerField;
    qserieFichaAlunodescricaoequipamento: TStringField;
    pserieFichaAluno: TDataSetProvider;
    CDSserieFichaAluno: TClientDataSet;
    CDSserieFichaAlunoidFichaAluno: TIntegerField;
    CDSserieFichaAlunoidTreino: TIntegerField;
    CDSserieFichaAlunoidExercicio: TIntegerField;
    CDSserieFichaAlunoqtdSerie: TIntegerField;
    CDSserieFichaAlunoqtdRepeticao: TIntegerField;
    CDSserieFichaAlunodescricaoTreino: TStringField;
    CDSserieFichaAlunonomeExercicio: TStringField;
    CDSserieFichaAlunoidgrupoExercicio: TIntegerField;
    CDSserieFichaAlunodescricaoGrupoExercicio: TStringField;
    CDSserieFichaAlunoidequipamento: TIntegerField;
    CDSserieFichaAlunodescricaoequipamento: TStringField;
    DSserieFichaAluno: TDataSource;
    qRelFichaidAluno: TIntegerField;
    qRelFichanomeAluno: TStringField;
    qRelFichadataNascimento: TDateField;
    qRelFichaemail: TStringField;
    qRelFichasexo: TStringField;
    qRelFichacidade: TStringField;
    qRelFichabairro: TStringField;
    qRelFicharua: TStringField;
    qRelFichanumero: TIntegerField;
    qRelFichacep: TIntegerField;
    qRelFichatel1: TStringField;
    qRelFichatel2: TStringField;
    qRelFichanomeResponsavel: TStringField;
    qRelFichaparentescoResponsavel: TStringField;
    qRelFichatelResponsavel: TStringField;
    qRelFichadataCadastro: TDateField;
    qRelFichacpf: TStringField;
    qRelFichaidInstrutor: TIntegerField;
    qRelFichaNOMEINSTRUTORFICHA: TStringField;
    qRelFichaDATACOMPOSICAO: TDateField;
    qRelFichaDATAVENCIMENTO: TDateField;
    qRelFichaCODFICHA: TIntegerField;
    CDSRelFichaidAluno: TIntegerField;
    CDSRelFichanomeAluno: TStringField;
    CDSRelFichadataNascimento: TDateField;
    CDSRelFichaemail: TStringField;
    CDSRelFichasexo: TStringField;
    CDSRelFichacidade: TStringField;
    CDSRelFichabairro: TStringField;
    CDSRelFicharua: TStringField;
    CDSRelFichanumero: TIntegerField;
    CDSRelFichacep: TIntegerField;
    CDSRelFichatel1: TStringField;
    CDSRelFichatel2: TStringField;
    CDSRelFichanomeResponsavel: TStringField;
    CDSRelFichaparentescoResponsavel: TStringField;
    CDSRelFichatelResponsavel: TStringField;
    CDSRelFichadataCadastro: TDateField;
    CDSRelFichacpf: TStringField;
    CDSRelFichaidInstrutor: TIntegerField;
    CDSRelFichaNOMEINSTRUTORFICHA: TStringField;
    CDSRelFichaDATACOMPOSICAO: TDateField;
    CDSRelFichaDATAVENCIMENTO: TDateField;
    CDSRelFichaCODFICHA: TIntegerField;
    ClientDataSet1IDADE: TIntegerField;
    DBEdit14: TDBEdit;
    ClientDataSet1situacao: TStringField;
    EditPesqIdInstrutor: TEdit;
    EditPesqInstrutor: TEditBeleza;
    cbxPesqInstrutor: TCheckBox;
    qserieFichaAlunotipomedida: TStringField;
    CDSserieFichaAlunotipomedida: TStringField;
    pagAvaliacoes: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    PanelBotoesAvaliacoes: TPanel;
    btnImprimirAnamnese: TSpeedButton;
    btnNovaAvaliacao: TSpeedButton;
    PageControlAvaliacoes: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    cxGroupBox2: TcxGroupBox;
    DBGridBelezaAnamnese: TDBGridBeleza;
    DBGridBelezaFisica: TDBGridBeleza;
    DBGridBelezaPostural: TDBGridBeleza;
    DBGridBelezaDadosClinicos: TDBGridBeleza;
    dsAnamnese: TDataSource;
    CDSAnamnese: TClientDataSet;
    pAnamnese: TDataSetProvider;
    qAnamnese: TFDQuery;
    qAnamneseidAnamnese: TIntegerField;
    qAnamneseidAluno: TIntegerField;
    qAnamnesefrequenciaSemanalTreino: TIntegerField;
    qAnamnesepeso: TSingleField;
    qAnamnesealtura: TSingleField;
    qAnamneseqtdHorasSono: TIntegerField;
    qAnamneseqtdRefeicoesDia: TIntegerField;
    qAnamnesedieta: TBooleanField;
    qAnamnesesuplementacao: TBooleanField;
    qAnamnesedataAnamnese: TDateField;
    qAnamnesefuma: TBooleanField;
    qAnamneseconsumoAlcoolico: TBooleanField;
    qAnamnesenomeAvaliador: TStringField;
    qAnamneseinformacaoAdicional: TStringField;
    qAnamneseidObjetivo: TIntegerField;
    GroupBox3: TGroupBox;
    DBEdit2: TDBEdit;
    DBEditBeleza1: TDBEditBeleza;
    PanelPerfil: TPanel;
    qPagamentoidPagamento: TIntegerField;
    qPagamentoidAluno: TIntegerField;
    qPagamentoidmodalidade: TIntegerField;
    qPagamentovalorModalidade: TSingleField;
    qPagamentovalorCobrado: TSingleField;
    qPagamentodataVencimento: TDateField;
    qPagamentodataPagamento: TDateField;
    qPagamentoidstatusPagamento: TIntegerField;
    qPagamentoLOGUsuarioResponsavel: TStringField;
    qPagamentodescricaoModalidade: TStringField;
    qPagamentodescricaoStatusPagamento: TStringField;
    cdsPagamentoidPagamento: TIntegerField;
    cdsPagamentoidAluno: TIntegerField;
    cdsPagamentoidmodalidade: TIntegerField;
    cdsPagamentovalorModalidade: TSingleField;
    cdsPagamentovalorCobrado: TSingleField;
    cdsPagamentodataVencimento: TDateField;
    cdsPagamentodataPagamento: TDateField;
    cdsPagamentoidstatusPagamento: TIntegerField;
    cdsPagamentoLOGUsuarioResponsavel: TStringField;
    cdsPagamentodescricaoModalidade: TStringField;
    cdsPagamentodescricaoStatusPagamento: TStringField;
    REPORT_ANAMNESEPATOLOGIA: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    qAnamnesePatologia: TFDQuery;
    pAnamnesePatologia: TDataSetProvider;
    cdsAnamnesePatologia: TClientDataSet;
    qAnamnesePatologiaidAnamnese: TIntegerField;
    qAnamnesePatologiaidPatologia: TIntegerField;
    qAnamnesePatologiaobservacaoMedica: TStringField;
    cdsAnamnesePatologiaidAnamnese: TIntegerField;
    cdsAnamnesePatologiaidPatologia: TIntegerField;
    cdsAnamnesePatologiaobservacaoMedica: TStringField;
    dsanamnesePatologia: TDataSource;
    frxDBDataset4: TfrxDBDataset;
    qAnamnesePatologianomepatologia: TStringField;
    cdsAnamnesePatologianomepatologia: TStringField;
    qAnamneseNOMEALUNO: TStringField;
    CDSAnamneseidAnamnese: TIntegerField;
    CDSAnamneseidAluno: TIntegerField;
    CDSAnamnesefrequenciaSemanalTreino: TIntegerField;
    CDSAnamnesepeso: TSingleField;
    CDSAnamnesealtura: TSingleField;
    CDSAnamneseqtdHorasSono: TIntegerField;
    CDSAnamneseqtdRefeicoesDia: TIntegerField;
    CDSAnamnesedieta: TBooleanField;
    CDSAnamnesesuplementacao: TBooleanField;
    CDSAnamnesedataAnamnese: TDateField;
    CDSAnamnesefuma: TBooleanField;
    CDSAnamneseconsumoAlcoolico: TBooleanField;
    CDSAnamnesenomeAvaliador: TStringField;
    CDSAnamneseinformacaoAdicional: TStringField;
    CDSAnamneseidObjetivo: TIntegerField;
    CDSAnamneseNOMEALUNO: TStringField;
    qRelAnamnese: TFDQuery;
    pRelAnamnese: TDataSetProvider;
    cdsRelAnamnese: TClientDataSet;
    dsRelAnamnese: TDataSource;
    qRelAnamneseidAnamnese: TIntegerField;
    qRelAnamneseidAluno: TIntegerField;
    qRelAnamnesefrequenciaSemanalTreino: TIntegerField;
    qRelAnamnesepeso: TSingleField;
    qRelAnamnesealtura: TSingleField;
    qRelAnamneseqtdHorasSono: TIntegerField;
    qRelAnamneseqtdRefeicoesDia: TIntegerField;
    qRelAnamnesefuma: TBooleanField;
    qRelAnamnesedieta: TBooleanField;
    qRelAnamnesesuplementacao: TBooleanField;
    qRelAnamneseconsumoAlcoolico: TBooleanField;
    qRelAnamnesedataAnamnese: TDateField;
    qRelAnamneseinformacaoAdicional: TStringField;
    qRelAnamneseidObjetivo: TIntegerField;
    qRelAnamnesenomeAvaliador: TStringField;
    qRelAnamneseNOMEALUNO: TStringField;
    qRelAnamneseDESCRICAOOBJETIVO: TStringField;
    cdsRelAnamneseidAnamnese: TIntegerField;
    cdsRelAnamneseidAluno: TIntegerField;
    cdsRelAnamnesefrequenciaSemanalTreino: TIntegerField;
    cdsRelAnamnesepeso: TSingleField;
    cdsRelAnamnesealtura: TSingleField;
    cdsRelAnamneseqtdHorasSono: TIntegerField;
    cdsRelAnamneseqtdRefeicoesDia: TIntegerField;
    cdsRelAnamnesefuma: TBooleanField;
    cdsRelAnamnesedieta: TBooleanField;
    cdsRelAnamnesesuplementacao: TBooleanField;
    cdsRelAnamneseconsumoAlcoolico: TBooleanField;
    cdsRelAnamnesedataAnamnese: TDateField;
    cdsRelAnamneseinformacaoAdicional: TStringField;
    cdsRelAnamneseidObjetivo: TIntegerField;
    cdsRelAnamnesenomeAvaliador: TStringField;
    cdsRelAnamneseNOMEALUNO: TStringField;
    cdsRelAnamneseDESCRICAOOBJETIVO: TStringField;
    cdsRelAnamneseIMC: TFloatField;
    FDQuery1idAluno: TIntegerField;
    FDQuery1nomeAluno: TStringField;
    FDQuery1dataNascimento: TDateField;
    FDQuery1email: TStringField;
    FDQuery1sexo: TStringField;
    FDQuery1cidade: TStringField;
    FDQuery1bairro: TStringField;
    FDQuery1rua: TStringField;
    FDQuery1numero: TIntegerField;
    FDQuery1cep: TIntegerField;
    FDQuery1tel1: TStringField;
    FDQuery1tel2: TStringField;
    FDQuery1nomeResponsavel: TStringField;
    FDQuery1parentescoResponsavel: TStringField;
    FDQuery1telResponsavel: TStringField;
    FDQuery1dataCadastro: TDateField;
    FDQuery1cpf: TStringField;
    FDQuery1idInstrutor: TIntegerField;
    FDQuery1NOMEINSTRUTORFICHA: TStringField;
    ClientDataSet1idAluno: TIntegerField;
    ClientDataSet1nomeAluno: TStringField;
    ClientDataSet1dataNascimento: TDateField;
    ClientDataSet1email: TStringField;
    ClientDataSet1sexo: TStringField;
    ClientDataSet1cidade: TStringField;
    ClientDataSet1bairro: TStringField;
    ClientDataSet1rua: TStringField;
    ClientDataSet1numero: TIntegerField;
    ClientDataSet1cep: TIntegerField;
    ClientDataSet1tel1: TStringField;
    ClientDataSet1tel2: TStringField;
    ClientDataSet1nomeResponsavel: TStringField;
    ClientDataSet1parentescoResponsavel: TStringField;
    ClientDataSet1telResponsavel: TStringField;
    ClientDataSet1dataCadastro: TDateField;
    ClientDataSet1cpf: TStringField;
    ClientDataSet1idInstrutor: TIntegerField;
    ClientDataSet1NOMEINSTRUTORFICHA: TStringField;
    qAnamneseDESCRICAOOBJETIVO: TStringField;
    CDSAnamneseDESCRICAOOBJETIVO: TStringField;
    qAvaFisica: TFDQuery;
    qAvaFisicaidAvaliacaoFisica: TIntegerField;
    qAvaFisicaidAluno: TIntegerField;
    qAvaFisicadataAvaliacaoFisica: TDateField;
    qAvaFisicanomeAvaliador: TStringField;
    qAvaFisicamed_peso_cm: TSingleField;
    qAvaFisicamed_altura_cm: TSingleField;
    qAvaFisicamed_cervical_cm: TSingleField;
    qAvaFisicamed_torax_cm: TSingleField;
    qAvaFisicamed_quadril_cm: TSingleField;
    qAvaFisicamed_cintura_cm: TSingleField;
    qAvaFisicamed_abdomen_cm: TSingleField;
    qAvaFisicamed_bracoDireitoContraido_cm: TSingleField;
    qAvaFisicamed_bracoDireitoRelaxado_cm: TSingleField;
    qAvaFisicamed_antibracoDireito_cm: TSingleField;
    qAvaFisicamed_coxaDireita_cm: TSingleField;
    qAvaFisicamed_panturrilhaDireita_cm: TSingleField;
    qAvaFisicamed_bracoEsquerdoContraido_cm: TSingleField;
    qAvaFisicamed_bracoEsquerdoRelaxado_cm: TSingleField;
    qAvaFisicamed_antibracoEsquerdo_cm: TSingleField;
    qAvaFisicamed_coxaEsquerda_cm: TSingleField;
    qAvaFisicamed_panturrilhaEsquerda_cm: TSingleField;
    qAvaFisicadobra_triciptal_mm: TSingleField;
    qAvaFisicadobra_subescapular_mm: TSingleField;
    qAvaFisicadobra_axiliar_mm: TSingleField;
    qAvaFisicadobra_abdominal_mm: TSingleField;
    qAvaFisicadobra_coxa_mm: TSingleField;
    qAvaFisicadobra_panturrilha_mm: TSingleField;
    qAvaFisicadobra_biciptal_mm: TSingleField;
    qAvaFisicadobra_peitoral_mm: TSingleField;
    qAvaFisicadobra_suprailiac_mm: TSingleField;
    qAvaFisicatipoProtocolo: TStringField;
    qAvaFisicaporcentagemGordura: TIntegerField;
    qAvaFisicaNOMEALUNO: TStringField;
    PAvaFisica: TDataSetProvider;
    CDSAvaFisica: TClientDataSet;
    CDSAvaFisicaidAvaliacaoFisica: TIntegerField;
    CDSAvaFisicaidAluno: TIntegerField;
    CDSAvaFisicadataAvaliacaoFisica: TDateField;
    CDSAvaFisicanomeAvaliador: TStringField;
    CDSAvaFisicamed_peso_cm: TSingleField;
    CDSAvaFisicamed_altura_cm: TSingleField;
    CDSAvaFisicamed_cervical_cm: TSingleField;
    CDSAvaFisicamed_torax_cm: TSingleField;
    CDSAvaFisicamed_quadril_cm: TSingleField;
    CDSAvaFisicamed_cintura_cm: TSingleField;
    CDSAvaFisicamed_abdomen_cm: TSingleField;
    CDSAvaFisicamed_bracoDireitoContraido_cm: TSingleField;
    CDSAvaFisicamed_bracoDireitoRelaxado_cm: TSingleField;
    CDSAvaFisicamed_antibracoDireito_cm: TSingleField;
    CDSAvaFisicamed_coxaDireita_cm: TSingleField;
    CDSAvaFisicamed_panturrilhaDireita_cm: TSingleField;
    CDSAvaFisicamed_bracoEsquerdoContraido_cm: TSingleField;
    CDSAvaFisicamed_bracoEsquerdoRelaxado_cm: TSingleField;
    CDSAvaFisicamed_antibracoEsquerdo_cm: TSingleField;
    CDSAvaFisicamed_coxaEsquerda_cm: TSingleField;
    CDSAvaFisicamed_panturrilhaEsquerda_cm: TSingleField;
    CDSAvaFisicadobra_triciptal_mm: TSingleField;
    CDSAvaFisicadobra_subescapular_mm: TSingleField;
    CDSAvaFisicadobra_axiliar_mm: TSingleField;
    CDSAvaFisicadobra_abdominal_mm: TSingleField;
    CDSAvaFisicadobra_coxa_mm: TSingleField;
    CDSAvaFisicadobra_panturrilha_mm: TSingleField;
    CDSAvaFisicadobra_biciptal_mm: TSingleField;
    CDSAvaFisicadobra_peitoral_mm: TSingleField;
    CDSAvaFisicadobra_suprailiac_mm: TSingleField;
    CDSAvaFisicatipoProtocolo: TStringField;
    CDSAvaFisicaporcentagemGordura: TIntegerField;
    CDSAvaFisicaNOMEALUNO: TStringField;
    DSAvaFisica: TDataSource;
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure cxDBImage1PropertiesAssignPicture(Sender: TObject;
      const Picture: TPicture);
    procedure BSalvarClick(Sender: TObject);
    procedure ClientDataSet1CalcFields(DataSet: TDataSet);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure CDSFichaAlunoAfterCancel(DataSet: TDataSet);
    procedure CDSFichaAlunoAfterDelete(DataSet: TDataSet);
    procedure CDSFichaAlunoAfterPost(DataSet: TDataSet);
    procedure DBGridBelezaFichasAlunoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure editBModalidadeButtonClick(Sender: TObject;
      var query_result: TFDQuery);
    procedure cdsModalidadeAfterCancel(DataSet: TDataSet);
    procedure cdsModalidadeAfterDelete(DataSet: TDataSet);
    procedure cdsModalidadeAfterPost(DataSet: TDataSet);
    procedure btnCancelaMatriculaClick(Sender: TObject);
    procedure cdsPagamentoAfterCancel(DataSet: TDataSet);
    procedure cdsPagamentoAfterDelete(DataSet: TDataSet);
    procedure cdsPagamentoAfterPost(DataSet: TDataSet);
    procedure cdsPagamentoAfterInsert(DataSet: TDataSet);
    procedure btnPagamentoClick(Sender: TObject);
    procedure btnIsencaoClick(Sender: TObject);
    procedure DSPagamentoDataChange(Sender: TObject; Field: TField);
    procedure btnCancelarPIClick(Sender: TObject);
    procedure DBGridBeleza5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnImprimirFichaClick(Sender: TObject);
    procedure bRelatorioClick(Sender: TObject);
    procedure DSFichaAlunoDataChange(Sender: TObject; Field: TField);
    procedure DSModalidadeDataChange(Sender: TObject; Field: TField);
    procedure DSStateChange(Sender: TObject);
    procedure EditBTreinoKeyPress(Sender: TObject; var Key: Char);
    procedure EditBeleza1ButtonClick(Sender: TObject;
      var query_result: TFDQuery);
    procedure Action5Execute(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure EditPesqModalidadeChange(Sender: TObject);
    procedure EditPesqNomeChange(Sender: TObject);
    procedure BtnLimparFiltrosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BEditarClick(Sender: TObject);
    procedure cxImage1PropertiesChange(Sender: TObject);
    procedure EditPesqModalidadeKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9Change(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure ActionReajustarDBGridBeleza1Execute(Sender: TObject);
    procedure DBGridBelezaFichasAlunoDblClick(Sender: TObject);
    procedure btnNovoFichaClick(Sender: TObject);
    procedure DBEditInstrutorChange(Sender: TObject);
    procedure EditPesqInstrutorChange(Sender: TObject);
    procedure btnNovaAvaliacaoClick(Sender: TObject);
    procedure DBGridBelezaAnamneseDblClick(Sender: TObject);
    procedure DBGridBelezaAnamneseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSAnamneseAfterCancel(DataSet: TDataSet);
    procedure CDSAnamneseAfterDelete(DataSet: TDataSet);
    procedure dsAnamneseDataChange(Sender: TObject; Field: TField);
    procedure pModalidadeBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure pFichaAlunoBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure pAnamneseBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure pPagamentoBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure btnImprimirAnamneseClick(Sender: TObject);
    procedure dsRelAnamneseDataChange(Sender: TObject; Field: TField);
    procedure cdsRelAnamneseCalcFields(DataSet: TDataSet);
    procedure REPORT_ANAMNESEPATOLOGIABeforePrint(Sender: TfrxReportComponent);
    procedure REPORT_ANAMNESEPATOLOGIAPreview(Sender: TObject);
    procedure CDSAnamneseAfterPost(DataSet: TDataSet);
    procedure cxDBDateEdit1Exit(Sender: TObject);
    procedure DBGridBelezaFisicaDblClick(Sender: TObject);
    procedure DBGridBelezaFisicaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    imagemMudou : Boolean;
    procedure QualityResizeBitmap(bmpOrig, bmpDest: TBitmap; newWidth, newHeight: Integer);
    procedure CriarForm(Tela, Desc: String);
    function MsgDlgButtonPersonal(const Msg: string; DlgType: TMsgDlgType;
    Buttons: TMsgDlgButtons; Captions: array of string): Integer;
    procedure OcultarSheets(PageControl: TPageControl);


  end;

var
  F01001: TF01001;

const
  MinGraphicSize = 44;

implementation

{$R *.dfm}

uses
vcl.themes, vcl.styles, U01010,
{IMAGENS BLOB}
{ SysUtils, Classes, Graphics, }GIFImg, JPEG, PngImage, U01011, u_relatorios,
  U01013, ValidaCPF, U01014, U01016, DBCommon, U01017;


procedure TF01001.Action5Execute(Sender: TObject);
begin
  inherited;
    //APAGA REGISTROS SUBORDINADOS
    IF(DS.DataSet.State = dsInsert)THEN
    BEGIN

      //ANAMNESE
      {DModule.qAux.SQL.Text := 'DELETE FROM ANAMNESE WHERE idALUNO =:IDA';
      DModule.qAux.ParamByName('IDA').AsInteger := ClientDataSet1idAluno.AsInteger;
      DModule.qAux.Close;
      DModule.qAux.ExecSQL;}
      cdsanamnese.First;
      while not(cdsanamnese.eof)do
      begin
      cdsanamnese.Delete;
      end;

      //MODALIDADES
      {DModule.qAux.SQL.Text := 'DELETE FROM ALUNOMODALIDADE WHERE idALUNO =:IDA';
      DModule.qAux.ParamByName('IDA').AsInteger := ClientDataSet1idAluno.AsInteger;
      DModule.qAux.Close;
      DModule.qAux.ExecSQL; }
      cdsmodalidade.First;
      while not(cdsmodalidade.eof)do
      begin
      cdsmodalidade.Delete;
      end;

      // S�RIE (FICHA DE EXERC�CIOS)
      {DModule.qAux.SQL.Text := 'DELETE FROM FICHAALUNO WHERE idALUNO =:IDA';
      DModule.qAux.ParamByName('IDA').AsInteger := ClientDataSet1idAluno.AsInteger;
      DModule.qAux.Close;
      DModule.qAux.ExecSQL;}
      CDSFichaAluno.First;
      while not(CDSFichaAluno.eof)do
      begin
      CDSFichaAluno.Delete;
      end;

      // PAGAMENTOS
      {DModule.qAux.SQL.Text := 'DELETE FROM PAGAMENTO WHERE idALUNO =:IDA';
      DModule.qAux.ParamByName('IDA').AsInteger := ClientDataSet1idAluno.AsInteger;
      DModule.qAux.Close;
      DModule.qAux.ExecSQL;}
      CDSPagamento.First;
      while not(CDSPagamento.eof)do
      begin
      CDSPagamento.Delete;
      end;

    END;

    //habilita painel respons�vel
    DBEdit4.Enabled := true;
    DBEdit5.Enabled := true;
    cxDBMaskEdit5.Enabled := true;

    //PAGE PERFIL DO ALUNO VOLTA AO ESTRUTURA NORMAL DE APRESENTA��O
    cxPageControl1.ActivePageIndex := 0;

    //COR DO CAMPO CPF
    DBEdit9.Font.Color := clblack;

end;

procedure TF01001.ActionReajustarDBGridBeleza1Execute(Sender: TObject);
var
  I: Integer;
  somaLarguraTotal, porcentagemColuna : integer;
begin
  inherited;

  //REAJUSTA DBGRIDBELEZA1 EM RELA��O AO TAMANHO DA TELA
  for I := 0 to DBGridBeleza1.Columns.Count-1 do
  begin
      if(   (DBGridBeleza1.Columns[i].Visible = true) and (DBGridBeleza1.Columns[i].FieldName = 'nomeAluno')  )then
      begin
            if(Screen.Width >= 1366)then
            begin
                  //mantem defini��es padr�o, PROPORCIONALMENTE;
                  DBGridBeleza1.Columns[i].Expanded := TRUE;
            end else
            begin
                if(Screen.Width >= 1360)then
                begin
                      DBGridBeleza1.Columns[i].Width := 482; // nomeAluno
                end else
                begin
                      if(Screen.Width >= 1280)then
                      begin
                            DBGridBeleza1.Columns[i].Width := 430; // nomeAluno
                      end else
                      begin
                            if(Screen.Width >= 1024)then
                            begin
                                DBGridBeleza1.Columns[i].Width := 300; // nomeAluno
                            end;
                      end;
                end;
            end;
      end;
  end;


end;

procedure TF01001.BEditarClick(Sender: TObject);
begin
  inherited;
  imagemMudou := false;
end;

procedure TF01001.BExcluirClick(Sender: TObject);
begin
  DModule.qAux.SQL.Text := 'SELECT * FROM pagamento p where p.idAluno =:idA '+
  'and ((p.idstatuspagamento = 2) or(p.idstatuspagamento = 3))';
  DModule.qAux.ParamByName('idA').AsInteger := ClientDataSet1idAluno.AsInteger;
  DModule.qAux.Close;
  DModule.qAux.open;
  if(DModule.qAux.RecordCount > 0)then
  begin
    showmessage('ALUNO POSSUI PAGAMENTOS EFETUADOS. N�O � POSS�VEL EXCLUIR.')
  end else
  begin
    //Executa exclus�o
    inherited;
  end;
end;

procedure TF01001.bRelatorioClick(Sender: TObject);
begin
  inherited;

  if NOT(Ds.DataSet.IsEmpty)then
  begin
      frelatorios := tfrelatorios.Create(self);
      with frelatorios do
      begin
          try
              visible := false;
              //Assimila_Relat_q(Screen.ActiveForm.Name, 0, DS.DataSet, DSSerie.DataSet, 'idAluno', 'idAluno');

              //Assimila3Datasets(Screen.ActiveForm.Name, DS.DataSet, DSModalidade.DataSet, DSFichaAluno.DataSet,'idAluno', 'idAluno', 'idAluno');
              Assimila3Datasets(Screen.ActiveForm.Name, fdquery1, QMODALIDADE, qFichaAluno,'idAluno', 'idAluno', 'idAluno');

              ShowModal;
          finally
              Relatorios_sis.close;
              relats_usur.close;
              Free;
          end;
      end;
  end else
  begin
    ShowMessage('Relat�rio necessita de pesquisa');
  end;
end;

procedure TF01001.BSalvarClick(Sender: TObject);
VAR
  aDest : TBitmap;
begin
  if TRIM(DBEdit3.Text) <> '' then
  begin

      IF NOT(ClientDataSet1dataNascimento.IsNull)THEN
      BEGIN

          IF NOT(ClientDataSet1idInstrutor.IsNull)THEN
          BEGIN

              // AVISO QUE O ALUNO N�O POSSUI MATR�CULA ATIVA
              IF(DSModalidade.DataSet.RecordCount = 0)THEN
              BEGIN
                ShowMessage('ATEN��O!' + #13 + 'ALUNO N�O ESTA MATRICULADO EM NENHUMA MODALIDADE.');
              END;


              {
              // SALVA FOTO DO ALUNO BLOB
              IF((ClientDataSet1.State = dsEdit) or (ClientDataSet1.State = dsInsert))THEN
              BEGIN
                aDest:= tbitmap.create;
                aDest.Width := 200;
                aDest.Height := 113;
                aDest.Canvas.StretchDraw(Rect(0, 0, aDest.width, aDest.Height), cxDBImage1.Picture.Bitmap);
                //ClientDataSet1foto.Assign(camera.CapturedBitmap);
                ClientDataSet1foto.Assign(aDest);
              END;
              }


              //SE HOUVE MUDAN�A DA FOTO, ELA � SALVA NA PASTA IMG_ALUNO NO DIRET�RIO
              if(imagemMudou = true)then
              begin
                  //SALVA FOTO PASTA
                  IF NOT(DirectoryExists( Application.ExeName + '\img_Aluno' ))THEN
                  BEGIN
                    CreateDir(ExtractFilePath(Application.ExeName) + '\img_Aluno')
                  END;
                  cxImage1.Picture.SaveToFile(ExtractFilePath(Application.ExeName) + 'img_Aluno\'+ ClientDataSet1idAluno.AsString + '.bmp');
              end;
              imagemMudou := false;

              //PAGE PERFIL DO ALUNO VOLTA AO ESTRUTURA NORMAL DE APRESENTA��O
              cxPageControl1.ActivePageIndex := 0;

              //habilita painel respons�vel
              DBEdit4.Enabled := true;
              DBEdit5.Enabled := true;
              cxDBMaskEdit5.Enabled := true;

              //OBS: A INCLUS�O DA IMAGEM DEVE SER FEITA ANTES DA MUDAN�A DO STATE DO CLIENTDATASET;
              inherited;

              //COR DO CAMPO CPF
              DBEdit9.Font.Color := clblack;

          END ELSE
          BEGIN
            ShowMessage('INFORME UM INSTRUTOR PARA O ALUNO (ABA FICHA DE EXERC�CIOS)');
          END;

      END ELSE
      BEGIN
        ShowMessage('INFORME A DATA DE NASCIMENTO DO ALUNO');
      END;
  end else
  begin
      ShowMessage('INFORME NOME DO ALUNO');
  end;
end;

procedure TF01001.btnCancelarPIClick(Sender: TObject);
begin
  inherited;

  if NOT(DS.DataSet.IsEmpty) then
  begin

      // Se Passar pelas verifica��es acima, executa o cancelamento.
      DModule.qAux.SQL.Text := 'SELECT P.* FROM PAGAMENTO P WHERE P. IDPAGAMENTO = ' +
      '(SELECT max(IDPAGAMENTO) FROM PAGAMENTO PA WHERE PA.idAluno =:IDA AND PA.idmodalidade =:IDM AND ((PA.idstatusPagamento = 2)OR(PA.idstatusPagamento = 3)) )';
      DModule.qAux.ParamByName('IDA').AsInteger := cdsPagamentoidAluno.AsInteger;
      DModule.qAux.ParamByName('IDM').AsInteger := cdsPagamentoidmodalidade.AsInteger;
      DModule.qAux.Close;
      DModule.qAux.Open;

      IF(cdsPagamentoidPagamento.AsInteger = DModule.qAux.FieldByName('IDPAGAMENTO').AsInteger)THEN
      BEGIN
          //verifica��o de seguran�a.
          // Atendente n�o concede nem cancela uma isen��o
          // Atendente s� cancela pagamentos de hoje.
          if(DModule.administrador = false)then
          begin
              if(cdsPagamentoidstatusPagamento.AsInteger = 3)then
              begin
                  ShowMessage('Para cancelar uma isen��o concedida, � necess�rio estar logado como administrador.' +
                    #13 + 'Isen��o n�o cancelada!');
                  exit;
              end else
              begin
                  //n�o � administrador
                  DModule.qAux.SQL.Text := 'select DATEDIFF (now(), :dataP ) as diferenca';
                  DModule.qAux.ParamByName('dataP').AsDateTime := cdsPagamentodataPagamento.AsDateTime;
                  DModule.qAux.Close;
                  DModule.qAux.Open;
                  //caso n�o seja um adminitrador, ele s� pode cancelar pagamentos feitos hoje.
                  if(DModule.qAux.FieldByName('diferenca').AsInteger <> 0)then
                  begin
                      ShowMessage('Para cancelar registro com data de pagamento superior a um dia, � necess�rio estar logado como administrador.' +
                      #13 + 'Pagamento n�o cancelado!');
                      exit;
                  end;
              end;
          end;

          if (Application.MessageBox('Confirma Cancelar Pagamento/Isen��o?', 'CANCELAMENTO', MB_YESNO + MB_ICONQUESTION) = id_yes) then
          begin
                  TRY
                      cdsPagamento.Edit;
                      if(cdsPagamentoidstatusPagamento.AsInteger = 2)then
                      begin
                          cdsPagamentoLOGUsuarioResponsavel.AsString :=
                          'Pagamento cancelado por ' + DModule.nomeusuario + ' em ' + DateTostr(DModule.datahoje);
                      end else
                      begin
                          if(cdsPagamentoidstatusPagamento.AsInteger = 3)then
                          begin
                              cdsPagamentoLOGUsuarioResponsavel.AsString :=
                              'Isen��o cancelada por ' + DModule.nomeusuario + ' em ' + DateTostr(DModule.datahoje);
                          end;

                      end;
                      cdsPagamentoidstatusPagamento.AsInteger := 1;
                      cdsPagamentovalorCobrado.Clear;
                      cdsPagamentodataPagamento.Clear;
                      cdsPagamento.Post;
                      cdsPagamento.Refresh;

                  except
                    ON E: Exception DO
                    BEGIN
                        ShowMessage('OCORREU UM ERRO DURANTE O CANCELAMENTO. CONSULTE SUPORTE!' + #13 + E.Message);
                    END;

                  END;
          end;


      END ELSE
      BEGIN
          ShowMessage('O ITEM SELECIONADO POSSUI REGISTROS POSTERIORES A ELE.'
          + #13 + 'EXCLUS�O N�O CONCLU�DA.'
          );
      END;

  end ELSE
  BEGIN
    ShowMessage('Nenhum Registro Selecionado');
  END;
end;

procedure TF01001.btnImprimirAnamneseClick(Sender: TObject);
begin
  inherited;

  //Imprimi anamnese
  if(PageControlAvaliacoes.TabIndex = 0)then
  begin
    IF(DS.DataSet.State = dsEDIT) THEN
    BEGIN
        TRY
            TRY
              qRelanamnese.Params[0].AsInteger := CDSAnamneseidAnamnese.AsInteger;
              cdsrelanamnese.close;
              cdsRelanamnese.open;
              REPORT_ANAMNESEPATOLOGIA.ShowReport(TRUE);
            EXCEPT
              RAISE;
            END;
        FINALLY
            dsRelAnamnese.DataSet.Close;
        END;
    END ELSE
    BEGIN
        IF(DS.DataSet.State = dsINSERT)THEN
        BEGIN
            //NO MODO INSERT OS DADOS DO CLIENTEDATASET1 AINDA N�O EST�O SALVOS, NESSE CASO EU FA�O UMA C�PIA PARA CDSRELFICHA
            TRY
            cdsRelAnamnese.close;
            CDSRelAnamnese.open;
            CDSRelAnamnese.EmptyDataSet;
            CDSRelAnamnese.Append;
            cdsRelAnamnesenomealuno.asString := ClientDataSet1nomeAluno.AsString;
            cdsRelAnamneseidAluno.AsInteger := ClientDataSet1idAluno.AsInteger;
            cdsRelAnamneseidAnamnese.AsInteger := CDSAnamneseidAnamnese.AsInteger;
            cdsRelAnamnesedataAnamnese.AsDateTime := CDSAnamnesedataAnamnese.AsDateTime;
            cdsRelAnamneseidObjetivo.AsInteger := CDSAnamneseidObjetivo.AsInteger;
            cdsRelAnamneseDESCRICAOOBJETIVO.AsString := CDSAnamneseDESCRICAOOBJETIVO.AsString;
            cdsRelAnamnesefrequenciaSemanalTreino.AsInteger := cdsAnamnesefrequenciaSemanalTreino.AsInteger;
            cdsRelAnamnesepeso.AsFloat := cdsAnamnesepeso.AsFloat;
            cdsRelAnamnesealtura.AsFloat := cdsAnamnesealtura.AsFloat;
            cdsRelAnamnesedieta.AsBoolean := cdsAnamnesedieta.AsBoolean;
            cdsRelAnamnesesuplementacao.AsBoolean := cdsAnamnesesuplementacao.AsBoolean;
            cdsRelAnamneseconsumoAlcoolico.AsBoolean := cdsAnamneseconsumoAlcoolico.AsBoolean;
            cdsRelAnamnesefuma.AsBoolean := cdsAnamnesefuma.AsBoolean;
            cdsRelAnamneseqtdHorasSono.AsInteger  := cdsAnamneseqtdHorasSono.AsInteger;
            cdsRelAnamneseqtdRefeicoesDia.AsInteger := cdsAnamneseqtdRefeicoesDia.AsInteger;
            cdsRelAnamnesenomeAvaliador.AsString := DModule.nomeusuario;
            cdsRelAnamnese.Post;

            REPORT_ANAMNESEPATOLOGIA.ShowReport(TRUE);
            FINALLY
              CDSRelanamnese.Cancel;
              CDSRelanamnese.CancelUpdates;
              CDSRelanamnese.close;
            END;
        END;

    END;

  end else
  begin
      //ShowMessage(inttostr(PageControlAvaliacoes.TabIndex));
  end;
end;

procedure TF01001.btnImprimirFichaClick(Sender: TObject);
begin
  inherited;

  IF(DS.DataSet.State = dsEDIT) THEN
  BEGIN
      TRY
          TRY
            qRelFicha.ParamByName('IDFA').AsInteger := CDSFichaAlunoidFichaAluno.AsInteger;
            DSRelFicha.DataSet.Close;
            DSRelFicha.DataSet.Open;
            REPORT_FICHA.ShowReport(TRUE);
          EXCEPT
            RAISE;
          END;
      FINALLY
          DSRelFicha.DataSet.Close;
      END;
  END ELSE
  BEGIN
      IF(DS.DataSet.State = dsINSERT)THEN
      BEGIN
          //NO MODO INSERT OS DADOS DO CLIENTEDATASET1 AINDA N�O EST�O SALVOS, NESSE CASO EU FA�O UMA C�PIA PARA CDSRELFICHA
          TRY
          CDSRelFicha.close;
          CDSRelFicha.open;
          CDSRelFicha.EmptyDataSet;
          CDSRelFicha.Append;
          CDSRelFichaIDAluno.AsINTEGER := ClientDataSet1IDAluno.AsINTEGER;
          CDSRelFichanomeAluno.AsString := ClientDataSet1nomeAluno.AsString;

          CDSRelFichaCODFICHA.AsInteger := CDSFichaAlunoidFichaAluno.AsInteger;
          CDSRelFichaDATACOMPOSICAO.AsDateTime := CDSFichaAlunodataComposicao.AsDateTime;
          CDSRelFichaDATAVENCIMENTO.AsDateTime := CDSFichaAlunodataVencimento.AsDateTime;

          //v2.0//CDSRelFichadataComposicaoFicha.AsDateTime := ClientDataSet1dataComposicaoFicha.AsDateTime;
          //v2.0//CDSRelFichaidInstrutorFicha.AsString := ClientDataSet1idInstrutorFicha.AsString;
          CDSRelFichaNOMEINSTRUTORFICHA.AsString := ClientDataSet1NOMEINSTRUTORFICHA.AsString;
          CDSRelFicha.Post;

          REPORT_FICHA.ShowReport(TRUE);
          FINALLY
            CDSRelFicha.Cancel;
            CDSRelFicha.CancelUpdates;
            CDSRelFicha.close;
          END;
      END;

  END;

end;

procedure TF01001.btnFiltrarClick(Sender: TObject);
begin
  inherited;

  FDQuery1.Close;
  FDQuery1.SQL.Text := 'SELECT a.*, INST.NOMEUSUARIO AS NOMEINSTRUTORFICHA FROM ALUNO A ' +
  'LEFT OUTER JOIN USUARIO INST ON INST.IDUSUARIO = A.IDINSTRUTOR WHERE 1=1 ';

  if(cbxPesqNome.Checked = true)then
  BEGIN
    FDQuery1.SQL.Add(' and a.nomeAluno like "%' + EditPesqNome.Text +'%"');
  END;
  if(cbxPesqModalidade.Checked = true)then
  BEGIN
    FDQuery1.SQL.Add('  and a.idaluno in (select idaluno from alunomodalidade where idmodalidade = ' + editPesqidModalidade.Text + ') ');
  END;
  if(cbxPesqSemMatriculaAtiva.Checked = true)then
  BEGIN
    FDQuery1.SQL.Add(' and a.idaluno not in (select idaluno from alunomodalidade)');
  END;
  if(cbxPesqPagamentoEmAtraso.Checked = true)then
  BEGIN
    FDQuery1.SQL.Add(' and a.idaluno in (select idaluno from pagamento where curdate() > dataVencimento and idStatusPagamento = 1 group by idaluno) ');
  END;
  if(cbxPesqInstrutor.Checked = true)then
  BEGIN
    FDQuery1.SQL.Add(' and a.idinstrutor = ' + EditPesqIdInstrutor.Text);
  END;

  if(cbxPesqSemFichaExercicios.Checked = true)then
  BEGIN
    FDQuery1.SQL.Add(' and a.idaluno not in (select idaluno from FICHAALUNO group by idAluno)');
  END;
  if(cbxPesqFichaVencida.Checked = true)then
  BEGIN
    FDQuery1.SQL.Add(' AND curdate() > (SELECT FA.DATAVENCIMENTO FROM FICHAALUNO FA WHERE FA.IDFICHAALUNO = (SELECT MAX(IDFICHAALUNO) FROM FICHAALUNO WHERE IDALUNO = A.IDALUNO))');
  END;


  FDQuery1.Open;
  BPesquisar.Click;

end;

procedure TF01001.btnIsencaoClick(Sender: TObject);
begin
  inherited;
  // VERIFICA SE H� PAGAMENTOS ANTERIORES AO ITEM SELECIONADO, EM ABERTO.
  DModule.qAux.SQL.Text := 'select p.* from pagamento p where p.idAluno =:idA and p.idModalidade =:idM and p.idStatusPagamento =:idS and (SELECT DATEDIFF(p.dataVencimento, :vdata)) < 0 ';
  DModule.qAux.ParamByName('IDA').AsInteger := cdsPagamentoidAluno.AsInteger;
  DModule.qAux.ParamByName('IDS').AsInteger := 1;   // 1 = Em aberto no banco
  DModule.qAux.ParamByName('IDM').AsInteger := cdsPagamentoidmodalidade.AsInteger;
  DModule.qAux.ParamByName('vData').AsDateTime := cdsPagamentodataVencimento.AsDateTime;
  DModule.qAux.Close;
  DModule.qAux.Open;

  if(DModule.qAux.RecordCount = 0)then
  begin
      //EFETUA PAGAMENTO
      With TF01010.Create(self, cdsPagamentoidPagamento.AsInteger, 2) do  // 1 =Pagamento, 2=Isen��o
      Begin
        ShowModal;
        Free;
      End;
      cdsPagamento.Refresh;
  end else
  begin
      if(DModule.qAux.RecordCount > 0)then
      begin
          //EXISTEM PAGAMENTOS ANTERIORES EM ATRASO, N�O � POSS�VEL CONCLUIR.
          ShowMessage('PAGAMENTO ANTERIOR EM ABERTO. N�O � POSS�VEL CONCLUIR. (' + inttostr( DModule.qAux.RecordCount ) + ')');
      end;
  end;
end;

procedure TF01001.cdsModalidadeAfterCancel(DataSet: TDataSet);
begin
  inherited;
  cdsModalidade.CancelUpdates;
end;

procedure TF01001.cdsModalidadeAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cdsModalidade.ApplyUpdates(-1);
end;

procedure TF01001.cdsModalidadeAfterPost(DataSet: TDataSet);
begin
  inherited;
  cdsModalidade.ApplyUpdates(-1);
end;

procedure TF01001.cdsPagamentoAfterCancel(DataSet: TDataSet);
begin
  inherited;
  cdsPagamento.CancelUpdates;
end;

procedure TF01001.cdsPagamentoAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cdsPagamento.ApplyUpdates(-1);
end;

procedure TF01001.cdsPagamentoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPagamentoidPagamento.AsInteger := DModule.buscaProximoParametro('pagamento');
end;

procedure TF01001.cdsPagamentoAfterPost(DataSet: TDataSet);
begin
  inherited;
  cdsPagamento.ApplyUpdates(-1);
end;

procedure TF01001.cdsRelAnamneseCalcFields(DataSet: TDataSet);
begin
  inherited;
  //CALCULA IMC
  if NOT(cdsRelAnamnesepeso.IsNull) and NOT(cdsRelAnamnesealtura.IsNull) then
  begin
    cdsRelAnamneseIMC.AsFloat := cdsRelAnamnesepeso.AsFloat/ (cdsRelAnamnesealtura.AsFloat * cdsRelAnamnesealtura.AsFloat) ;
  end;

end;

procedure TF01001.CDSAnamneseAfterCancel(DataSet: TDataSet);
begin
  inherited;
  CDSAnamnese.CancelUpdates;
end;

procedure TF01001.CDSAnamneseAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CDSAnamnese.ApplyUpdates(-1);
end;

procedure TF01001.CDSAnamneseAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSAnamnese.ApplyUpdates(-1);
end;

procedure TF01001.CDSFichaAlunoAfterCancel(DataSet: TDataSet);
begin
  inherited;
  CDSFichaAluno.CancelUpdates;
end;

procedure TF01001.CDSFichaAlunoAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CDSFichaAluno.ApplyUpdates(-1);
end;

procedure TF01001.CDSFichaAlunoAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSFichaAluno.ApplyUpdates(-1);
end;

procedure TF01001.ClientDataSet1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet1idAluno.AsInteger := DModule.buscaProximoParametro('aluno');
end;

procedure TF01001.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
  inherited;
  //
end;

procedure TF01001.ClientDataSet1CalcFields(DataSet: TDataSet);
begin
  inherited;

  // CALCULA IDADE DO ALUNO
  IF NOT(ClientDataSet1dataNascimento.IsNull)THEN
  BEGIN
    ClientDataSet1idADE.AsInteger := (DateUtils.YearsBetween(DATE, ClientDataSet1dataNascimento.AsDateTime));

  END;

  //SITUA��O DO ALUNO
  DModule.qAux.SQL.Text := 'SELECT * FROM alunomodalidade where idAluno = ' + ClientDataSet1idAluno.AsString ;
  DModule.qAux.Close;
  DModule.qAux.Open;
  if(DModule.qAux.RecordCount > 0)then
  begin
    ClientDataSet1situacao.AsString := 'ATIVO';
  end else
  begin
    ClientDataSet1situacao.AsString := 'INATIVO';
  end;

end;

procedure TF01001.CriarForm(Tela, Desc: String);
var
  PClass : TPersistentClass;
begin
  PClass := GetClass('T' + trim(Tela));
  if (PCLass <> nil) then
  begin
    with tFormClass(PClass).Create(Application) do
      try
        Name := Tela;
        Caption := Tela + ' - ' + Desc;
        //Mostra

        ShowModal;
      finally
        Free;
        tFormClass(PClass) := nil;
      end;
   end;
end;


procedure TF01001.cxDBDateEdit1Exit(Sender: TObject);
begin
  inherited;
  IF((ClientDataSet1.State = dsEdit) OR (ClientDataSet1.State = dsInsert))THEN
  BEGIN
    IF trim(cxDBDateEdit1.Text) <> '' THEN
    BEGIN
      ClientDataSet1idade.AsInteger := (DateUtils.YearsBetween(DATE, cxDBDateEdit1.Date));

      // CONTROLE DE PAINEL DADOS-RESPONS�VEL
      if(ClientDataSet1idade.AsInteger >= 18)then
      begin
          DBEdit4.Enabled := false;
          DBEdit5.Enabled := false;
          cxDBMaskEdit5.Enabled := false;
          DBEdit4.Clear;
          DBEdit5.Clear;
          cxDBMaskEdit5.Clear;
      end else
      begin
          if(ClientDataSet1idade.AsInteger < 18)then
          begin
              DBEdit4.Enabled := true;
              DBEdit5.Enabled := true;
              cxDBMaskEdit5.Enabled := true;
          end;
      end;

    END ELSE
    BEGIN
      ClientDataSet1idade.AsInteger := 0;
    END;
  END;
end;

procedure TF01001.cxDBImage1PropertiesAssignPicture(Sender: TObject;
  const Picture: TPicture);
VAR
  aDest : TBitmap;
begin
  inherited;
  //
    {
  IF((ClientDataSet1.State = dsEdit))THEN
  BEGIN
    aDest:= tbitmap.create;
    aDest.Width := 200;
    aDest.Height := 113;
    aDest.Canvas.StretchDraw(Rect(0, 0, aDest.width, aDest.Height), Picture.Bitmap);

    //ClientDataSet1foto.Assign(camera.CapturedBitmap);
    ClientDataSet1foto.Assign(aDest);

    ShowMessage('ok');
  END;
             }
end;

procedure TF01001.cxImage1PropertiesChange(Sender: TObject);
begin
  inherited;
  IF((ClientDataSet1.State = dsEdit) or (ClientDataSet1.State = dsInsert))THEN
  begin
    imagemMudou := true;
  end;
end;

procedure TF01001.DBEdit9Change(Sender: TObject);
var
  CPF:string;
  STATUS: BOOLEAN;
begin
  inherited;

  TRY
      IF (ds.DataSet.State = dsInsert) OR (ds.DataSet.State = dsEdit) then
      begin
            CPF := DBEdit9.Text;
            CPF := StringReplace(CPF, '-', ' ', [rfReplaceAll, rfIgnoreCase]);
            CPF := StringReplace(CPF, '.', ' ', [rfReplaceAll, rfIgnoreCase]);
            CPF := StringReplace(CPF, '_', ' ', [rfReplaceAll, rfIgnoreCase]);
            CPF := StringReplace(CPF, ' ', EmptyStr, [rfReplaceAll]);

            //VERIFICA SE � UM CPF V�LIDO
            STATUS := isCPF(CPF);
            if (STATUS = false) then
            begin
                DBEdit9.Font.Color := clRED;
                IF(LENGTH(CPF) = 11)THEN
                BEGIN
                  ShowMessage('ERRO: CPF INV�LIDO');
                  ClientDataSet1CPF.Clear;
                END;

            end else
            begin
                // NESSE CASO O CPF � V�LIDO!
                //AGORA, VERIFICA SE ESSE CPF J� ESTA SENDO UTILIZADO POR OUTRO ALUNO
                DModule.qAux.SQL.Text := 'select A.* From ALUNO A where A.CPF =:IDCPF';
                DModule.qAux.ParamByName('IDCPF').AsString := DBEdit9.Text;
                DModule.qAux.Close;
                DModule.qAux.Open;

                if NOT(DModule.qAux.IsEmpty)then
                begin
                    IF(DModule.qAux.FieldByName('IDALUNO').AsINTEGER <> ClientDataSet1idAluno.AsInteger)THEN
                    BEGIN
                      ShowMessage('ERRO: ' +'CPF JA REGISTRADO NO SISTEMA. ' + #13 + #13 + 'ALUNO: '+ DModule.qAux.FieldByName('NOMEALUNO').AsString);
                      DBEdit9.Font.Color := clRED;
                      ClientDataSet1CPF.Clear;
                    END ELSE
                    BEGIN
                      DBEdit9.Font.Color := clblack;
                    END;
                end ELSE
                BEGIN
                    DBEdit9.Font.Color := clblack;
                END;

            end;

      end;

  EXCEPT
  ON E : Exception do
      ShowMessage('ERRO: '+ E.ClassName+#13+E.Message);
  END;


end;

procedure TF01001.DBEdit9Exit(Sender: TObject);
VAR
  CPF: STRING;
begin

  //SE AO SAIR DO CAMPO CPF, LENGTH(CPF) < 11, APAGA TODO O CAMPO.
  IF (ds.DataSet.State = dsInsert) OR (ds.DataSet.State = dsEdit) then
  begin
      CPF := DBEdit9.Text;
      CPF := StringReplace(CPF, '-', ' ', [rfReplaceAll, rfIgnoreCase]);
      CPF := StringReplace(CPF, '.', ' ', [rfReplaceAll, rfIgnoreCase]);
      CPF := StringReplace(CPF, '_', ' ', [rfReplaceAll, rfIgnoreCase]);
      CPF := StringReplace(CPF, ' ', EmptyStr, [rfReplaceAll]);
      IF(LENGTH(CPF) < 11)THEN
      BEGIN
          ClientDataSet1CPF.Clear;
      END;
  end;

  inherited;
end;

procedure TF01001.DBEditInstrutorChange(Sender: TObject);
begin
  inherited;
  //
  IF TRIM(DBEditInstrutor.Text) <> '' THEN
  BEGIN
    btnNovoFicha.Enabled := TRUE;
  END ELSE
  BEGIN
    btnNovoFicha.Enabled := FALSE;
  END;

end;

procedure TF01001.DBGridBelezaFichasAlunoDblClick(Sender: TObject);
begin
  inherited;
  With TF01014.CreateCONSULTA(self, CDSFichaAlunoidFichaAluno.AsInteger) do
  Begin
    ShowModal;
    Free;
  End;
  CDSFichaAluno.CLOSE;
  CDSFichaAluno.OPEN;
end;

procedure TF01001.DBGridBelezaFichasAlunoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    inherited;
    if (key = 46) then
    //Deleta Ficha de Exerc�cios
    begin
      if MessageDlg('Deseja Apagar Item [COD:' + CDSFichaAlunoidFichaAluno.AsString + '] ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
          CDSFichaAluno.Delete;
      end;
    end;
end;

procedure TF01001.DBGridBelezaFisicaDblClick(Sender: TObject);
begin
  inherited;
  IF NOT(CDSAvaFisica.IsEmpty)THEN
  BEGIN
      With TF01017.CreateCONSULTA(self, CDSAvaFisicaidAvaliacaoFisica.AsInteger) do
      Begin
        ShowModal;
        Free;
      End;
      CDSAvaFisica.CLOSE;
      CDSAvaFisica.OPEN;
  END;
end;

procedure TF01001.DBGridBelezaFisicaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = 46) then
  //Deleta Ficha de Exerc�cios
  begin
    if MessageDlg('Deseja Apagar Item [COD:' + CDSAvaFisicaidAvaliacaoFisica.AsString + '] ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        CDSAvaFisica.Delete;
    end;
  end;
end;

procedure TF01001.DBGridBeleza5DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if(column.Title.Caption = 'SITUA��O')then
  begin
      if(cdsPagamentodataVencimento.AsDateTime < DModule.datahoje ) AND (cdsPagamentoidstatusPagamento.AsInteger = 1)then
      begin
          DBGridBeleza5.Canvas.Font.Color:= $0000008C; //PAGAMENTO ATRASADO = VERMELHO
          DBGridBeleza5.Canvas.FillRect(Rect);
          DBGridBeleza5.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end else
      begin
          if(cdsPagamentoidstatusPagamento.AsInteger = 1)then
          begin
              DBGridBeleza5.Canvas.Font.Color:= $0000B0B0; //PAGAMENTO EM ABERTO = AMARELO
              DBGridBeleza5.Canvas.FillRect(Rect);
              DBGridBeleza5.DefaultDrawColumnCell(Rect, DataCol, Column, State);
          end else
          begin
                if(cdsPagamentoidstatusPagamento.AsInteger = 2)then
                begin
                    DBGridBeleza5.Canvas.Font.Color:= $00007D00; //PAGAMENTO RECEBIDO = VERDE
                    DBGridBeleza5.Canvas.FillRect(Rect);
                    DBGridBeleza5.DefaultDrawColumnCell(Rect, DataCol, Column, State);
                end else
                begin

                end;
          end;
      end;
  end;
end;

procedure TF01001.DBGridBelezaAnamneseDblClick(Sender: TObject);
begin
  inherited;
  IF NOT(CDSAnamnese.IsEmpty)THEN
  BEGIN
      With TF01016.CreateCONSULTA(self, CDSAnamneseidAnamnese.AsInteger) do
      Begin
        ShowModal;
        Free;
      End;
      CDSAnamnese.CLOSE;
      CDSAnamnese.OPEN;
  END;
end;

procedure TF01001.DBGridBelezaAnamneseKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = 46) then
  //Deleta Ficha de Exerc�cios
  begin
    if MessageDlg('Deseja Apagar Item [COD:' + CDSAnamneseidAnamnese.AsString + '] ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        CDSAnamnese.Delete;
    end;
  end;
end;

procedure TF01001.dsAnamneseDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  IF(CDSAnamnese.RecordCount > 0)THEN
  BEGIN
      btnImprimirAnamnese.Enabled := TRUE;
  END ELSE
  BEGIN
      btnImprimirAnamnese.Enabled := FALSE;
  END;

  

end;

procedure TF01001.DSDataChange(Sender: TObject; Field: TField);
var
  caminho : string;
begin
  inherited;

  //PESQUISA FICHA DE EXERCICIO
  qFichaAluno.Params[0].AsInteger := ClientDataSet1idAluno.AsInteger;
  DSFichaAluno.DataSet.close;
  DSFichaAluno.DataSet.open;

  //PESQUISA Modalidade
  QMODALIDADE.Params[0].AsInteger := ClientDataSet1idAluno.AsInteger;
  DSModalidade.DataSet.close;
  DSModalidade.DataSet.open;

  //PESQUISA Pagamento
  qPagamento.Params[0].AsInteger := ClientDataSet1idAluno.AsInteger;
  DSPagamento.DataSet.close;
  DSPagamento.DataSet.open;

  //PESQUISA Anamnese
  qAnamnese.Params[0].AsInteger := ClientDataSet1idAluno.AsInteger;
  DSAnamnese.DataSet.close;
  DSAnamnese.DataSet.open;

  //PESQUISA AVALIA��O F�SICA
  qAvaFisica.Params[0].AsInteger := ClientDataSet1idAluno.AsInteger;
  DSAvaFisica.DataSet.close;
  DSAvaFisica.DataSet.open;

  if (ds.DataSet.State = dsInsert) OR (ds.DataSet.State = dsEdit) then
  begin
        //Se estiver no modo de edi��o ou inser��o, n�o faz nada!
  END ELSE
  BEGIN
      // Foto na pasta local img_Aluno
      caminho := ExtractFilePath(Application.ExeName) + 'img_Aluno\';

      cxImage1.Picture := nil;
      if FileExists(caminho + ClientDataSet1idAluno.asstring + '.bmp')then
      begin
        cxImage1.Picture.LoadFromFile(caminho + ClientDataSet1idAluno.asstring+ '.bmp');
        //cxImage1.Style.Color := $00515128;//$002E2E2E;
      end else
      begin
        ImageListAUX.GetBitmap(0, cxImage1.Picture.Bitmap);
        cxImage1.Style.Color := clWindow;
      end;
  end;

end;

procedure TF01001.DSModalidadeDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  IF(cdsModalidade.RecordCount > 0)THEN
  BEGIN
      btnCancelaMatricula.Enabled := TRUE;
  END ELSE
  BEGIN
      btnCancelaMatricula.Enabled := FALSE;
  END;
end;

procedure TF01001.DSPagamentoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  IF(cdsPagamento.RecordCount > 0 )THEN
  begin
      IF(cdsPagamentoidstatusPagamento.AsInteger = 1)THEN
      BEGIN
          btnPagamento.Enabled := TRUE;
          btnIsencao.Enabled := TRUE;
          btnCancelarPI.Enabled := false;
      END ELSE
      BEGIN
          btnPagamento.Enabled := FALSE;
          btnIsencao.Enabled := FALSE;
          btnCancelarPI.Enabled := TRUE;
      END;
      if(DModule.administrador = false)then
      begin
          btnIsencao.Enabled := FALSE;
      end;
  end else
  begin
      btnPagamento.Enabled := false;
      btnIsencao.Enabled := false;
      btnCancelarPI.Enabled := false;
  end;

end;

procedure TF01001.dsRelAnamneseDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  //PESQUISA anamnesePatologia
  qanamnesePatologia.Params[0].AsInteger := CDSAnamneseidAnamnese.AsInteger;
  cdsanamnesePatologia.close;
  cdsanamnesePatologia.open;
end;

procedure TF01001.DSFichaAlunoDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  IF(CDSFichaAluno.RecordCount > 0)THEN
  BEGIN
      btnImprimirFicha.Enabled := TRUE;
  END ELSE
  BEGIN
      btnImprimirFicha.Enabled := FALSE;
  END;

  //PESQUISA FICHA DE EXERCICIO
  qserieFichaAluno.Params[0].AsInteger := CDSFichaAlunoidFichaAluno.AsInteger;
  DSserieFichaAluno.DataSet.close;
  DSserieFichaAluno.DataSet.open;

end;

procedure TF01001.DSStateChange(Sender: TObject);
begin
  inherited;


  if (ds.DataSet.State = dsInsert) then
  begin
    DBRadioGroup1.Value := 'M';
    DBRadioGroup1.Buttons[0].OnClick(sender);
    // IMAGEM ALUNO DEFAULT
    cxImage1.Picture.Bitmap := NIL;
    ImageListAUX.GetBitmap(0, cxImage1.Picture.Bitmap);
    cxImage1.Style.Color := clWindow;
    imagemMudou := FALSE;
  end else
  begin
    if (ds.DataSet.State = dsEdit) then
    begin

        // CONTROLE DE PAINEL DADOS-RESPONS�VEL
        if(ClientDataSet1idade.AsInteger >= 18)then
        begin
            DBEdit4.Enabled := false;
            DBEdit5.Enabled := false;
            cxDBMaskEdit5.Enabled := false;
            DBEdit4.Clear;
            DBEdit5.Clear;
            cxDBMaskEdit5.Clear;
        end else
        begin
            if(ClientDataSet1idade.AsInteger < 18)then
            begin
                DBEdit4.Enabled := true;
                DBEdit5.Enabled := true;
                cxDBMaskEdit5.Enabled := true;
            end;
        end;

        //CASO O USU�RIO SEJA UM INSTRUTOR, VERIFICA SE ELE � O INSTRUTOR
        //DESSE ALUNO CUJO REGISTRO SER� EDITADO.
        IF(DModule.administrador = FALSE)THEN
        BEGIN
            IF(ClientDataSet1idInstrutor.AsInteger <> DModule.idusuario)THEN
            BEGIN
              //NESSE CASO O INSTRUTOR, N�O � INTRUTOR DESTE ALUNO
              //POR ISSO N�O PODER� ALTERAR O REGISTRO DE EXERC�CIOS.
              pagFichaExercicios.TabVisible := true;
              btnNovoFicha.visible := FALSE;
              //Impede exclus�o se necess�rio
              DBGridBelezaFichasAluno.OnKeyDown := nil;
              DBGridBelezaFichasAluno.OnDblClick := nil;

            END else
            begin
              pagFichaExercicios.TabVisible := true;
              btnNovoFicha.visible := true;
              //Impede exclus�o se necess�rio
              DBGridBelezaFichasAluno.OnKeyDown := DBGridBelezaFichasAlunoKeyDown;
              DBGridBelezaFichasAluno.OnDblClick := DBGridBelezaFichasAlunoDblClick;
            end;
        END;

    end;
  end;

end;

procedure TF01001.EditBeleza1ButtonClick(Sender: TObject;
  var query_result: TFDQuery);
begin
  inherited;
  query_result.ParamByName('idA').Value := (ClientDataSet1idAluno.AsInteger);
end;

procedure TF01001.EditPesqInstrutorChange(Sender: TObject);
begin
  inherited;
  if(  (EditPesqInstrutor.Text = '')or (EditPesqInstrutor.Text = ' '))then
  begin
    cbxPesqInstrutor.Checked := false;
      EditPesqIdInstrutor.Clear;
  end else
    cbxPesqInstrutor.Checked := true;
end;

procedure TF01001.EditPesqModalidadeChange(Sender: TObject);
begin
  inherited;
  if(  (EditPesqModalidade.Text = '')or (EditPesqModalidade.Text = ' '))then
  begin
    cbxPesqModalidade.Checked := false;
      editPesqidModalidade.Clear;
  end else
    cbxPesqModalidade.Checked := true;
end;


procedure TF01001.EditPesqModalidadeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  //Silencia a tecla enter no Windows
  if key = #13 then
  begin
    key := #0;
    // o q vc quer fazer no enter
  end;
end;

procedure TF01001.EditPesqNomeChange(Sender: TObject);
begin
  inherited;
  if( TRIM(EditPesqNome.Text) <> '')then
  begin
    cbxPesqNome.Checked := true;
  end else
    cbxPesqNome.Checked := false;
end;

procedure TF01001.FormCreate(Sender: TObject);
begin

  inherited;

  {CONTROLE DE USU�RIOS POR FUNCIONALIDADE}
  if(DModule.administrador = true)then
  begin
    //Aba Perfil
    pagPerfil.TabVisible := true;
    PanelPerfil.Enabled := true;

    //Aba Avalia��es
    pagAvaliacoes.TabVisible := true;
    btnNovaAvaliacao.visible := TRUE;
    btnNovaAvaliacao.enabled := TRUE;

    //ABA FICHA DE EXERCICIO
    pagFichaExercicios.TabVisible := true;
    PanelBotoesFichaDeExercicios.Enabled := true;

    //ABA MODALIDADES
    pagModalidades.TabVisible := true;
    PanelBotoesModalidades.Enabled := true;

    //ABAMENSALIDADES
    pagMensalidades.TabVisible := true;
    PanelBotoesMensalidades.Enabled := true;

  end else
  begin
      //AVALIADOR
      if(DModule.avaliador = true)then
      BEGIN
          //Aba Perfil
          pagPerfil.TabVisible := true;
          PanelPerfil.Enabled := FALSE;

          //Aba Avalia��es
          pagAvaliacoes.TabVisible := true;
          btnNovaAvaliacao.visible := TRUE;
          btnNovaAvaliacao.enabled := TRUE;

          //ABA FICHA DE EXERCICIO
          pagFichaExercicios.TabVisible := FALSE;

          //ABA MODALIDADES
          pagModalidades.TabVisible := FALSE;

          //ABAMENSALIDADES
          pagMensalidades.TabVisible := FALSE;

          if(DModule.instrutor = true)then
          BEGIN
              //ABA FICHA DE EXERCICIO
              pagFichaExercicios.TabVisible := TRUE;
              btnNovoFicha.Visible := TRUE;
          END ELSE
          BEGIN
              //ABA FICHA DE EXERCICIO
              pagFichaExercicios.TabVisible := FALSE;
              btnNovoFicha.Visible := FALSE;
          END;

          if(DModule.atendente = true)then
          BEGIN
              //Aba Perfil
              pagPerfil.TabVisible := true;
              PanelPerfil.Enabled := true;

              //ABA MODALIDADES
              pagModalidades.TabVisible := TRUE;

              //ABAMENSALIDADES
              pagMensalidades.TabVisible := TRUE;
          END ELSE
          BEGIN
              //Aba Perfil
              pagPerfil.TabVisible := true;
              PanelPerfil.Enabled := FALSE;

              //ABA MODALIDADES
              pagModalidades.TabVisible := FALSE;

              //ABAMENSALIDADES
              pagMensalidades.TabVisible := FALSE;
          END;
      END ELSE
      BEGIN
          //INSTRUTOR
          if(DModule.instrutor = true)then
          BEGIN
              //Aba Perfil
              pagPerfil.TabVisible := true;
              PanelPerfil.Enabled := FALSE;

              //ABA AVALIA��O -- AQUI JA TEMOS A CERTEZA DE QUE O USU�RIO N�O � UM AVALIADOR
              pagAvaliacoes.TabVisible := true;
              btnNovaAvaliacao.visible := FALSE;
              //Impede exclus�o se necess�rio
              DBGridBelezaAnamnese.OnKeyDown := nil;
              DBGridBelezaFisica.OnKeyDown := nil;
              DBGridBelezaPostural.OnKeyDown := nil;
              DBGridBelezaDadosClinicos.OnKeyDown := nil;

              //ABA FICHA DE EXERCICIO
              pagFichaExercicios.TabVisible := TRUE;
              btnNovoFicha.Visible := TRUE;

              if(DModule.atendente = true)then
              BEGIN
                  //Aba Perfil
                  pagPerfil.TabVisible := true;
                  PanelPerfil.Enabled := true;

                  //ABA MODALIDADES
                  pagModalidades.TabVisible := TRUE;

                  //ABAMENSALIDADES
                  pagMensalidades.TabVisible := TRUE;
              END ELSE
              BEGIN
                  //Aba Perfil
                  pagPerfil.TabVisible := true;
                  PanelPerfil.Enabled := FALSE;

                  //ABA MODALIDADES
                  pagModalidades.TabVisible := FALSE;

                  //ABAMENSALIDADES
                  pagMensalidades.TabVisible := FALSE;
              END;
          END ELSE
          BEGIN
              //ATENDENTE
              if(DModule.atendente = true)then
              BEGIN
                  //Aba Perfil
                  pagPerfil.TabVisible := true;
                  PanelPerfil.Enabled := true;

                  //ABA MODALIDADES
                  pagModalidades.TabVisible := TRUE;

                  //ABAMENSALIDADES
                  pagMensalidades.TabVisible := TRUE;

                  //ABA AVALIA��O -- AQUI JA TEMOS A CERTEZA DE QUE O USU�RIO N�O � UM AVALIADOR
                  pagAvaliacoes.TabVisible := true;
                  btnNovaAvaliacao.visible := FALSE;
                  //Impede exclus�o se necess�rio
                  DBGridBelezaAnamnese.OnKeyDown := nil;
                  DBGridBelezaFisica.OnKeyDown := nil;
                  DBGridBelezaPostural.OnKeyDown := nil;
                  DBGridBelezaDadosClinicos.OnKeyDown := nil;

                  //ABA FICHA DE EXERCICIO -- AQUI JA TEMOS A CERTEZA DE QUE O USU�RIO N�O � UM INSTRUTOR
                  pagFichaExercicios.TabVisible := TRUE;
                  btnNovoFicha.Visible := FALSE;
              END;


          END;
      END;

  end;


  {CONTROLE DE PAGECONTROLAVALIACOES}
  //AVALIA��O ANAMNESE
  IF(DMODULE.confAvaAnamnese = TRUE)THEN
  BEGIN
    TabSheet1.TabVisible := TRUE;
  END ELSE
  BEGIN
    TabSheet1.TabVisible := FALSE;
  END;

  //AVALIA��O F�SICA
  IF(DMODULE.confAvaFisica = TRUE)THEN
  BEGIN
    TabSheet2.TabVisible := TRUE;
  END ELSE
  BEGIN
    TabSheet2.TabVisible := FALSE;
  END;

  //AVALIA��O POSTURAL
  IF(DMODULE.confAvaPostural = TRUE)THEN
  BEGIN
    TabSheet3.TabVisible := TRUE;
  END ELSE
  BEGIN
    TabSheet3.TabVisible := FALSE;
  END;

  //AVALIA��O DADOS CL�NICOS
  IF(DMODULE.confAvaDadosClinicos = TRUE)THEN
  BEGIN
    TabSheet4.TabVisible := TRUE;
  END ELSE
  BEGIN
    TabSheet4.TabVisible := FALSE;
  END;

end;

procedure TF01001.editBModalidadeButtonClick(Sender: TObject;
  var query_result: TFDQuery);
begin
  inherited;
  query_result.ParamByName('idA').Value := (ClientDataSet1idAluno.AsInteger);
end;

procedure TF01001.EditBTreinoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  //Silencia a tecla enter no Windows
  if key = #13 then
  begin
    key := #0;
    // o q vc quer fazer no enter
  end;

end;

function TF01001.MsgDlgButtonPersonal(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; Captions: array of string): Integer;
var
  aMsgDlg: TForm;
  i: Integer;
  dlgButton: TButton;
  CaptionIndex: Integer;
begin
  { Criar o dialogo }
  aMsgDlg := CreateMessageDialog(Msg, DlgType, Buttons);
  CaptionIndex := 0;
  { Faz um loop varrendo os objetos do dialogo }
  for i := 0 to pred(aMsgDlg.ComponentCount) do
  begin
    if (aMsgDlg.Components[i] is TButton) then
    begin
      { Apenas entra na condi��o se o objeto for um button }
      dlgButton := TButton(aMsgDlg.Components[i]);
      if CaptionIndex > High(Captions) then //Captura o Index dos captions dos buttons criado no array
         Break;
      dlgButton.Caption := Captions[CaptionIndex];
      Inc(CaptionIndex);
      //dlgButton.
    end;
  end;
  Result := aMsgDlg.ShowModal;
end;

procedure TF01001.OcultarSheets(PageControl: TPageControl);
var
    iPage: Integer;
begin
    for iPage := 0 to PageControl.PageCount - 1 do
    PageControl.Pages[iPage].TabVisible := False;

    if ( PageControl.PageCount > 0 ) then
    PageControl.ActivePage := PageControl.Pages[0];

    //PageControl.Style := tsButtons;
end;

procedure TF01001.pAnamneseBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  tipoCRUD, novoValor, AntigoValor : string;
  idRegistro, idRegistro2: integer;
  duasChavesPrimarias :boolean;
  I : integer;
begin
  //INICIALIZA��O DE VARI�VEIS
  idRegistro := 0;
  idRegistro2 := 0;
  duasChavesPrimarias := false;

  // INSER��O NA TABELA LOGSISTEMA
  if not DModule.cdsLog.Active then
          DModule.cdsLog.Open;
  DModule.cdsLog.Append;

  //TIPO DA OPERA��O
  Case UpdateKind of
  ukModify :
            begin
              tipoCRUD := 'modify';

              //DESCOBRE OS CAMPOS ID
              for I := 0 to CDSAnamnese.FieldCount-1 do  //*
              begin
                  if (pfInKey in CDSAnamnese.fields[i].ProviderFlags) then  //*
                  begin
                    if(idRegistro = 0)then
                    begin
                      idRegistro := CDSAnamnese.Fields[I].AsInteger;   //*
                    end else
                    begin
                      idRegistro2 := CDSAnamnese.Fields[I].AsInteger;  //*
                      duasChavesPrimarias := true;
                    end;
                  end;
              end;

              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                if( (CDSAnamnese.Fields[I].OldValue) <> (CDSAnamnese.Fields[I].NewValue))then //*
                begin

                  //idcampoLog := 0;
                  antigoValor := VarToStr(DeltaDS.Fields[I].OldValue);
                  novovalor := VarToStr(DeltaDS.Fields[I].NewValue);

                  //REGISTRO CAMPOLOG
                  if not DModule.cdsCampoLog.Active then DModule.cdsCampoLog.Open;
                  DModule.cdsCampoLog.Append;
                  DModule.cdsCampoLognomeField.AsString := DeltaDS.Fields[I].FieldName;
                  DModule.cdsCampoLogvalorAntigo.AsString := AntigoValor;
                  DModule.cdsCampoLogvalornovo.AsString := novoValor;
                  DModule.cdsCampoLogidLogSistema.AsInteger := DModule.cdsLogidlogSistema.AsInteger;
                  DModule.cdsCampoLog.Post

                end;
              end;

            end;
  ukInsert :
            begin
              tipoCRUD := 'insert';

              //DESCOBRE OS CAMPOS ID
              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                  if (pfInKey in DeltaDS.fields[i].ProviderFlags) then
                  begin
                    if(idRegistro = 0)then
                    begin
                      idRegistro := DeltaDS.Fields[I].AsInteger;
                    end else
                    begin
                      idRegistro2 := DeltaDS.Fields[I].AsInteger;
                      duasChavesPrimarias := true;
                    end;
                  end;
              end;

              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                  novovalor := VarToStr(DeltaDS.Fields[I].NewValue);

                  //REGISTRO CAMPOLOG
                  if not DModule.cdsCampoLog.Active then DModule.cdsCampoLog.Open;
                  DModule.cdsCampoLog.Append;
                  DModule.cdsCampoLognomeField.AsString := DeltaDS.Fields[I].FieldName;
                  DModule.cdsCampoLogvalornovo.AsString := novoValor;
                  DModule.cdsCampoLogidLogSistema.AsInteger := DModule.cdsLogidlogSistema.AsInteger;
                  DModule.cdsCampoLog.Post

              end;

            end;
  ukDelete :
            begin
              tipoCRUD := 'delete';
              {
              //DESCOBRE OS CAMPOS ID
              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                  if (pfInKey in DeltaDS.fields[i].ProviderFlags) then
                  begin
                    if(idRegistro = 0)then
                    begin
                      idRegistro := DeltaDS.Fields[I].AsInteger;
                    end else
                    begin
                      idRegistro2 := DeltaDS.Fields[I].AsInteger;
                      duasChavesPrimarias := true;
                    end;
                  end;
              end;

              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                  antigoValor := VarToStr(DeltaDS.Fields[I].OldValue);

                  //REGISTRO CAMPOLOG
                  if not DModule.cdsCampoLog.Active then DModule.cdsCampoLog.Open;
                  DModule.cdsCampoLog.Append;
                  DModule.cdsCampoLognomeField.AsString := DeltaDS.Fields[I].FieldName;
                  DModule.cdsCampoLogvalorAntigo.AsString := AntigoValor;
                  DModule.cdsCampoLogidLogSistema.AsInteger := DModule.cdsLogidlogSistema.AsInteger;
                  DModule.cdsCampoLog.Post

              end;
               }
            end;
  end;


  //FINALIZA REGISTRO LOGSISTEMA
  DModule.cdsLogtabelaBanco.AsString := (GetTableNameFromSQL(qAnamnese.SQL.Text)); //*
  DModule.cdsLogdataLog.AsDateTime := DModule.datahoje;
  DModule.cdsLoghoraLog.AsDateTime := now();
  DModule.cdsLognomeUsuario.AsString := DModule.nomeusuario;
  DModule.cdsLogidUsuario.AsInteger := DModule.idusuario;
  DModule.cdsLogdescricaoInterface.asstring := Screen.ActiveForm.Name;
  DModule.cdsLogidPkRegistro.AsInteger := idRegistro;
  DModule.cdsLogtipoCRUD.AsString := tipoCRUD;
  IF(duasChavesPrimarias = true)THEN
  BEGIN
    DModule.cdsLogidPkRegistro2.AsInteger := idRegistro2;
  end;

  DModule.cdsLog.Post;

end;
procedure TF01001.pFichaAlunoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  tipoCRUD, novoValor, AntigoValor : string;
  idRegistro, idRegistro2: integer;
  duasChavesPrimarias :boolean;
  I : integer;
begin
  //INICIALIZA��O DE VARI�VEIS
  idRegistro := 0;
  idRegistro2 := 0;
  duasChavesPrimarias := false;

  // INSER��O NA TABELA LOGSISTEMA
  if not DModule.cdsLog.Active then
          DModule.cdsLog.Open;
  DModule.cdsLog.Append;

  //TIPO DA OPERA��O
  Case UpdateKind of
  ukModify :
            begin
              tipoCRUD := 'modify';

              //DESCOBRE OS CAMPOS ID
              for I := 0 to CDSFichaAluno.FieldCount-1 do  //*
              begin
                  if (pfInKey in CDSFichaAluno.fields[i].ProviderFlags) then  //*
                  begin
                    if(idRegistro = 0)then
                    begin
                      idRegistro := CDSFichaAluno.Fields[I].AsInteger;   //*
                    end else
                    begin
                      idRegistro2 := CDSFichaAluno.Fields[I].AsInteger;  //*
                      duasChavesPrimarias := true;
                    end;
                  end;
              end;

              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                if( (CDSFichaAluno.Fields[I].OldValue) <> (CDSFichaAluno.Fields[I].NewValue))then //*
                begin

                  //idcampoLog := 0;
                  antigoValor := VarToStr(DeltaDS.Fields[I].OldValue);
                  novovalor := VarToStr(DeltaDS.Fields[I].NewValue);

                  //REGISTRO CAMPOLOG
                  if not DModule.cdsCampoLog.Active then DModule.cdsCampoLog.Open;
                  DModule.cdsCampoLog.Append;
                  DModule.cdsCampoLognomeField.AsString := DeltaDS.Fields[I].FieldName;
                  DModule.cdsCampoLogvalorAntigo.AsString := AntigoValor;
                  DModule.cdsCampoLogvalornovo.AsString := novoValor;
                  DModule.cdsCampoLogidLogSistema.AsInteger := DModule.cdsLogidlogSistema.AsInteger;
                  DModule.cdsCampoLog.Post

                end;
              end;

            end;
  ukInsert :
            begin
              tipoCRUD := 'insert';

              //DESCOBRE OS CAMPOS ID
              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                  if (pfInKey in DeltaDS.fields[i].ProviderFlags) then
                  begin
                    if(idRegistro = 0)then
                    begin
                      idRegistro := DeltaDS.Fields[I].AsInteger;
                    end else
                    begin
                      idRegistro2 := DeltaDS.Fields[I].AsInteger;
                      duasChavesPrimarias := true;
                    end;
                  end;
              end;

              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                  novovalor := VarToStr(DeltaDS.Fields[I].NewValue);

                  //REGISTRO CAMPOLOG
                  if not DModule.cdsCampoLog.Active then DModule.cdsCampoLog.Open;
                  DModule.cdsCampoLog.Append;
                  DModule.cdsCampoLognomeField.AsString := DeltaDS.Fields[I].FieldName;
                  DModule.cdsCampoLogvalornovo.AsString := novoValor;
                  DModule.cdsCampoLogidLogSistema.AsInteger := DModule.cdsLogidlogSistema.AsInteger;
                  DModule.cdsCampoLog.Post

              end;

            end;
  ukDelete :
            begin
              tipoCRUD := 'delete';
             {
              //DESCOBRE OS CAMPOS ID
              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                  if (pfInKey in DeltaDS.fields[i].ProviderFlags) then
                  begin
                    if(idRegistro = 0)then
                    begin
                      idRegistro := DeltaDS.Fields[I].AsInteger;
                    end else
                    begin
                      idRegistro2 := DeltaDS.Fields[I].AsInteger;
                      duasChavesPrimarias := true;
                    end;
                  end;
              end;

              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                  antigoValor := VarToStr(DeltaDS.Fields[I].OldValue);

                  //REGISTRO CAMPOLOG
                  if not DModule.cdsCampoLog.Active then DModule.cdsCampoLog.Open;
                  DModule.cdsCampoLog.Append;
                  DModule.cdsCampoLognomeField.AsString := DeltaDS.Fields[I].FieldName;
                  DModule.cdsCampoLogvalorAntigo.AsString := AntigoValor;
                  DModule.cdsCampoLogidLogSistema.AsInteger := DModule.cdsLogidlogSistema.AsInteger;
                  DModule.cdsCampoLog.Post

              end;
              }
            end;
  end;


  //FINALIZA REGISTRO LOGSISTEMA
  DModule.cdsLogtabelaBanco.AsString := (GetTableNameFromSQL(qFichaAluno.SQL.Text)); //*
  DModule.cdsLogdataLog.AsDateTime := DModule.datahoje;
  DModule.cdsLoghoraLog.AsDateTime := now();
  DModule.cdsLognomeUsuario.AsString := DModule.nomeusuario;
  DModule.cdsLogidUsuario.AsInteger := DModule.idusuario;
  DModule.cdsLogdescricaoInterface.asstring := Screen.ActiveForm.Name;
  DModule.cdsLogidPkRegistro.AsInteger := idRegistro;
  DModule.cdsLogtipoCRUD.AsString := tipoCRUD;
  IF(duasChavesPrimarias = true)THEN
  BEGIN
    DModule.cdsLogidPkRegistro2.AsInteger := idRegistro2;
  end;

  DModule.cdsLog.Post;

end;

procedure TF01001.pModalidadeBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  tipoCRUD, novoValor, AntigoValor : string;
  idRegistro, idRegistro2: integer;
  duasChavesPrimarias :boolean;
  I : integer;
begin
  //INICIALIZA��O DE VARI�VEIS
  idRegistro := 0;
  idRegistro2 := 0;
  duasChavesPrimarias := false;

  // INSER��O NA TABELA LOGSISTEMA
  if not DModule.cdsLog.Active then
          DModule.cdsLog.Open;
  DModule.cdsLog.Append;

  //TIPO DA OPERA��O
  Case UpdateKind of
  ukModify :
            begin
              tipoCRUD := 'modify';

              //DESCOBRE OS CAMPOS ID
              for I := 0 to cdsModalidade.FieldCount-1 do  //*
              begin
                  if (pfInKey in cdsModalidade.fields[i].ProviderFlags) then  //*
                  begin
                    if(idRegistro = 0)then
                    begin
                      idRegistro := cdsModalidade.Fields[I].AsInteger;   //*
                    end else
                    begin
                      idRegistro2 := cdsModalidade.Fields[I].AsInteger;  //*
                      duasChavesPrimarias := true;
                    end;
                  end;
              end;

              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                if( (cdsModalidade.Fields[I].OldValue) <> (cdsModalidade.Fields[I].NewValue))then //*
                begin

                  //idcampoLog := 0;
                  antigoValor := VarToStr(DeltaDS.Fields[I].OldValue);
                  novovalor := VarToStr(DeltaDS.Fields[I].NewValue);

                  //REGISTRO CAMPOLOG
                  if not DModule.cdsCampoLog.Active then DModule.cdsCampoLog.Open;
                  DModule.cdsCampoLog.Append;
                  DModule.cdsCampoLognomeField.AsString := DeltaDS.Fields[I].FieldName;
                  DModule.cdsCampoLogvalorAntigo.AsString := AntigoValor;
                  DModule.cdsCampoLogvalornovo.AsString := novoValor;
                  DModule.cdsCampoLogidLogSistema.AsInteger := DModule.cdsLogidlogSistema.AsInteger;
                  DModule.cdsCampoLog.Post

                end;
              end;

            end;
  ukInsert :
            begin
              tipoCRUD := 'insert';

              //DESCOBRE OS CAMPOS ID
              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                  if (pfInKey in DeltaDS.fields[i].ProviderFlags) then
                  begin
                    if(idRegistro = 0)then
                    begin
                      idRegistro := DeltaDS.Fields[I].AsInteger;
                    end else
                    begin
                      idRegistro2 := DeltaDS.Fields[I].AsInteger;
                      duasChavesPrimarias := true;
                    end;
                  end;
              end;

              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                  novovalor := VarToStr(DeltaDS.Fields[I].NewValue);

                  //REGISTRO CAMPOLOG
                  if not DModule.cdsCampoLog.Active then DModule.cdsCampoLog.Open;
                  DModule.cdsCampoLog.Append;
                  DModule.cdsCampoLognomeField.AsString := DeltaDS.Fields[I].FieldName;
                  DModule.cdsCampoLogvalornovo.AsString := novoValor;
                  DModule.cdsCampoLogidLogSistema.AsInteger := DModule.cdsLogidlogSistema.AsInteger;
                  DModule.cdsCampoLog.Post

              end;

            end;
  ukDelete :
            begin
              tipoCRUD := 'delete';
               {
              //DESCOBRE OS CAMPOS ID
              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                  if (pfInKey in DeltaDS.fields[i].ProviderFlags) then
                  begin
                    if(idRegistro = 0)then
                    begin
                      idRegistro := DeltaDS.Fields[I].AsInteger;
                    end else
                    begin
                      idRegistro2 := DeltaDS.Fields[I].AsInteger;
                      duasChavesPrimarias := true;
                    end;
                  end;
              end;

              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                  antigoValor := VarToStr(DeltaDS.Fields[I].OldValue);

                  //REGISTRO CAMPOLOG
                  if not DModule.cdsCampoLog.Active then DModule.cdsCampoLog.Open;
                  DModule.cdsCampoLog.Append;
                  DModule.cdsCampoLognomeField.AsString := DeltaDS.Fields[I].FieldName;
                  DModule.cdsCampoLogvalorAntigo.AsString := AntigoValor;
                  DModule.cdsCampoLogidLogSistema.AsInteger := DModule.cdsLogidlogSistema.AsInteger;
                  DModule.cdsCampoLog.Post

              end;
              }
            end;
  end;


  //FINALIZA REGISTRO LOGSISTEMA
  DModule.cdsLogtabelaBanco.AsString := (GetTableNameFromSQL(QMODALIDADE.SQL.Text)); //*
  DModule.cdsLogdataLog.AsDateTime := DModule.datahoje;
  DModule.cdsLoghoraLog.AsDateTime := now();
  DModule.cdsLognomeUsuario.AsString := DModule.nomeusuario;
  DModule.cdsLogidUsuario.AsInteger := DModule.idusuario;
  DModule.cdsLogdescricaoInterface.asstring := Screen.ActiveForm.Name;
  DModule.cdsLogidPkRegistro.AsInteger := idRegistro;
  DModule.cdsLogtipoCRUD.AsString := tipoCRUD;
  IF(duasChavesPrimarias = true)THEN
  BEGIN
    DModule.cdsLogidPkRegistro2.AsInteger := idRegistro2;
  end;

  DModule.cdsLog.Post;

end;

procedure TF01001.pPagamentoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  tipoCRUD, novoValor, AntigoValor : string;
  idRegistro, idRegistro2: integer;
  duasChavesPrimarias :boolean;
  I : integer;
begin
  //INICIALIZA��O DE VARI�VEIS
  idRegistro := 0;
  idRegistro2 := 0;
  duasChavesPrimarias := false;

  // INSER��O NA TABELA LOGSISTEMA
  if not DModule.cdsLog.Active then
          DModule.cdsLog.Open;
  DModule.cdsLog.Append;

  //TIPO DA OPERA��O
  Case UpdateKind of
  ukModify :
            begin
              tipoCRUD := 'modify';

              //DESCOBRE OS CAMPOS ID
              for I := 0 to cdsPagamento.FieldCount-1 do  //*
              begin
                  if (pfInKey in cdsPagamento.fields[i].ProviderFlags) then  //*
                  begin
                    if(idRegistro = 0)then
                    begin
                      idRegistro := cdsPagamento.Fields[I].AsInteger;   //*
                    end else
                    begin
                      idRegistro2 := cdsPagamento.Fields[I].AsInteger;  //*
                      duasChavesPrimarias := true;
                    end;
                  end;
              end;

              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                if( (cdsPagamento.Fields[I].OldValue) <> (cdsPagamento.Fields[I].NewValue))then //*
                begin

                  //idcampoLog := 0;
                  antigoValor := VarToStr(DeltaDS.Fields[I].OldValue);
                  novovalor := VarToStr(DeltaDS.Fields[I].NewValue);

                  //REGISTRO CAMPOLOG
                  if not DModule.cdsCampoLog.Active then DModule.cdsCampoLog.Open;
                  DModule.cdsCampoLog.Append;
                  DModule.cdsCampoLognomeField.AsString := DeltaDS.Fields[I].FieldName;
                  DModule.cdsCampoLogvalorAntigo.AsString := AntigoValor;
                  DModule.cdsCampoLogvalornovo.AsString := novoValor;
                  DModule.cdsCampoLogidLogSistema.AsInteger := DModule.cdsLogidlogSistema.AsInteger;
                  DModule.cdsCampoLog.Post

                end;
              end;

            end;
  ukInsert :
            begin
              tipoCRUD := 'insert';

              //DESCOBRE OS CAMPOS ID
              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                  if (pfInKey in DeltaDS.fields[i].ProviderFlags) then
                  begin
                    if(idRegistro = 0)then
                    begin
                      idRegistro := DeltaDS.Fields[I].AsInteger;
                    end else
                    begin
                      idRegistro2 := DeltaDS.Fields[I].AsInteger;
                      duasChavesPrimarias := true;
                    end;
                  end;
              end;

              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                  novovalor := VarToStr(DeltaDS.Fields[I].NewValue);

                  //REGISTRO CAMPOLOG
                  if not DModule.cdsCampoLog.Active then DModule.cdsCampoLog.Open;
                  DModule.cdsCampoLog.Append;
                  DModule.cdsCampoLognomeField.AsString := DeltaDS.Fields[I].FieldName;
                  DModule.cdsCampoLogvalornovo.AsString := novoValor;
                  DModule.cdsCampoLogidLogSistema.AsInteger := DModule.cdsLogidlogSistema.AsInteger;
                  DModule.cdsCampoLog.Post

              end;

            end;
  ukDelete :
            begin
              tipoCRUD := 'delete';
              {
              //DESCOBRE OS CAMPOS ID
              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                  if (pfInKey in DeltaDS.fields[i].ProviderFlags) then
                  begin
                    if(idRegistro = 0)then
                    begin
                      idRegistro := DeltaDS.Fields[I].AsInteger;
                    end else
                    begin
                      idRegistro2 := DeltaDS.Fields[I].AsInteger;
                      duasChavesPrimarias := true;
                    end;
                  end;
              end;

              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                  antigoValor := VarToStr(DeltaDS.Fields[I].OldValue);

                  //REGISTRO CAMPOLOG
                  if not DModule.cdsCampoLog.Active then DModule.cdsCampoLog.Open;
                  DModule.cdsCampoLog.Append;
                  DModule.cdsCampoLognomeField.AsString := DeltaDS.Fields[I].FieldName;
                  DModule.cdsCampoLogvalorAntigo.AsString := AntigoValor;
                  DModule.cdsCampoLogidLogSistema.AsInteger := DModule.cdsLogidlogSistema.AsInteger;
                  DModule.cdsCampoLog.Post

              end;
              }
            end;
  end;

  //FINALIZA REGISTRO LOGSISTEMA
  DModule.cdsLogtabelaBanco.AsString := (GetTableNameFromSQL(qPagamento.SQL.Text)); //*
  DModule.cdsLogdataLog.AsDateTime := DModule.datahoje;
  DModule.cdsLoghoraLog.AsDateTime := now();
  DModule.cdsLognomeUsuario.AsString := DModule.nomeusuario;
  DModule.cdsLogidUsuario.AsInteger := DModule.idusuario;
  DModule.cdsLogdescricaoInterface.asstring := Screen.ActiveForm.Name;
  DModule.cdsLogidPkRegistro.AsInteger := idRegistro;
  DModule.cdsLogtipoCRUD.AsString := tipoCRUD;
  IF(duasChavesPrimarias = true)THEN
  BEGIN
    DModule.cdsLogidPkRegistro2.AsInteger := idRegistro2;
  end;

  DModule.cdsLog.Post;

end;

procedure TF01001.QualityResizeBitmap(bmpOrig, bmpDest: TBitmap; newWidth,
  newHeight: Integer);
var
xIni, xFin, yIni, yFin, xSalt, ySalt: Double;
X, Y, pX, pY, tpX: Integer;
R, G, B: Integer;
pxColor: TColor;
begin
    bmpDest.Width := newWidth;
    bmpDest.Height := newHeight;

    xSalt := bmpOrig.Width / newWidth;
    ySalt := bmpOrig.Height / newHeight;

    yFin := 0;
    for Y := 0 to pred(newHeight) do
    begin
    yIni := yFin;
    yFin := yIni + ySalt;
    if yFin >= bmpOrig.Height then
    yFin := pred(bmpOrig.Height);

    xFin := 0;
    for X := 0 to pred(newWidth) do
    begin
    xIni := xFin;
    xFin := xIni + xSalt;
    if xFin >= bmpOrig.Width then
    xFin := pred(bmpOrig.Width);

    R := 0;
    G := 0;
    B := 0;
    tpX := 0;

    for pY := Round(yIni) to Round(yFin) do
    for pX := Round(xIni) to Round(xFin) do
    begin
        Inc(tpX);
        pxColor := ColorToRGB(bmpOrig.Canvas.Pixels[pX, pY]);
        R := R + GetRValue(pxColor);
        G := G + GetGValue(pxColor);
        B := B + GetBValue(pxColor);
    end;

    bmpDest.Canvas.Pixels[X,Y] := RGB(Round(R/tpX),Round(G/tpX),Round(B/tpX));
    end;
    end;
end;

procedure TF01001.REPORT_ANAMNESEPATOLOGIABeforePrint(
  Sender: TfrxReportComponent);
var
  caminho : string;
begin
  inherited;
{
  // Foto na pasta local img_Aluno
  caminho := ExtractFilePath(Application.ExeName) + 'img_Aluno\';

  if FileExists(caminho + ClientDataSet1idAluno.asstring + '.bmp')then
  begin
    TfrxPictureView(REPORT_ANAMNESEPATOLOGIA.FindObject('Picture1')).Picture.LoadFromFile(caminho + ClientDataSet1idAluno.asstring+ '.bmp');
  end else
  begin
    TfrxPictureView(REPORT_ANAMNESEPATOLOGIA.FindObject('Picture1')).Picture.Bitmap := cxImage1.Picture.Bitmap;
  end;
   }

end;

procedure TF01001.REPORT_ANAMNESEPATOLOGIAPreview(Sender: TObject);
var
caminho : string;
begin
  inherited;

// Foto na pasta local img_Aluno
  caminho := ExtractFilePath(Application.ExeName) + 'img_Aluno\';

  if FileExists(caminho + ClientDataSet1idAluno.asstring + '.bmp')then
  begin
    TfrxPictureView(REPORT_ANAMNESEPATOLOGIA.FindObject('Picture1')).Picture.LoadFromFile(caminho + ClientDataSet1idAluno.asstring+ '.bmp');
    TfrxPictureView(REPORT_ANAMNESEPATOLOGIA.FindObject('Picture1')).Stretched := true;

  end else
  begin
    TfrxPictureView(REPORT_ANAMNESEPATOLOGIA.FindObject('Picture1')).Picture.Bitmap := cxImage1.Picture.Bitmap;
    TfrxPictureView(REPORT_ANAMNESEPATOLOGIA.FindObject('Picture1')).Stretched := false;

  end;
end;

procedure TF01001.SpeedButton3Click(Sender: TObject);
var
  I: INTEGER;
  valorMensalidade : Double;
  DATA_VENCIMENTO_ULTIMO_PAGAMENTO : TDATETIME;
begin
    inherited;

    if not DSModalidade.DataSet.Active then DSModalidade.DataSet.Open;

    IF trim(EditModalidade.Text ) <> '' THEN
    BEGIN
        //verifica se n�o h� mensalidades j� pagas
        DModule.qAux.SQL.Text := 'SELECT P.* FROM PAGAMENTO P WHERE P. IDPAGAMENTO = ' +
        '(SELECT max(IDPAGAMENTO) FROM PAGAMENTO PA WHERE PA.idAluno =:idA AND PA.idmodalidade =:idM AND ((PA.idstatusPagamento = 2)OR(PA.idstatusPagamento = 3)) )';
        DModule.qAux.ParamByName('idA').AsInteger := ClientDataSet1idAluno.AsInteger;
        DModule.qAux.ParamByName('idM').AsInteger := strtoint(editmodalidade.Text);
        DModule.qAux.close;
        DModule.qAux.open;

        //SE H� MENSALIDADES JA PAGAS, MATR�CULA S� PODE SER REALIZADA SE "DATA_HOJE > (DATAVENCIMENTO_DA_ULTIMA_MENSALIDADE_PAGA_OU_ISENTA + 30_DIAS)"
        DATA_VENCIMENTO_ULTIMO_PAGAMENTO := DModule.qAux.FieldByName('dataVencimento').AsDateTime;

        if(   DModule.datahoje  > ( IncMonth(DATA_VENCIMENTO_ULTIMO_PAGAMENTO,1))      )
        or(DATA_VENCIMENTO_ULTIMO_PAGAMENTO = NULL)  then   {null caso n�o tenha nenhum registro anterior}
        begin

              //INCLUI MODALIDADE
              DSModalidade.DataSet.Append;
              CDSModalidadeidAluno.AsInteger := ClientDataSet1idAluno.AsInteger;
              cdsModalidadeidmodalidade.AsInteger := strtoint(EditModalidade.Text);
              cdsModalidadedataInscri��o.AsDateTime := DMODULE.datahoje;
              cdsModalidadediavencimento.AsInteger := DayOf(cdsModalidadedataInscri��o.AsDateTime);
              CDSModalidade.Post;

              //GERA PAGAMENTOS DOS PROXIMOS 12 MESES
              if not DSPagamento.DataSet.Active then
                DSPagamento.DataSet.Open;

              //CONSULTA Valor Modalidade
              DModule.qAux.SQL.Text := 'select VALOR FROM MODALIDADE WHERE IDMODALIDADE =:IDM ';
              DModule.qAux.ParamByName('IDM').AsInteger := cdsModalidadeidmodalidade.AsInteger;
              DModule.qAux.Close;
              DModule.qAux.Open;
              valorMensalidade := DModule.qAux.FieldByName('VALOR').Asfloat;

              For I := 0 to 11 do
              BEGIN
                  DSPagamento.DataSet.Append;

                  //idAluno
                  cdsPagamentoidAluno.AsInteger := ClientDataSet1idAluno.AsInteger;

                  //idModalidade
                  cdsPagamentoidmodalidade.AsInteger := cdsModalidadeidmodalidade.AsInteger;

                  //valorModalidade
                  cdsPagamentovalorModalidade.AsFloat := valorMensalidade;

                  // DATA VENCIMENTO
                  cdsPagamentodataVencimento.AsDateTime := IncMonth(DModule.datahoje, I);

                  //STATUS PAGAMENTO
                  cdsPagamentoidstatusPagamento.AsInteger := 1;  // 1 = EM ABERTO

                  //LOG
                  cdsPagamentoLOGUsuarioResponsavel.AsString := 'GERADO POR: ' + DModule.NOMEUSUARIO +' em '+ DateToStr(DMODULE.datahoje);

                  DSPagamento.DataSet.Post;

              END;

              //ATUALIZA DBGRID MODALIDADE
              qMODALIDADE.Params[0].AsInteger := ClientDataSet1idAluno.AsInteger;
              DSModalidade.DataSet.close;
              DSModalidade.DataSet.open;

              //ATUALIZA DBGRID PEGAMENTO
              qPagamento.Params[0].AsInteger := ClientDataSet1idAluno.AsInteger;
              DSPagamento.DataSet.close;
              DSPagamento.DataSet.open;

              //LIMPA EDITS MODALIDADEE
              editBModalidade.Clear;
              EditModalidade.Clear;

        end else
        begin
            ShowMessage('Aluno possui mensalidade isenta ou quitada at� '+ datetostr(IncMonth(DATA_VENCIMENTO_ULTIMO_PAGAMENTO,1)) +
            '. Matr�cula s� poder� ser realizada ap�s esta data.');
        end;

    END ELSE
    BEGIN
        ShowMessage('SELECIONE UMA MODALIDADE');
    END;

end;

procedure TF01001.BtnLimparFiltrosClick(Sender: TObject);
begin
  inherited;
  FDQuery1.Close;
  FDQuery1.SQL.Text := 'SELECT a.*, INST.NOMEUSUARIO AS NOMEINSTRUTORFICHA FROM ALUNO A ' +
  'LEFT OUTER JOIN USUARIO INST ON INST.IDUSUARIO = A.IDINSTRUTOR';
  FDQuery1.Open;
  //BPesquisar.Click;

end;

procedure TF01001.btnCancelaMatriculaClick(Sender: TObject);
VAR
    DATA_VENCIMENTO_ULTIMO_PAGAMENTO: TDATETIME;
    StrX: string;
    iMensagem: Integer;
begin
  inherited;
  if NOT(DSModalidade.DataSet.IsEmpty) then
  begin
      if MessageDlg('DESEJA CANCELAR MATR�CULA ['+ cdsModalidadeDESCRICAOMODALIDADE.AsString + '] ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin

        //verifica se n�o h� mensalidades EM ABERTO e DATA DE HOJE > DATA DE VENCIMENTO dela
        DModule.qAux.SQL.Text := 'SELECT P.* FROM PAGAMENTO P WHERE P.idAluno=:idA AND P.idmodalidade =:idM AND P.idstatusPagamento = 1 AND CURDATE() > P.DATAVENCIMENTO;';
        DModule.qAux.ParamByName('idA').AsInteger := ClientDataSet1idAluno.AsInteger;
        DModule.qAux.ParamByName('idM').AsInteger := cdsModalidadeidmodalidade.AsInteger;
        DModule.qAux.close;
        DModule.qAux.open;

        if(DModule.qAux.RecordCount>0)then
        begin
            //EMITE AVISO DAS MENSALIDADES EM ABERTO
            With TF01011.Create(self, ClientDataSet1idAluno.AsInteger, cdsModalidadeidmodalidade.AsInteger) do  // 1 =Pagamento, 2=Isen��o
            Begin
                  if(ShowModal = mrOk)then
                  begin
                        cdsPagamento.Filtered := false;
                        cdsPagamento.Filter := 'IDALUNO =' + ClientDataSet1idAluno.AssTRING
                        + 'AND idmodalidade = ' + cdsModalidadeidmodalidade.AssTRING
                        + 'AND idstatusPagamento = 1';
                        cdsPagamento.Filtered := true;
                        cdsPagamento.First;
                        while not(cdsPagamento.eof)do
                        begin
                        cdsPagamento.Delete;
                        end;
                        cdsPagamento.Filtered := false;

                        cdsModalidade.Delete;

                        {
                        //// APAGA MENSALIDADES EM ABERTO
                        DModule.qAux.SQL.Text := 'DELETE FROM PAGAMENTO WHERE IDALUNO =:IDA AND idmodalidade =:IDM AND idstatusPagamento = 1';
                        DModule.qAux.ParamByName('IDA').AsInteger := ClientDataSet1idAluno.AsInteger;
                        DModule.qAux.ParamByName('IDM').AsInteger := cdsModalidadeidmodalidade.AsInteger;
                        DModule.qAux.Close;
                        DModule.qAux.ExecSQL;
                        cdsModalidade.Delete;
                        cdsPagamento.Refresh
                        }
                  end else
                  begin
                        //ShowMessage('Funf� n�o mano');
                  end;
                  Free;
            End;

        end else
        begin
          cdsPagamento.Filtered := false;
                        cdsPagamento.Filter := 'IDALUNO =' + ClientDataSet1idAluno.AssTRING
                        + 'AND idmodalidade = ' + cdsModalidadeidmodalidade.AssTRING
                        + 'AND idstatusPagamento = 1';
          cdsPagamento.Filtered := true;
          cdsPagamento.First;
          while not(cdsPagamento.eof)do
          begin
          cdsPagamento.Delete;
          end;
          cdsPagamento.Filtered := false;

          cdsModalidade.Delete;
            {
            // APAGA MENSALIDADES EM ABERTO
              DModule.qAux.SQL.Text := 'DELETE FROM PAGAMENTO WHERE IDALUNO =:IDA AND idmodalidade =:IDM AND idstatusPagamento = 1';
              DModule.qAux.ParamByName('IDA').AsInteger := ClientDataSet1idAluno.AsInteger;
              DModule.qAux.ParamByName('IDM').AsInteger := cdsModalidadeidmodalidade.AsInteger;
              DModule.qAux.Close;
              DModule.qAux.ExecSQL;
              cdsModalidade.Delete;
              cdsPagamento.Refresh
              }
        end;

      end;
  end ELSE
  BEGIN
    ShowMessage('Nenhuma Modalidade Selecionada.');
  END;

end;

procedure TF01001.btnNovaAvaliacaoClick(Sender: TObject);
begin
  inherited;

  if(PageControlAvaliacoes.TabIndex = 0)then
  begin
      //anamnese
      With TF01016.CreateNOVO(self, STRTOINT(DBEDIT1.Text) {ClientDataSet1idAluno.AsInteger}, DBEDIT3.TEXT {ClientDataSet1NOMEAluno.ASSTRING}) do
      Begin
        ShowModal;
        Free;
      End;

      // REFRESH DBGRIDBELEZA3
      CDSAnamnese.CLOSE;
      CDSAnamnese.OPEN;
  end else
  begin

      if(PageControlAvaliacoes.TabIndex = 1)then
      begin
        //avalia��o f�sica
        With TF01017.CreateNOVO(self, STRTOINT(DBEDIT1.Text) {ClientDataSet1idAluno.AsInteger}, DBEDIT3.TEXT {ClientDataSet1NOMEAluno.ASSTRING}) do
        Begin
          ShowModal;
          Free;
        End;
        CDSAvaFisica.CLOSE;
        CDSAvaFisica.OPEN;

      end else
      begin
        //ShowMessage(inttostr(PageControlAvaliacoes.TabIndex));
      end;

  end;

end;

procedure TF01001.btnNovoFichaClick(Sender: TObject);
begin
  inherited;
  With TF01014.CreateNOVO(self, STRTOINT(DBEDIT1.Text) {ClientDataSet1idAluno.AsInteger}, DBEDIT3.TEXT {ClientDataSet1NOMEAluno.ASSTRING}) do
  Begin
    ShowModal;
    Free;
  End;

  // REFRESH DBGRIDBELEZA3
  CDSFichaAluno.CLOSE;
  CDSFichaAluno.OPEN;

end;

procedure TF01001.btnPagamentoClick(Sender: TObject);
begin
  inherited;
  // VERIFICA SE H� PAGAMENTOS ANTERIORES AO ITEM SELECIONADO, EM ABERTO.
  DModule.qAux.SQL.Text := 'select p.* from pagamento p where p.idAluno =:idA and p.idModalidade =:idM and p.idStatusPagamento =:idS and (SELECT DATEDIFF(p.dataVencimento, :vdata)) < 0 ';
  DModule.qAux.ParamByName('IDA').AsInteger := cdsPagamentoidAluno.AsInteger;
  DModule.qAux.ParamByName('IDS').AsInteger := 1;   // 1 = Em aberto no banco
  DModule.qAux.ParamByName('IDM').AsInteger := cdsPagamentoidmodalidade.AsInteger;
  DModule.qAux.ParamByName('vData').AsDateTime := cdsPagamentodataVencimento.AsDateTime;
  DModule.qAux.Close;
  DModule.qAux.Open;

  if(DModule.qAux.RecordCount = 0)then
  begin
      //EFETUA PAGAMENTO
      With TF01010.Create(self, cdsPagamentoidPagamento.AsInteger, 1) do  // 1 =Pagamento, 2=Isen��o
      Begin
        ShowModal;
        Free;
      End;
      cdsPagamento.Refresh;
  end else
  begin
      if(DModule.qAux.RecordCount > 0)then
      begin
          //EXISTEM PAGAMENTOS ANTERIORES EM ATRASO, N�O � POSS�VEL CONCLUIR.
          ShowMessage('PAGAMENTO ANTERIOR EM ABERTO. N�O � POSS�VEL CONCLUIR. (' + inttostr( DModule.qAux.RecordCount ) + ')');
      end;
  end;
end;

initialization
  RegisterClass(TF01001);
Finalization
  UnRegisterClass(TF01001);
end.
