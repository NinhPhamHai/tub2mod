.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "j.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 287
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 288
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 291
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;

    iget-object p2, p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    instance-of p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;

    if-eqz p1, :cond_1

    .line 292
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;->access$300(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 293
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;->access$500(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;)I

    move-result p1

    const/16 p2, 0x14

    if-gt p1, p2, :cond_0

    .line 294
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;->loadAllResult()V

    goto :goto_0

    .line 297
    :cond_0
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;

    sget-object p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/retrofit/YConfig;->NO_MORE_PAGE:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;->access$202(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;->mm:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    if-eqz p1, :cond_1

    .line 301
    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->getLoadingSate()Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    move-result-object p1

    sget-object p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->NO_RESULT:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    if-eq p1, p2, :cond_1

    .line 302
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/j;->mm:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    invoke-virtual {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->setLoadingSate(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;)V

    :cond_1
    :goto_0
    return-void
.end method
