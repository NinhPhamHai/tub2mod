.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder$1;
.super Ljava/lang/Object;
.source "e.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;

.field final synthetic val$this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder$1;->this$2:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder$1;->val$this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 496
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder$1;->this$2:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder$1;->this$2:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;

    iget-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter;

    iget-object v1, v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    iget-object v1, v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;->mTopList:Ljava/util/List;

    iget v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;->current:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;

    invoke-static {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/t;->actionStart(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;)V

    const/16 p1, 0x3c

    .line 498
    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 499
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder$1;->this$2:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->getInstance(Landroid/app/Activity;)Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->showInterstitialNow()Z

    :cond_0
    return-void
.end method
