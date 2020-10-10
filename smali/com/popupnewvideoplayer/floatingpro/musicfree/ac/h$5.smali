.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$5;
.super Ljava/lang/Object;
.source "h.java"

# interfaces
.implements Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->initView()V
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
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$5;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFavoriteClick(ZLcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$5;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->isDownloadEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$5;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;

    invoke-static {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/e;->startDownload(Landroid/app/Activity;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 314
    invoke-static {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->saveToFavorite(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    goto :goto_0

    .line 316
    :cond_1
    invoke-static {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->deleteFromFavorite(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFavoriteClick(ZLjava/lang/Object;)V
    .locals 0

    .line 286
    check-cast p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-virtual {p0, p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$5;->onFavoriteClick(ZLcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    return-void
.end method

.method public onItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V
    .locals 2

    const/16 v0, 0x3c

    .line 289
    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$5;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->getInstance(Landroid/app/Activity;)Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->showInterstitial()Z

    .line 293
    :cond_0
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->getQueueLab()Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->clearQueues()V

    .line 294
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->getQueueLab()Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;

    move-result-object v0

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$5;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;

    iget-object v1, v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mMusicBeanList:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->addMusicListToQueue(Ljava/util/List;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    .line 295
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$5;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;

    invoke-static {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;->start(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    return-void
.end method

.method public bridge synthetic onItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 286
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$5;->onItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    return-void
.end method

.method public onLoadingClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;)V
    .locals 0

    return-void
.end method

.method public onMoreItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V
    .locals 2

    const/4 v0, 0x0

    .line 325
    invoke-static {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->newInstance(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;Z)Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;

    move-result-object p1

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$5;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onMoreItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 286
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$5;->onMoreItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    return-void
.end method
