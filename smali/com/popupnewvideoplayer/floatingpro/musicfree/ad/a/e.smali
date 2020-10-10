.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "e.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mFailed:Landroid/widget/RelativeLayout;

.field private mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mLoadState:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

.field private mLoading:Landroid/widget/RelativeLayout;

.field private mNoResult:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 18
    sget-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->LOADING:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;->mLoadState:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    .line 23
    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;

    const p2, 0x7f090214

    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;->mLoading:Landroid/widget/RelativeLayout;

    const p2, 0x7f090211

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;->mFailed:Landroid/widget/RelativeLayout;

    const p2, 0x7f090218

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;->mNoResult:Landroid/widget/RelativeLayout;

    .line 27
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;->mFailed:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;->mLoadState:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    invoke-interface {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;->onLoadingClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;)V

    return-void
.end method

.method public setLoadState(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;)V
    .locals 3

    .line 31
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;->mLoadState:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    .line 32
    sget-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e$1;->$SwitchMap$com$floatingtunes$youtubeplayer$topmusic$adapter$LoadState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;->mLoading:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 45
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;->mFailed:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 46
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;->mNoResult:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;->mLoading:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 40
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;->mFailed:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;->mNoResult:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;->mLoading:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 35
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;->mFailed:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;->mNoResult:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
