program ObeserverNotificationTest;

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  SocialMedia in '..\src\SocialMedia.pas',
  SocialMediaNotificationOptions in '..\src\SocialMediaNotificationOptions.pas',
  SocialMediaNotifier in '..\src\SocialMediaNotifier.pas',
  ObservableNotification in '..\src\ObservableNotification.pas',
  Email.Notification in '..\src\Email.Notification.pas',
  Telegram.Notification in '..\src\Telegram.Notification.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
