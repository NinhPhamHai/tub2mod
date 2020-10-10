.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b$1;
.super Ljava/lang/Object;
.source "b.java"

# interfaces
.implements Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V
    .locals 2

    .line 87
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->getQueueLab()Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;

    move-result-object v0

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;

    iget-object v1, v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mDataList:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->addMusicListToQueue(Ljava/util/List;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    .line 88
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;->start(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    return-void
.end method

.method public onLovedClick(ZLcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->isDownloadEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/e;->startDownload(Landroid/app/Activity;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 105
    invoke-static {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->saveToFavorite(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->deleteFromFavorite(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    :goto_0
    return-void
.end method

.method public onMoreItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->newInstance(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;ZLcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;)Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;

    iget-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mDeletePosition:I

    return-void
.end method
