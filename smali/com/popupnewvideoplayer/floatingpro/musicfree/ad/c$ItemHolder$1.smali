.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$ItemHolder$1;
.super Ljava/lang/Object;
.source "c.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$ItemHolder;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;Landroid/view/View;Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$ItemHolder;

.field final synthetic val$this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$ItemHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$ItemHolder$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$ItemHolder;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$ItemHolder$1;->val$this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 304
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$ItemHolder$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$ItemHolder;

    iget-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$ItemHolder;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$ItemHolder;->type_name:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;->onViewAllClick(Ljava/lang/String;)V

    return-void
.end method
