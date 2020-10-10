.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "f.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/l;

.field private mObjectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/l;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;->mContext:Landroid/content/Context;

    .line 31
    iput-object p3, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    iput-object p4, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/l;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;->mObjectList:Ljava/util/ArrayList;

    .line 34
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 66
    instance-of v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/u;

    if-eqz v0, :cond_0

    .line 67
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/u;

    invoke-virtual {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/u;->bindData(I)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 60
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c010b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/u;

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;->mObjectList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/l;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/u;-><init>(Landroid/view/View;Ljava/util/List;Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/l;)V

    return-object p2
.end method

.method public removeAllItem()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeItem(I)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 47
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
