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

  FSocialMediaNotificationOptionsDictionary.AddOrSetValue('none', '');
  FSocialMediaNotificationOptionsDictionary.AddOrSetValue('email', 'Email.Notification.TEmailNotification');
  FSocialMediaNotificationOptionsDictionary.AddOrSetValue('sms', '');
  FSocialMediaNotificationOptionsDictionary.AddOrSetValue('facebook', '');
  FSocialMediaNotificationOptionsDictionary.AddOrSetValue('whatsapp', '');
  FSocialMediaNotificationOptionsDictionary.AddOrSetValue('telegram', 'Telegram.Notification.TTelegramNotification');
  FSocialMediaNotificationOptionsDictionary.AddOrSetValue('instagram', '');
end;



class function TSocialMediaNotificationOptions.getInstance: TSocialMediaNotificationOptions;
begin
  Result := TSingleton.getInstance<TSocialMediaNotificationOptions>;
end;

end.
