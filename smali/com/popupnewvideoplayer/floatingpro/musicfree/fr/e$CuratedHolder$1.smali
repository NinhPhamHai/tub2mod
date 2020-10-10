.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder$1;
.super Ljava/lang/Object;
.source "e.java"

# interfaces
.implements Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder;

.field final synthetic val$this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder$1;->val$this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaylistItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;)V
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/t;->actionStart(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;)V

    const/16 p1, 0x3c

    .line 591
    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 592
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->getInstance(Landroid/app/Activity;)Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->showInterstitialNow()Z

    :cond_0
    return-void
.end method

.method public onViewAllClick(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
