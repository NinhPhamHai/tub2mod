.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b;
.super Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/a;
.source "b.java"


# instance fields
.field homeAdapter:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;

.field private mDiscoverModule:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;

.field mProgressBar:Landroid/widget/ProgressBar;

.field mRvContent:Landroidx/recyclerview/widget/RecyclerView;

.field networkErrorLl:Landroid/widget/LinearLayout;

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/a;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 155
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 157
    new-instance v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b;->mDiscoverModule:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;

    new-instance v4, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b$2;

    invoke-direct {v4, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b$2;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;-><init>(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;)V

    iput-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b;->homeAdapter:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;

    .line 212
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b;->homeAdapter:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 213
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private loadData()V
    .locals 3

    .line 81
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "discover_us.json"

    invoke-static {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/Utils;->readString(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 84
    new-instance v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b$1;

    invoke-direct {v2, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b;)V

    .line 85
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 84
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b;->mDiscoverModule:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b;->initView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b;->networkErrorLl:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static newInstance()Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b;
    .locals 1

    .line 61
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public fetchData()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c007d

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 71
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b;->unbinder:Lbutterknife/Unbinder;

    .line 73
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b;->loadData()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 218
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 219
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/b;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method
