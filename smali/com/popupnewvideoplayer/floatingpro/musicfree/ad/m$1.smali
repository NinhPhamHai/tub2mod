.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m$1;
.super Ljava/lang/Object;
.source "m.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->setLoadingSate(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
