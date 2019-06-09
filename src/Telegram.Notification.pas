unit Telegram.Notification;

interface

uses
  SocialMediaNotifier,
  SocialMedia;

type
  TTelegramNotification = class(TInterfacedObject, ISocialMediaNotifier)
    procedure SendNotification(ASocialMedia: TSocialMedia);

  end;

implementation

uses
  Telegram4D.Impl,
  System.JSON,
  System.SysUtils;

{ TTelegramNotification }



procedure TTelegramNotification.SendNotification(ASocialMedia: TSocialMedia);
var
  Telegram4D: ITelegram4D;
  Return: TJSONValue;
begin
  Telegram4D := TTelegram4DImpl.Create;

  Telegram4D.getTelegram4DObject.baseURL  := 'https://api.telegram.org/bot';
  Telegram4D.getTelegram4DObject.botToken := ASocialMedia.User;
  Telegram4D.getTelegram4DObject.chat_id  := ASocialMedia.Recipient;

  Return := Telegram4D.sendMessage(ASocialMedia.Message);

  { TODO : if (Return.GetValue<String>('ok') = 'false') then Log Return.ToJSON }

end;

initialization

TTelegramNotification.ClassName;

end.
