.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder$1;
.super Ljava/lang/Object;
.source "d.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d;Landroid/view/View;Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;

.field final synthetic val$this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder$1;->val$this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;

    iget-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;->me:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;

    invoke-interface {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;->onPlaylistItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;)V

    return-void
.end method
