unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnEmailNotify: TButton;
    btnTelegramNotify: TButton;
    procedure btnEmailNotifyClick(Sender: TObject);
    procedure btnTelegramNotifyClick(Sender: TObject);

  end;

var
  Form1: TForm1;

implementation

uses
  Utils.GenericsRTTI,
  SocialMediaNotificationOptions,
  ObservableNotification,
  SocialMediaNotifier;

{$R *.dfm}




procedure TForm1.btnEmailNotifyClick(Sender: TObject);
var
  MyObservableNotification: TObservableNotification;
begin
  // Creating Observer Class
  MyObservableNotification := TObservableNotification.Create;

  // Feeding Value Object
  MyObservableNotification.SocialMedia.User      := 'Gandalf';
  MyObservableNotification.SocialMedia.Password  := '123456';
  MyObservableNotification.SocialMedia.Recipient := 'Frodo';
  MyObservableNotification.SocialMedia.Message   := 'Gimme ur ring and grab my staff';

  // Create of observert must be defined by NotificationOptionID
  MyObservableNotification
    .Attach(TUtilsRTTI.CreateObjectByClassName(TSocialMediaNotificationOptions.getInstance.SocialMediaNotificationOptionsDictionary.Items['email'])
    .AsType<ISocialMediaNotifier>);

  // Notify Observerved Method - SendNotification
  MyObservableNotification.Notify;

  // Garbage collection
  FreeAndNil(MyObservableNotification);
end;



procedure TForm1.btnTelegramNotifyClick(Sender: TObject);
begin
  // Creating Observer Class
  with TObservableNotification.Create do
  begin
    // Feeding Value Object
    SocialMedia.User      := 'Maha';
    SocialMedia.Password  := '123456';
    SocialMedia.Recipient := 'Harry Potter';
    SocialMedia.Message   := 'Directly from Azkabutt, ...';

    // Create of observert must be defined by NotificationOptionID
    Attach(TUtilsRTTI.CreateObjectByClassName(TSocialMediaNotificationOptions.getInstance.SocialMediaNotificationOptionsDictionary.Items['telegram'])
      .AsType<ISocialMediaNotifier>);

    // Notify Observerved Method - SendNotification
    Notify;

    // Garbage collection
    Free;
  end;
end;

end.
