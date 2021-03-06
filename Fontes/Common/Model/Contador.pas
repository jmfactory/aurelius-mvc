unit Contador;

interface

uses
  System.Classes, System.Generics.Collections,
  //
  Aurelius.Mapping.Attributes, Aurelius.Types.Blob, Aurelius.Types.Nullable, Aurelius.Types.Proxy;

type
  [Entity]
  [Table('CONTADOR')]
  [Id('Id', TIdGenerator.IdentityOrSequence)]
  TContador = class
  private
    FID: Integer;
    FNOME: string;
  public
    [Column('ID', [TColumnProp.Required, TColumnProp.NoInsert, TColumnProp.NoUpdate])]
    property Id: Integer read FID write FID;
    [Column('CNPJ', [], 100)]
    property Nome: string read FNOME write FNOME;
  end;

implementation

initialization
  RegisterEntity(TContador);

end.
