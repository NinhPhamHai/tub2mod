.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "m.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final AD_TYPE:I

.field private final LOADING_TYPE:I

.field private final VIDEO_TYPE:I

.field private mAdResId:I

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mItemResId:I

.field private mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mLoadState:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mShowAd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/16 v0, 0xde

    .line 25
    iput v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->AD_TYPE:I

    const/16 v0, 0x14d

    .line 26
    iput v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->VIDEO_TYPE:I

    const/16 v0, 0x1bc

    .line 27
    iput v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->LOADING_TYPE:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mDataList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mItemResId:I

    .line 35
    iput v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mAdResId:I

    .line 36
    iput-boolean v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mShowAd:Z

    .line 38
    sget-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->LOADING:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mLoadState:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    .line 42
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    iput-object p3, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x1bc

    return p1

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    const/16 p1, 0x14d

    return p1
.end method

.method public getLoadingSate()Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mLoadState:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 146
    instance-of v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/g;

    if-eqz v0, :cond_0

    .line 147
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/g;

    invoke-virtual {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/g;->bindData(I)V

    goto :goto_0

    .line 148
    :cond_0
    instance-of v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/b;

    if-eqz v0, :cond_1

    .line 149
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/b;

    invoke-virtual {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/b;->bindData(I)V

    goto :goto_0

    .line 150
    :cond_1
    instance-of v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;

    if-eqz v0, :cond_2

    .line 151
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;

    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mLoadState:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    invoke-virtual {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;->setLoadState(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;)V

    goto :goto_0

    .line 152
    :cond_2
    instance-of v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/f;

    if-eqz v0, :cond_3

    .line 153
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/f;

    invoke-virtual {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/f;->bindData(I)V

    goto :goto_0

    .line 154
    :cond_3
    instance-of v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/c;

    if-eqz v0, :cond_4

    .line 155
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/c;

    invoke-virtual {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/c;->bindData(I)V

    goto :goto_0

    .line 156
    :cond_4
    instance-of v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/d;

    if-eqz v0, :cond_5

    .line 157
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/d;

    invoke-virtual {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/d;->bindData(I)V

    goto :goto_0

    .line 159
    :cond_5
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/a;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/a;->showAd()V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/16 v0, 0xde

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/16 v0, 0x14d

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1bc

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 137
    :cond_0
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00a2

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 138
    new-instance p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;

    invoke-direct {p2, p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;-><init>(Landroid/view/View;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;)V

    return-object p2

    .line 116
    :cond_1
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mItemResId:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 117
    iget p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mItemResId:I

    sparse-switch p2, :sswitch_data_0

    .line 131
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "you should define item res layout id"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :sswitch_0
    new-instance p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/g;

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/g;-><init>(Landroid/view/View;Ljava/util/ArrayList;Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;)V

    return-object p2

    .line 129
    :sswitch_1
    new-instance p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/d;

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/d;-><init>(Landroid/view/View;Ljava/util/ArrayList;Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;)V

    return-object p2

    .line 124
    :sswitch_2
    new-instance p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/f;

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/f;-><init>(Landroid/view/View;Ljava/util/List;Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;)V

    return-object p2

    .line 127
    :sswitch_3
    new-instance p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/c;

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/c;-><init>(Landroid/view/View;Ljava/util/List;Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;)V

    return-object p2

    .line 121
    :sswitch_4
    new-instance p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/b;

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/b;-><init>(Landroid/view/View;Ljava/util/ArrayList;Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;)V

    return-object p2

    .line 134
    :cond_2
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mAdResId:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 135
    new-instance p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/a;

    invoke-direct {p2, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/a;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0047 -> :sswitch_4
        0x7f0c0093 -> :sswitch_3
        0x7f0c0094 -> :sswitch_3
        0x7f0c00fa -> :sswitch_2
        0x7f0c00fb -> :sswitch_2
        0x7f0c00fe -> :sswitch_1
        0x7f0c010b -> :sswitch_0
    .end sparse-switch
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mDataList:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 85
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 86
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m$2;

    invoke-direct {v0, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m$2;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setEnableAd(ZI)V
    .locals 0

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mShowAd:Z

    .line 55
    iput p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mAdResId:I

    return-void
.end method

.method public setItemLayoutId(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mItemResId:I

    return-void
.end method

.method public setLoadingSate(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;)V
    .locals 1

    .line 60
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mLoadState:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    .line 62
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 63
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m$1;

    invoke-direct {v0, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
