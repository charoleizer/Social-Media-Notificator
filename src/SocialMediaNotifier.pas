unit SocialMediaNotifier;

interface

uses
  SocialMedia;

type
  ISocialMediaNotifier = interface
    ['{CCC14AAA-E4F8-48FC-8A3E-079AD1DE055A}']
    procedure SendNotification(ASocialMedia: TSocialMedia);
  end;

  TSocialMediaNotifier = class abstract
    procedure SendNotification(ASocialMedia: TSocialMedia); virtual; abstract;
  end;

implementation

{ TSocialMediaNotifier }

end.
