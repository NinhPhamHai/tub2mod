.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o$1;
.super Ljava/lang/Object;
.source "o.java"

# interfaces
.implements Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;->initRecyclerView()V
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
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFavoriteClick(ZLcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->isDownloadEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/e;->startDownload(Landroid/app/Activity;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 231
    invoke-static {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->saveToFavorite(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    goto :goto_0

    .line 233
    :cond_1
    invoke-static {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->deleteFromFavorite(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFavoriteClick(ZLjava/lang/Object;)V
    .locals 0

    .line 200
    check-cast p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-virtual {p0, p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o$1;->onFavoriteClick(ZLcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    return-void
.end method

.method public onItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V
    .locals 2

    const/16 v0, 0x3c

    .line 204
    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->getInstance(Landroid/app/Activity;)Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->showInterstitial()Z

    .line 208
    :cond_0
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->getQueueLab()Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;

    move-result-object v0

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;

    invoke-static {v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->addMusicListToQueue(Ljava/util/List;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    .line 209
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;->start(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    return-void
.end method

.method public bridge synthetic onItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 200
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o$1;->onItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    return-void
.end method

.method public onLoadingClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;)V
    .locals 1

    .line 216
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;->access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    move-result-object p1

    sget-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->LOADING:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    invoke-virtual {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->setLoadingSate(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;)V

    .line 217
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;->access$200(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;)V

    return-void
.end method

.method public onMoreItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V
    .locals 2

    const/4 v0, 0x0

    .line 242
    invoke-static {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->newInstance(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;Z)Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;

    move-result-object p1

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onMoreItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 200
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o$1;->onMoreItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    return-void
.end method
