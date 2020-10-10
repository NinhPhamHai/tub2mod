.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j$2;
.super Ljava/lang/Object;
.source "j.java"

# interfaces
.implements Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b<",
        "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFavoriteClick(ZLcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onFavoriteClick(ZLjava/lang/Object;)V
    .locals 0

    .line 246
    check-cast p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;

    invoke-virtual {p0, p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j$2;->onFavoriteClick(ZLcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;)V

    return-void
.end method

.method public onItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/t;->actionStart(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;)V

    const/16 p1, 0x3c

    .line 252
    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->getInstance(Landroid/app/Activity;)Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->showInterstitial()Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 246
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;

    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j$2;->onItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;)V

    return-void
.end method

.method public onLoadingClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;)V
    .locals 0

    return-void
.end method

.method public onMoreItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onMoreItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 246
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;

    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j$2;->onMoreItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;)V

    return-void
.end method
