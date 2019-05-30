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
  Winapi.Windows;

{ TTelegramNotification }



procedure TTelegramNotification.SendNotification(ASocialMedia: TSocialMedia);
begin

  MessageBox(0, PWideChar('Message sent by Telegram' +
    #13#10 +
    'From: ' + ASocialMedia.User + #13#10 +
    'To :' + ASocialMedia.Recipient +
    #13#10 +
    #13#10 +
    'Content: ' + ASocialMedia.Message
    ), PChar('Telegram.Notification'), mb_ok);

end;

initialization

TTelegramNotification.ClassName;

end.
