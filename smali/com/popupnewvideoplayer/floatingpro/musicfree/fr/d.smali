.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;
.super Landroidx/fragment/app/Fragment;
.source "d.java"


# instance fields
.field mAdContainer:Landroid/widget/LinearLayout;

.field mAdmobNative:Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d;

.field mBtnEdit:Landroid/widget/TextView;

.field me:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/e;

.field mFolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;",
            ">;"
        }
    .end annotation
.end field

.field mLocalMusic:Landroid/view/View;

.field mRlCreateFolder:Landroid/widget/RelativeLayout;

.field mRlMyFavorite:Landroid/view/View;

.field mRlRecently:Landroid/view/View;

.field mRvPlaylist:Landroidx/recyclerview/widget/RecyclerView;

.field rlDownloadTask:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private loadAdS()V
    .locals 7

    .line 140
    sget-boolean v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;->mServiceRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d;-><init>()V

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->mAdmobNative:Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d;

    .line 145
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->mAdmobNative:Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/a;->AD_NATIVE_SPLASH:Ljava/lang/String;

    iget-object v4, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->mAdContainer:Landroid/widget/LinearLayout;

    const v5, 0x7f0c0038

    new-instance v6, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d$1;

    invoke-direct {v6, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;)V

    invoke-virtual/range {v1 .. v6}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d;->load(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;ILcom/popupnewvideoplayer/floatingpro/musicfree/adm/g;)V

    return-void
.end method

.method public static newInstance()Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;
    .locals 1

    .line 85
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method OnMyFavorite()V
    .locals 2

    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->getFavoriteFolder()Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/d;->actionStart(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;)V

    return-void
.end method

.method OnRecently()V
    .locals 2

    .line 226
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->getHistoryFolder()Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/d;->actionStart(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;)V

    return-void
.end method

.method public countryNotice(Lcom/popupnewvideoplayer/floatingpro/musicfree/b/f;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->isDownloadEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->rlDownloadTask:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method loadAllData()V
    .locals 5

    .line 178
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->getFoldersToManage()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->mFolderList:Ljava/util/List;

    .line 179
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->mFolderList:Ljava/util/List;

    iget-object v3, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->mRvPlaylist:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d$2;

    invoke-direct {v4, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d$2;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/e;-><init>(Landroid/content/Context;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/e$IFolderListener;)V

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->me:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/e;

    .line 206
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->mRvPlaylist:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 207
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->mRvPlaylist:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->me:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/e;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method onCreateFolder()V
    .locals 2

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d$3;

    invoke-direct {v1, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d$3;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;)V

    invoke-static {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/d;->createAddDialog(Landroid/app/Activity;Lcom/popupnewvideoplayer/floatingpro/musicfree/e/e;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x0

    const v0, 0x7f0c00d1

    .line 91
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 92
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 93
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->isDownloadEnable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 96
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->rlDownloadTask:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->rlDownloadTask:Landroid/widget/RelativeLayout;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 100
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->isFromFacebook(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->loadAdS()V

    :cond_1
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 108
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 110
    :try_start_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDownClicked()V
    .locals 3

    .line 236
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onLocalMusic()V
    .locals 1

    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/e;->startLocalMusic(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 169
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 170
    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->loadAllData()V

    return-void
.end method

.method public onViewClicked()V
    .locals 3

    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showWindow(Lcom/popupnewvideoplayer/floatingpro/musicfree/b/a/e;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 130
    :try_start_0
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->mAdContainer:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->mAdContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
