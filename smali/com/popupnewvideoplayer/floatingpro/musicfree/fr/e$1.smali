.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$1;
.super Ljava/lang/Object;
.source "e.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 6

    .line 159
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    .line 164
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->getLastRefreshTime(Landroid/content/Context;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x2932e00

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;->access$102(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;Z)Z

    .line 172
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;->access$200(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;)V

    return-void
.end method
