.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiscoverAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private LOADING_TYPE:I

.field private NORMAL_TYPE:I

.field private allDataLoad:Z

.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 p1, 0x1

    .line 122
    iput p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->NORMAL_TYPE:I

    const/4 p1, 0x2

    .line 123
    iput p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->LOADING_TYPE:I

    const/4 p1, 0x0

    .line 125
    iput-boolean p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->allDataLoad:Z

    return-void
.end method


# virtual methods
.method public getAllDataLoad()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->allDataLoad:Z

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 170
    iget p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->LOADING_TYPE:I

    return p1

    .line 171
    :cond_0
    iget p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->NORMAL_TYPE:I

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 146
    instance-of v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$GenresHolder;

    if-eqz v0, :cond_0

    .line 147
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$GenresHolder;

    .line 148
    invoke-virtual {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$GenresHolder;->bindAlbumData(I)V

    goto :goto_0

    .line 149
    :cond_0
    instance-of p2, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$LoadViewHolder;

    if-eqz p2, :cond_1

    .line 150
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$LoadViewHolder;

    .line 151
    iget-boolean p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->allDataLoad:Z

    invoke-virtual {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$LoadViewHolder;->bindData(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 134
    iget v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->NORMAL_TYPE:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 135
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c010e

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 136
    new-instance p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$GenresHolder;

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    invoke-direct {p2, v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$GenresHolder;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;Landroid/view/View;)V

    return-object p2

    .line 138
    :cond_0
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00a2

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 139
    new-instance p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$LoadViewHolder;

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    invoke-direct {p2, v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$LoadViewHolder;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;Landroid/view/View;)V

    return-object p2
.end method

.method public setAllDataLoad()V
    .locals 2

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->allDataLoad:Z

    .line 177
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter$1;

    invoke-direct {v1, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
