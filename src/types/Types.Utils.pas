unit Types.Utils;

interface

uses
  Types.Utils.Constants,
  Types.Utils.Conversions,
  Types.Utils.Dialogs,
  Types.Utils.Methods,
  Types.Utils.Translation;

type
  TUtils = class abstract
  strict private
    class var FConstants: TConstants;
    class var FConversions: TConversions;
    class var FMethods: TMethods;
    class var FDialogs: TDialogs;
    class var FTranslation: TTranslation;
  public
    class property Constants: TConstants read FConstants;
    class property Conversions: TConversions read FConversions;
    class property Methods: TMethods read FMethods;
    class property Dialogs: TDialogs read FDialogs;
    class property Translation: TTranslation read FTranslation;
  end;

implementation

end.
