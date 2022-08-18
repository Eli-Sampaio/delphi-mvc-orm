unit projetosimpleorm.model.impl.conexaofiredac;

interface

uses
  system.SysUtils,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI,
  FireDAC.Comp.Client,
  projetosimpleorm.model.interfaces,
  Data.DB;

type
  TConexao = class(TInterfacedObject, iConexao)
    private
      FConfiguracao: IConfiguracao;
      FConn: TFDConnection;
    public
      constructor Create(Configuracao: IConfiguracao);
      destructor destroy; override;
      class function new(Configurcao: IConfiguracao): iConexao;
      function Connect: TCustomConnection;
  end;

implementation

{ TConexao }

function TConexao.Connect: TCustomConnection;
begin
  try
    FConn.Params.DriverID := FConfiguracao.DriverID;
    FConn.Params.Database := FConfiguracao.DataBase;
    FConn.Params.UserName := FConfiguracao.UserName;
    FConn.Params.Password := FConfiguracao.Password;
    FConn.Params.Add('Port=' + FConfiguracao.Port);
    FConn.Params.Add('Server=' + FConfiguracao.Server);
    if not FConfiguracao.Schema.IsEmpty then
    begin
      FConn.Params.Add('MataCurSchema=' + FConfiguracao.Schema);
      FConn.Params.Add('MetaDefSchema=' + FConfiguracao.Schema);
    end;
    if not FConfiguracao.Locking.IsEmpty then
    begin
      FConn.Params.Add('locking=' + FConfiguracao.Locking);
    end;

    FConn.Connected := True;
    Result := FConn;
  except
    raise Exception.Create('Não foi possível realizar a conexão.');
  end;
end;

constructor TConexao.Create(Configuracao: IConfiguracao);
begin
  FConn := TFDConnection.Create(nil);
  FConfiguracao := Configuracao;
end;

destructor TConexao.destroy;
begin
  FConn.DisposeOf;
end;

class function TConexao.new(Configuracao: IConfiguracao): iConexao;
begin
  Result := Self.Create(Configuracao);
end;

end.
