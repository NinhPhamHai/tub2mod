.class Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService$1;
.super Landroid/os/Handler;
.source "DownloadManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService;

    invoke-virtual {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
