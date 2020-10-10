.class Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment$1;
.super Ljava/lang/Object;
.source "MissionsFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onServiceConnected$0(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/DownloadMission;)V
    .locals 0

    .line 70
    invoke-static {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;->access$600(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/DownloadMission;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 64
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;

    check-cast p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService$DownloadManagerBinder;

    invoke-static {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;->access$002(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService$DownloadManagerBinder;)Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService$DownloadManagerBinder;

    .line 65
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;)Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService$DownloadManagerBinder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService$DownloadManagerBinder;->clearDownloadNotifications()V

    .line 67
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;

    new-instance p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/adapter/MissionAdapter;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;->access$200(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;

    invoke-static {v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;)Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService$DownloadManagerBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService$DownloadManagerBinder;->getDownloadManager()Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;

    invoke-static {v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;->access$300(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/adapter/MissionAdapter;-><init>(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManager;Landroid/view/View;)V

    invoke-static {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;->access$102(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/adapter/MissionAdapter;)Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/adapter/MissionAdapter;

    .line 68
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;->access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;)Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/adapter/MissionAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/adapter/MissionAdapter;->deleterLoad(Landroid/view/View;)V

    .line 70
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;->access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;)Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/adapter/MissionAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;

    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/-$$Lambda$MissionsFragment$1$YfTo7xdMjbcQvJoNXsJZ26-0SKk;

    invoke-direct {v0, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/-$$Lambda$MissionsFragment$1$YfTo7xdMjbcQvJoNXsJZ26-0SKk;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;)V

    invoke-virtual {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/adapter/MissionAdapter;->setRecover(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/adapter/MissionAdapter$RecoverHelper;)V

    .line 72
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;->access$400(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;)V

    .line 74
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;)Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService$DownloadManagerBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;

    invoke-static {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;->access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;)Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/adapter/MissionAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/adapter/MissionAdapter;->getMessenger()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService$DownloadManagerBinder;->addMissionEventListener(Landroid/os/Handler;)V

    .line 75
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;)Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService$DownloadManagerBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManagerService$DownloadManagerBinder;->enableNotifications(Z)V

    .line 77
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;->access$500(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/ui/fragment/MissionsFragment;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
