.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder$1;
.super Ljava/lang/Object;
.source "e.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;

.field final synthetic val$this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder$1;->this$2:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder$1;->val$this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 282
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder$1;->this$2:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;

    iget-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;->mPlaylistBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;

    invoke-static {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/t;->actionStart(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;)V

    const/16 p1, 0x3c

    .line 283
    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 284
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder$1;->this$2:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->getInstance(Landroid/app/Activity;)Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->showInterstitial()Z

    :cond_0
    return-void
.end method
