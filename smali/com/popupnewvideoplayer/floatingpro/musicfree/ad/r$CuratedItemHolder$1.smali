.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder$1;
.super Ljava/lang/Object;
.source "r.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r;Landroid/view/View;Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;

.field final synthetic val$listener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;

.field final synthetic val$this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r;Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder$1;->val$this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r;

    iput-object p3, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder$1;->val$listener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder$1;->val$listener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;->me:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;

    invoke-interface {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;->onPlaylistItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;)V

    return-void
.end method
