.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;
.super Ljava/lang/Object;
.source "DiscoverModule.java"


# instance fields
.field artist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;",
            ">;"
        }
    .end annotation
.end field

.field genres:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;",
            ">;"
        }
    .end annotation
.end field

.field home_banner:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/HomeBanner;

.field latest_music:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field mood:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;",
            ">;"
        }
    .end annotation
.end field

.field spotlight_square:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;",
            ">;"
        }
    .end annotation
.end field

.field top_country:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;",
            ">;"
        }
    .end annotation
.end field

.field topcharts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/HomeBanner;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/HomeBanner;-><init>()V

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;->home_banner:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/HomeBanner;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;->top_country:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;->spotlight_square:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;->genres:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;->artist:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;->topcharts:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;->mood:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;->latest_music:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getGenres()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;->genres:Ljava/util/List;

    return-object v0
.end method

.method public getHome_banner()Lcom/popupnewvideoplayer/floatingpro/musicfree/module/HomeBanner;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;->home_banner:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/HomeBanner;

    return-object v0
.end method

.method public getLatest_music()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;->latest_music:Ljava/util/List;

    return-object v0
.end method

.method public getMood()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;->mood:Ljava/util/List;

    return-object v0
.end method

.method public getTop_country()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;->top_country:Ljava/util/List;

    return-object v0
.end method

.method public getTopcharts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;->topcharts:Ljava/util/List;

    return-object v0
.end method
