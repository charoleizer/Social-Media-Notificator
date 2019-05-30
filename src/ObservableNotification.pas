unit ObservableNotification;

interface

uses
  Spring.DesignPatterns,
  SocialMedia,
  SocialMediaNotifier;

type

  TObservableNotification = class(TObservable<ISocialMediaNotifier>)
  private
    FSocialMedia: TSocialMedia;

  public
    property SocialMedia: TSocialMedia read FSocialMedia write FSocialMedia;

    procedure DoNotify(const AObserver: ISocialMediaNotifier); override;

    constructor Create; reintroduce;
    destructor Destroy; override;

  end;

implementation

{ TObservableNotification }



constructor TObservableNotification.Create;
begin
  inherited Create;
  FSocialMedia := TSocialMedia.Create;
end;



destructor TObservableNotification.Destroy;
begin
  FSocialMedia.Free;
  inherited;
end;



procedure TObservableNotification.DoNotify(const AObserver: ISocialMediaNotifier);
begin
  inherited;
  AObserver.SendNotification(FSocialMedia);
end;

end.
