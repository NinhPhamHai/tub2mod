.class Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RadioListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;->setRecycleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 201
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 202
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 204
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;

    iget-object p2, p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    instance-of p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;

    if-eqz p1, :cond_1

    .line 205
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 206
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;->recycleViewAdapter:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->getLoadingSate()Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    move-result-object p1

    sget-object p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->NO_RESULT:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;->loadData()V

    :cond_1
    :goto_0
    return-void
.end method
