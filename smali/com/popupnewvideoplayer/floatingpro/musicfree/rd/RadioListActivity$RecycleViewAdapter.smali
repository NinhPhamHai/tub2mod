.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RadioListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecycleViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field item:I

.field load:I

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadState:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;


# direct methods
.method public constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;",
            ">;)V"
        }
    .end annotation

    .line 265
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 240
    sget-object p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->LOADING:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->mLoadState:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    const/4 p1, 0x0

    .line 243
    iput p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->item:I

    const/4 p1, 0x1

    .line 244
    iput p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->load:I

    .line 266
    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 311
    iget p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->load:I

    return p1

    .line 313
    :cond_0
    iget p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->item:I

    return p1
.end method

.method public getLoadingSate()Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->mLoadState:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 295
    instance-of v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;

    if-eqz v0, :cond_0

    .line 297
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;

    .line 298
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    .line 300
    invoke-static {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;->access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    goto :goto_0

    .line 303
    :cond_0
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;

    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->mLoadState:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    invoke-virtual {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;->setLoadState(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 280
    iget v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->item:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 281
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c009e

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 282
    new-instance p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;

    invoke-direct {p2, p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;Landroid/view/View;)V

    return-object p2

    .line 286
    :cond_0
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;

    iget-object p2, p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00a2

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 287
    new-instance p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a/e;-><init>(Landroid/view/View;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;)V

    return-object p2
.end method

.method public setLoadingSate(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;)V
    .locals 1

    .line 247
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->mLoadState:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    .line 249
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 250
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;",
            ">;)V"
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->mData:Ljava/util/List;

    .line 271
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
