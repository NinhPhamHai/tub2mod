.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q$ItemHolder$1;
.super Ljava/lang/Object;
.source "q.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q$ItemHolder;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q$ItemHolder;

.field final synthetic val$this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q$ItemHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q$ItemHolder$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q$ItemHolder;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q$ItemHolder$1;->val$this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 91
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q$ItemHolder$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q$ItemHolder;

    iget-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q$ItemHolder;->t:Ljava/lang/Object;

    instance-of v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    if-eqz v1, :cond_0

    .line 92
    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    .line 94
    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q$ItemHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q$ItemHolder$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q$ItemHolder;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q$ItemHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;->onItemClick(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
