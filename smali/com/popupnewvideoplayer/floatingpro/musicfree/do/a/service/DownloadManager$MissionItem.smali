.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManager$MissionItem;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MissionItem"
.end annotation


# instance fields
.field public mission:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;

.field public special:I

.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManager;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManager;I)V
    .locals 1

    const/4 v0, 0x0

    .line 718
    invoke-direct {p0, p1, p2, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManager$MissionItem;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManager;ILcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;)V

    return-void
.end method

.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManager;ILcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManager$MissionItem;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    iput p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManager$MissionItem;->special:I

    .line 714
    iput-object p3, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManager$MissionItem;->mission:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;

    return-void
.end method
