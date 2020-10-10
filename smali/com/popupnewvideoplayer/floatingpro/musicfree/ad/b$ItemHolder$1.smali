.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b$ItemHolder$1;
.super Ljava/lang/Object;
.source "b.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b$ItemHolder;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b$ItemHolder;

.field final synthetic val$this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b$ItemHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b$ItemHolder$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b$ItemHolder;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b$ItemHolder$1;->val$this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 120
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b$ItemHolder$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b$ItemHolder;

    iget-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b$ItemHolder;->t:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;

    instance-of v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;

    if-eqz v1, :cond_0

    .line 124
    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b$ItemHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b$ItemHolder$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b$ItemHolder;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b$ItemHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/c;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/c;->onClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;)V

    :cond_0
    return-void
.end method
