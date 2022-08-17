unit projetosimpleorm.model.interfaces;

interface

uses
  Data.DB;

type
  IConexao = Interface
    function Connect : TCustomConnection;
  End;

  IConfiguracao = Interface
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
  End;

implementation

end.
