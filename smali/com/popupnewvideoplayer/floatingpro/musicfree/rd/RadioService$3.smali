.class Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService$3;
.super Ljava/lang/Object;
.source "RadioService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 91
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/radio/MusicStartEvent;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/radio/MusicStartEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 92
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 93
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->getPlayerQueueManager()Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->setPlaying(Z)V

    .line 94
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService;->updateNotification()V

    return-void
.end method
