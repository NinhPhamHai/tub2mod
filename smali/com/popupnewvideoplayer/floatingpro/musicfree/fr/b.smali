.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;
.super Landroidx/fragment/app/Fragment;
.source "b.java"

# interfaces
.implements Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b$Listener;


# instance fields
.field mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field mDeletePosition:I

.field mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

.field mf:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;

.field mRvContent:Landroidx/recyclerview/widget/RecyclerView;

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/util/ArrayList;Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;)Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;",
            ">;",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;",
            ")",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;-><init>()V

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param1"

    .line 52
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "param2"

    .line 53
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 54
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public cleanAllItem()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->deleteAllVideo(Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;)V

    .line 161
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mf:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;->removeAllItem()V

    :cond_0
    return-void
.end method

.method public initRecyclerView()V
    .locals 5

    .line 80
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 83
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 84
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mDataList:Ljava/util/List;

    iget-object v3, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b$1;

    invoke-direct {v4, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;-><init>(Landroid/content/Context;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/l;)V

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mf:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;

    .line 122
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mf:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mDataList:Ljava/util/List;

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0089

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 74
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->unbinder:Lbutterknife/Unbinder;

    .line 75
    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->initRecyclerView()V

    return-object p1
.end method

.method public onDeleteSuccess()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mf:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mDataList:Ljava/util/List;

    iget v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mDeletePosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mf:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;

    iget v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mDeletePosition:I

    invoke-virtual {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/f;->removeItem(I)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 130
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 131
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public playAllMusicOrder()V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->getQueueLab()Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->clearQueues()V

    .line 149
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->getQueueLab()Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;

    move-result-object v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-virtual {v1, v0, v3}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->addMusicListToQueue(Ljava/util/List;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-static {v1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;->start(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    :cond_0
    return-void
.end method

.method public playAllMusicShuffle()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->getQueueLab()Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->clearQueues()V

    .line 174
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/b;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 175
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 176
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->getQueueLab()Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;

    move-result-object v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-virtual {v1, v0, v3}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->addMusicListToQueue(Ljava/util/List;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-static {v1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;->start(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    :cond_0
    return-void
.end method
