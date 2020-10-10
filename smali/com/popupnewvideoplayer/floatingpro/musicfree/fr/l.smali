.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;
.super Landroidx/fragment/app/Fragment;
.source "l.java"


# instance fields
.field private isLoading:Z

.field mChannelId:Ljava/lang/String;

.field private mCurrentPageToken:Ljava/lang/String;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/e;",
            ">;"
        }
    .end annotation
.end field

.field mm:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/e;",
            ">;"
        }
    .end annotation
.end field

.field mProgressBar:Landroid/widget/ProgressBar;

.field mRvContent:Landroidx/recyclerview/widget/RecyclerView;

.field mYService:Lcom/popupnewvideoplayer/floatingpro/musicfree/retrofit/YService;

.field retrofit:Lretrofit2/Retrofit;

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mCurrentPageToken:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mDataList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->isLoading:Z

    return p0
.end method

.method static synthetic access$102(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->isLoading:Z

    return p1
.end method

.method static synthetic access$200(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->initRecyclerView()V

    return-void
.end method

.method static synthetic access$300(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;Ljava/lang/Throwable;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->loadingErrorPrompt(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mCurrentPageToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mCurrentPageToken:Ljava/lang/String;

    return-object p1
.end method

.method private initRecyclerView()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mm:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$3;

    invoke-direct {v3, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$3;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;)V

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mm:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    .line 191
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mm:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    const v1, 0x7f0c00fb

    invoke-virtual {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->setItemLayoutId(I)V

    .line 193
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mm:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->setDataList(Ljava/util/List;)V

    .line 196
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 197
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 198
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    .line 199
    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mm:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 200
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 201
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$4;

    invoke-direct {v1, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$4;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 224
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->setDataList(Ljava/util/List;)V

    .line 227
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 228
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private loadingErrorPrompt(Ljava/lang/Throwable;)V
    .locals 1

    .line 237
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$5;

    invoke-direct {v0, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$5;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;
    .locals 3

    .line 71
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;-><init>()V

    .line 72
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ARG_CHANNEL_ID"

    .line 73
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public loadAllResult(Ljava/lang/String;)V
    .locals 1

    .line 111
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mChannelId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->isLoading:Z

    .line 115
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mCurrentPageToken:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->reqPlaylistByChannel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ARG_CHANNEL_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mChannelId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0084

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 90
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->unbinder:Lbutterknife/Unbinder;

    .line 91
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 93
    new-instance p2, Lretrofit2/Retrofit$Builder;

    invoke-direct {p2}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string p3, "https://www.googleapis.com/youtube/v3/"

    .line 94
    invoke-virtual {p2, p3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 95
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p3

    invoke-virtual {p2, p3}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 96
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object p3

    invoke-virtual {p2, p3}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 97
    invoke-virtual {p2}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p2

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->retrofit:Lretrofit2/Retrofit;

    .line 99
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->retrofit:Lretrofit2/Retrofit;

    const-class p3, Lcom/popupnewvideoplayer/floatingpro/musicfree/retrofit/YService;

    invoke-virtual {p2, p3}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/retrofit/YService;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mYService:Lcom/popupnewvideoplayer/floatingpro/musicfree/retrofit/YService;

    .line 102
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mChannelId:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->loadAllResult(Ljava/lang/String;)V

    return-object p1
.end method

.method reqPlaylistByChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->mYService:Lcom/popupnewvideoplayer/floatingpro/musicfree/retrofit/YService;

    invoke-static {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/retrofit/YConfig;->getChannelPlaylistOptionMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "playlists"

    invoke-interface {v0, p2, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/retrofit/YService;->listChannelPlaylist(Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    .line 124
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$2;

    invoke-direct {p2, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$2;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;)V

    .line 125
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 136
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$1;

    invoke-direct {p2, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;)V

    .line 137
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
