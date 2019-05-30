unit SocialMedia;

interface


type
  TSocialMedia = class
  private
    FUser: String;
    FPassword: String;
    FRecipient: String;
    FMessage: String;

  public
    property User: String read FUser write FUser;
    property Password: String read FPassword write FPassword;
    property Recipient: String read FRecipient write FRecipient;
    property Message: String read FMessage write FMessage;

  end;

implementation

{ TNotification }

end.
