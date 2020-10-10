.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "r.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 360
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 362
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    invoke-static {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 364
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->access$200(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 365
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    iget-object p2, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->PAGE_TOKEN_END:Ljava/lang/String;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->mCurrentPageToken:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 367
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->access$400(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->mDiscoverAdapter:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->getAllDataLoad()Z

    move-result p1

    if-nez p1, :cond_1

    .line 371
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->mDiscoverAdapter:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->setAllDataLoad()V

    :cond_1
    :goto_0
    return-void
.end method
