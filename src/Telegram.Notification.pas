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
  //TODO

  // Must create a new bot with BotFather
  // /start with user that you want to notify
  // Test with getMe
  // Send a manual message first
  // teste getUpdates to get User ID
  
  // Bot Token: 816598649:AAFBT6epXzrhCi8cdn0PrQ8dk-eDOhKtwU4
  // User Id: 744289911
  
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
