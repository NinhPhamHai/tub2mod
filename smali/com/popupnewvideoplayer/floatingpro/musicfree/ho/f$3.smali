.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "f.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 131
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 132
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 133
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;

    iget-object p2, p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    instance-of p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;

    if-eqz p1, :cond_1

    .line 134
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;

    iget-boolean p2, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;->isLoading:Z

    if-nez p2, :cond_1

    .line 135
    iget-boolean p2, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;->hasResult:Z

    if-eqz p2, :cond_0

    .line 136
    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;->access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;->mm:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->getLoadingSate()Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    move-result-object p1

    sget-object p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->NO_RESULT:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    if-eq p1, p2, :cond_1

    .line 140
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;->mm:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    invoke-virtual {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->setLoadingSate(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;)V

    :cond_1
    :goto_0
    return-void
.end method
