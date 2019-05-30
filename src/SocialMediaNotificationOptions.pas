unit SocialMediaNotificationOptions;

interface

uses
  Spring.Collections;

type
  TSocialMediaNotificationOptions = class
  private
    FSocialMediaNotificationOptionsDictionary: IDictionary<String, String>;
  public
    property SocialMediaNotificationOptionsDictionary: IDictionary<String, String> read FSocialMediaNotificationOptionsDictionary write FSocialMediaNotificationOptionsDictionary;
    class function getInstance: TSocialMediaNotificationOptions;
    constructor Create;
  end;

implementation

uses
  Spring.DesignPatterns;

{ TSocialMediaNotificationOptions }



constructor TSocialMediaNotificationOptions.Create;
begin
  if not(Assigned(FSocialMediaNotificationOptionsDictionary)) then
    FSocialMediaNotificationOptionsDictionary := TCollections.CreateDictionary<String, String>;

  FSocialMediaNotificationOptionsDictionary['none']      := '';
  FSocialMediaNotificationOptionsDictionary['email']     := 'Email.Notification.TEmailNotification';
  FSocialMediaNotificationOptionsDictionary['sms']       := '';
  FSocialMediaNotificationOptionsDictionary['facebook']  := '';
  FSocialMediaNotificationOptionsDictionary['whatsapp']  := '';
  FSocialMediaNotificationOptionsDictionary['telegram']  := 'Telegram.Notification.TTelegramNotification';
  FSocialMediaNotificationOptionsDictionary['instagram'] := '';

end;



class function TSocialMediaNotificationOptions.getInstance: TSocialMediaNotificationOptions;
begin
  Result := TSingleton.getInstance<TSocialMediaNotificationOptions>;
end;

end.
