.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;
.super Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/b;
.source "h.java"


# instance fields
.field error:Landroid/widget/TextView;

.field private isForeRefresh:Z

.field private isLoading:Z

.field mAdContainer:Landroid/widget/LinearLayout;

.field mArtistBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;

.field private mLastRefreshTime:J

.field mMusicBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field mProgressbar:Landroid/widget/ProgressBar;

.field mRvContent:Landroidx/recyclerview/widget/RecyclerView;

.field mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/b;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mMusicBeanList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->isLoading:Z

    return p0
.end method

.method static synthetic access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;)J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mLastRefreshTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->isForeRefresh:Z

    return p1
.end method

.method static synthetic access$300(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->loadData()V

    return-void
.end method

.method static synthetic access$400(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->initView()V

    return-void
.end method

.method static synthetic access$500(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->error()V

    return-void
.end method

.method public static actionStart(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;Landroid/content/Context;)V
    .locals 2

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "artist"

    .line 87
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private error()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->error:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mProgressbar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mProgressbar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 281
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 283
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 285
    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 286
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q;

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mMusicBeanList:Ljava/util/List;

    new-instance v3, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$5;

    invoke-direct {v3, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$5;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;)V

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/q;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/b;)V

    .line 329
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private loadAd()V
    .locals 4

    .line 134
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/e;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/e;-><init>()V

    .line 135
    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/a;->AD_NATIVE_SPLASH:Ljava/lang/String;

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mAdContainer:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$2;

    invoke-direct {v3, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$2;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/e;->load(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/g;)V

    return-void
.end method

.method private loadData()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mProgressbar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mArtistBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->getArtistCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 163
    iget-boolean v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->isForeRefresh:Z

    if-eqz v0, :cond_0

    .line 164
    iput-boolean v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->isForeRefresh:Z

    .line 165
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mArtistBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;

    invoke-direct {p0, v2, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->requestArtist(Ljava/lang/String;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;)V

    return-void

    .line 171
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mArtistBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;

    invoke-virtual {v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->getArtistCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$3;

    invoke-direct {v3, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$3;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;)V

    .line 173
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 172
    invoke-virtual {v0, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;

    .line 175
    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;->getMusicList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mMusicBeanList:Ljava/util/List;

    .line 177
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mMusicBeanList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mMusicBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->initView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mArtistBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;

    invoke-direct {p0, v2, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->requestArtist(Ljava/lang/String;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mArtistBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;

    invoke-direct {p0, v2, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->requestArtist(Ljava/lang/String;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private requestArtist(Ljava/lang/String;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;)V
    .locals 5

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mLastRefreshTime:J

    .line 201
    invoke-virtual {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, "%2F"

    .line 203
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{\"context\":{\"client\":{\"clientName\":\"WEB_MUSIC_ANALYTICS\",\"clientVersion\":\"0.2\",\"hl\":\"zh-cn\",\"gl\":\"SG\",\"experimentIds\":null,\"theme\":\"MUSIC\"},\"capabilities\":{},\"request\":{\"internalExperimentFlags\":[]}},\"browseId\":\"FEmusic_analytics_insights_artist\",\"query\":\"perspective=ARTIST&entity_params_entity=ARTIST&entity_params_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://charts.youtube.com/artist/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "application/json; charset=utf-8"

    .line 211
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    .line 212
    invoke-static {v2, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 214
    new-instance v2, Lokhttp3/Headers$Builder;

    invoke-direct {v2}, Lokhttp3/Headers$Builder;-><init>()V

    const-string v3, "Host"

    const-string v4, "charts.youtube.com"

    .line 215
    invoke-virtual {v2, v3, v4}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    const-string v3, "User-Agent"

    const-string v4, "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0"

    .line 216
    invoke-virtual {v2, v3, v4}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    const-string v3, "Referer"

    .line 217
    invoke-virtual {v2, v3, v0}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    const-string v0, "Content-Type"

    const-string v3, "application/json"

    .line 218
    invoke-virtual {v2, v0, v3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    const-string v0, "Cookie"

    const-string v3, "GPS=1; VISITOR_INFO1_LIVE=pr4Xg6FBUng; YSC=CRUxrjJWr8A; PREF=f1=50000000; _ga=GA1.2.23398208.1570775936; _gid=GA1.2.1974252953.1570775936; _gat=1"

    .line 219
    invoke-virtual {v2, v0, v3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 220
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    .line 222
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 223
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 224
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    const-string v4, "https://charts.youtube.com/youtubei/v1/browse?alt=json&key=AIzaSyCzEW7JUJdSql0-2V4tHUb6laYm4iAE_dM"

    .line 225
    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v4, "POST"

    .line 226
    invoke-virtual {v3, v4, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 227
    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 228
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 232
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 233
    new-instance v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$4;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;Ljava/lang/String;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 95
    invoke-super {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/b;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00cf

    .line 96
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 97
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "artist"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mArtistBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;

    .line 100
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0801f1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 101
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mArtistBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;

    invoke-virtual {v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - Top 20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 104
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$1;

    invoke-direct {v0, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;)V

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 126
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->loadData()V

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->isFromFacebook(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->loadAd()V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 384
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    .line 385
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 335
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 378
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 341
    :pswitch_0
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mMusicBeanList:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 342
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->getQueueLab()Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->clearQueues()V

    .line 343
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mMusicBeanList:Ljava/util/List;

    .line 344
    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 345
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->getQueueLab()Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-virtual {v0, p1, v3}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->addMusicListToQueue(Ljava/util/List;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    .line 346
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-static {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;->start(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    :cond_0
    return v2

    .line 375
    :pswitch_1
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mArtistBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/n;->actionStart(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    .line 362
    :pswitch_2
    new-instance p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    invoke-direct {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;-><init>()V

    const-string v0, "FOLDER_TYPE_YOUTUBE"

    .line 363
    invoke-virtual {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;->setFolder_type(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mArtistBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;->setFolder_name(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mArtistBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;->getThumbnail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;->setThumbnail(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mArtistBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;->setUnique_id(Ljava/lang/String;)V

    const-string v0, "artist"

    .line 367
    invoke-virtual {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;->setDb_type(Ljava/lang/String;)V

    .line 369
    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->createUserFolder(Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;)Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    return v2

    .line 352
    :pswitch_3
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mMusicBeanList:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 353
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->getQueueLab()Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->clearQueues()V

    .line 354
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mMusicBeanList:Ljava/util/List;

    .line 355
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->getQueueLab()Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-virtual {v0, p1, v3}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->addMusicListToQueue(Ljava/util/List;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    .line 356
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-static {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;->start(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    :cond_1
    return v2

    .line 337
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2

    :pswitch_data_0
    .packed-switch 0x7f090187
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
