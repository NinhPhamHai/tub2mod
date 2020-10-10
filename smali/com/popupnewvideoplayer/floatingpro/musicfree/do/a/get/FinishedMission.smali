.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/FinishedMission;
.super Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;
.source "FinishedMission.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/DownloadMission;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;-><init>()V

    .line 11
    iget-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;->source:Ljava/lang/String;

    .line 12
    iget-wide v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;->length:J

    iput-wide v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;->length:J

    .line 13
    iget-wide v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;->timestamp:J

    iput-wide v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;->timestamp:J

    .line 14
    iget-char v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;->kind:C

    iput-char v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;->kind:C

    .line 15
    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;->storage:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/StoredFileHelper;

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;->storage:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/StoredFileHelper;

    return-void
.end method
