.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/g$HotItemViewHolder_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "g$HotItemViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/g$HotItemViewHolder_ViewBinding;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/g$HotItemViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/g$HotItemViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/g$HotItemViewHolder;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/g$HotItemViewHolder_ViewBinding;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/g$HotItemViewHolder;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/g$HotItemViewHolder_ViewBinding$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/g$HotItemViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/g$HotItemViewHolder_ViewBinding$1;->val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/g$HotItemViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/g$HotItemViewHolder_ViewBinding$1;->val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/g$HotItemViewHolder;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/g$HotItemViewHolder;->onItemClick()V

    const/4 p1, 0x0

    throw p1
.end method
