.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;
.super Ljava/lang/Object;
.source "PlayerQueueManager.java"


# static fields
.field private static sPlayerQueueManager:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;


# instance fields
.field private isLast:Z

.field private isPlaying:Z

.field private mCurrentMusic:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

.field private mCurrentPauseTime:J

.field private mCurrentResumeTime:J

.field private mCurrentStartTime:J

.field private mCurrentTotalTime:J

.field private musicBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x1b7740

    .line 23
    iput-wide v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->mCurrentTotalTime:J

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->mCurrentStartTime:J

    .line 27
    iput-wide v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->mCurrentPauseTime:J

    .line 29
    iput-wide v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->mCurrentResumeTime:J

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->isPlaying:Z

    .line 34
    iput-boolean v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->isLast:Z

    .line 47
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->musicBeanList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->musicBeanList:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public static getPlayerQueueManager()Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;
    .locals 1

    .line 53
    sget-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->sPlayerQueueManager:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;-><init>()V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->sPlayerQueueManager:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;

    .line 56
    :cond_0
    sget-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->sPlayerQueueManager:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;

    return-object v0
.end method


# virtual methods
.method public clearMusicBeanList()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->musicBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getBeanByIndex(I)Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;
    .locals 1

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->musicBeanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentMusic()Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->mCurrentMusic:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    return-object v0
.end method

.method public getIndexByBean(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)I
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->musicBeanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSize()I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->musicBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isLast()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->isLast:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->isPlaying:Z

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 142
    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->resetCurrent()V

    return-void
.end method

.method public resetCurrent()V
    .locals 2

    const-wide/32 v0, 0x1b7740

    .line 37
    iput-wide v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->mCurrentTotalTime:J

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->mCurrentStartTime:J

    .line 39
    iput-wide v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->mCurrentPauseTime:J

    .line 40
    iput-wide v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->mCurrentResumeTime:J

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->isPlaying:Z

    .line 42
    iput-boolean v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->isLast:Z

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->mCurrentMusic:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    return-void
.end method

.method public setCurrentMusic(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)Z
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->mCurrentMusic:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 69
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->mCurrentMusic:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    .line 70
    iput-boolean v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->isLast:Z

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->resetCurrent()V

    .line 75
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->mCurrentMusic:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    .line 76
    iput-boolean v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->isLast:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->isLast:Z

    .line 83
    :goto_0
    iget-boolean p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->isLast:Z

    return p1
.end method

.method public setCurrentPauseTime(J)V
    .locals 0

    .line 107
    iput-wide p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->mCurrentPauseTime:J

    return-void
.end method

.method public setCurrentResumeTime(J)V
    .locals 0

    .line 151
    iput-wide p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->mCurrentResumeTime:J

    return-void
.end method

.method public setCurrentStartTime(J)V
    .locals 0

    .line 99
    iput-wide p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->mCurrentStartTime:J

    return-void
.end method

.method public setMusicBeanList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;",
            ">;)V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->musicBeanList:Ljava/util/List;

    return-void
.end method

.method public setPlaying(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->isPlaying:Z

    return-void
.end method

.method public updateMusicBeanList(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->musicBeanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/PlayerQueueManager;->musicBeanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
