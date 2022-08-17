unit projetosimpleorm.model.impl.configuracao;

interface

uses
  LocalCache4D,
  projetosimpleorm.model.interfaces;

type
  TConfiguracao = class(TInterfacedObject, iConfiguracao)
  private
  public
    constructor Create;
    destructor destroy; override;
    class function new: iConfiguracao;
    function DriverID(Value: String): IConfiguracao; overload;
    function DriverID: String; overload;
    function DataBase(Value: String): IConfiguracao; overload;
    function DataBase: String; overload;
    function UserName(Value: String): IConfiguracao; overload;
    function UserName: String; overload;
    function Password(Value: String): IConfiguracao; overload;
    function Password: String; overload;
    function Port(Value: String): IConfiguracao; overload;
    function Port: String; overload;
    function Server(Value: String): IConfiguracao; overload;
    function Server: String; overload;
    function Schema(Value: String): IConfiguracao; overload;
    function Schema: String; overload;
    function Locking(Value: String): IConfiguracao; overload;
    function Locking: String; overload;
  end;

implementation

{ TMyClass }

constructor TConfiguracao.Create;
begin

end;

function TConfiguracao.DataBase(Value: String): IConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Database', Value);
end;

function TConfiguracao.DataBase: String;
begin
  Result := LocalCache.GetItem('Database');
end;

destructor TConfiguracao.destroy;
begin

  inherited;
end;

function TConfiguracao.DriverID(Value: String): IConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('DriverID', Value);
end;

function TConfiguracao.DriverID: String;
begin
  Result := LocalCache.GetItem('DriverID');
end;

function TConfiguracao.Locking: String;
begin
  result := LocalCache.GetItem('Locking');
end;

function TConfiguracao.Locking(Value: String): IConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Locking', Value);
end;

class function TConfiguracao.new: iConfiguracao;
begin

end;

function TConfiguracao.Password: String;
begin
  Result := LocalCache.GetItem('Password');
end;

function TConfiguracao.Password(Value: String): IConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Password', Value);
end;

function TConfiguracao.Port: String;
begin
  Result := LocalCache.GetItem('Port');
end;

function TConfiguracao.Port(Value: String): IConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Port', Value);
end;

function TConfiguracao.Schema(Value: String): IConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Schema', Value);
end;

function TConfiguracao.Schema: String;
begin
  Result := LocalCache.GetItem('Schema');
end;

function TConfiguracao.Server(Value: String): IConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Server', Value);
end;

function TConfiguracao.Server: String;
begin
  Result := LocalCache.GetItem('Server');
end;

function TConfiguracao.UserName: String;
begin
  Result := LocalCache.GetItem('UserName');
end;

function TConfiguracao.UserName(Value: String): IConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('UseName', Value);
end;

end.
