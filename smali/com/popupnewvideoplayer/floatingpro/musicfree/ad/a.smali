.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "a.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a$ListHolder;,
        Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a$FolderListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a$ListHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mFolderListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a$FolderListener;

.field mFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a$FolderListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a$FolderListener;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a;->mFolders:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a;->mContext:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a;->mFolderListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a$FolderListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a;->mFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a$ListHolder;

    invoke-virtual {p0, p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a;->onBindViewHolder(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a$ListHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a$ListHolder;I)V
    .locals 0

    .line 47
    invoke-virtual {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a$ListHolder;->bindData(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a$ListHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a$ListHolder;
    .locals 2

    .line 40
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00ef

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a$ListHolder;

    invoke-direct {p2, p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a$ListHolder;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a;Landroid/view/View;)V

    return-object p2
.end method
