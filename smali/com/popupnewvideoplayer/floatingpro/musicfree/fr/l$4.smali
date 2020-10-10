.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "l.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 205
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 206
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 207
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;

    iget-object p2, p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    instance-of p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;

    if-eqz p1, :cond_1

    .line 208
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 209
    sget-object p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/retrofit/YConfig;->NO_MORE_PAGE:Ljava/lang/String;

    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;

    invoke-static {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->access$400(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;

    iget-object p2, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mChannelId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->loadAllResult(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mm:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    sget-object p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->NO_RESULT:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    invoke-virtual {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->setLoadingSate(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;)V

    :cond_1
    :goto_0
    return-void
.end method
