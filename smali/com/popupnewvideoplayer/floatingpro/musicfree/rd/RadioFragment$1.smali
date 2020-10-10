.class Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment$1;
.super Ljava/lang/Object;
.source "RadioFragment.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment;->setRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment;->setColors()V

    .line 205
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment;->recycleViewAdapter:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment$RecycleViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 206
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
