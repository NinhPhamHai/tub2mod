.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "m.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 338
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 339
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 342
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    iget-object p2, p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    instance-of p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;

    if-eqz p1, :cond_1

    .line 343
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->access$200(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 344
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    iget p2, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->page:I

    const/16 p3, 0x14

    if-gt p2, p3, :cond_0

    .line 345
    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->loadAllResult()V

    goto :goto_0

    .line 348
    :cond_0
    sget-object p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/retrofit/YConfig;->NO_MORE_PAGE:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->access$402(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->mm:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    if-eqz p1, :cond_1

    .line 352
    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->getLoadingSate()Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    move-result-object p1

    sget-object p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->NO_RESULT:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    if-eq p1, p2, :cond_1

    .line 353
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->mm:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    invoke-virtual {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->setLoadingSate(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;)V

    :cond_1
    :goto_0
    return-void
.end method
