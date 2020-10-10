.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$1;
.super Ljava/lang/Object;
.source "h.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 6

    .line 109
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    .line 113
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1b7740

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->access$202(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;Z)Z

    .line 120
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->access$300(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;)V

    return-void
.end method
