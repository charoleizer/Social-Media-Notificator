unit Email.Notification;

interface

uses
  SocialMediaNotifier,
  SocialMedia;

type
  TEmailNotification = class(TInterfacedObject, ISocialMediaNotifier)
    procedure SendNotification(ASocialMedia: TSocialMedia);

  end;

implementation

uses
  Winapi.Windows;

{ TEmailNotification }



procedure TEmailNotification.SendNotification(ASocialMedia: TSocialMedia);
begin

  MessageBox(0, PWideChar('Message sent by Email' +
    #13#10 +
    'From: ' + ASocialMedia.User + #13#10 +
    'To :' + ASocialMedia.Recipient +
    #13#10 +
    #13#10 +
    'Content: ' + ASocialMedia.Message
    ), PChar('Email.Notification'), mb_ok);

end;

initialization

TEmailNotification.ClassName;

end.
