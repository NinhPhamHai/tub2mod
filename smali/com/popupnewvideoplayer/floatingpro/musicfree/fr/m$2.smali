.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$2;
.super Ljava/lang/Object;
.source "m.java"

# interfaces
.implements Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b<",
        "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFavoriteClick(ZLcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->isDownloadEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/e;->startDownload(Landroid/app/Activity;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 310
    invoke-static {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->saveToFavorite(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    goto :goto_0

    .line 312
    :cond_1
    invoke-static {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->deleteFromFavorite(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFavoriteClick(ZLjava/lang/Object;)V
    .locals 0

    .line 282
    check-cast p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-virtual {p0, p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$2;->onFavoriteClick(ZLcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    return-void
.end method

.method public onItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V
    .locals 2

    const/16 v0, 0x3c

    .line 285
    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->getInstance(Landroid/app/Activity;)Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->showInterstitial()Z

    .line 290
    :cond_0
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->getQueueLab()Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;

    move-result-object v0

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    invoke-static {v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->addMusicListToQueue(Ljava/util/List;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    .line 291
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;->start(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    return-void
.end method

.method public bridge synthetic onItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 282
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$2;->onItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    return-void
.end method

.method public onLoadingClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;)V
    .locals 1

    .line 296
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->loadAllResult()V

    .line 297
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->mm:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    sget-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->LOADING:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    invoke-virtual {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->setLoadingSate(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;)V

    return-void
.end method

.method public onMoreItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V
    .locals 2

    const/4 v0, 0x0

    .line 320
    invoke-static {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->newInstance(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;Z)Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;

    move-result-object p1

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onMoreItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 282
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$2;->onMoreItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    return-void
.end method
