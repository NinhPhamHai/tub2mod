.class Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
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
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 182
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService;Z)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService;Z)V

    return-void
.end method
