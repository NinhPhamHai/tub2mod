.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "e.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CuratedHolder"
.end annotation


# instance fields
.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;


# direct methods
.method public constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;Landroid/view/View;)V
    .locals 5

    .line 573
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    .line 574
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090224

    .line 575
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 578
    new-instance p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r;

    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;)V

    .line 596
    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;->access$600(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;Ljava/util/List;Landroid/content/Context;)V

    .line 599
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 600
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/popupnewvideoplayer/floatingpro/musicfree/v/GridSpacingItemDecoration;

    .line 601
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f0700a1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    const/4 v4, 0x1

    invoke-direct {v3, v2, p1, v4}, Lcom/popupnewvideoplayer/floatingpro/musicfree/v/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 600
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 602
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 603
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$CuratedHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method
