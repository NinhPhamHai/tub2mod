.class public final synthetic Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/-$$Lambda$DownloadManager$v_YVu8-zrTed-YtdSxQ4_fIPkj8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/-$$Lambda$DownloadManager$v_YVu8-zrTed-YtdSxQ4_fIPkj8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/-$$Lambda$DownloadManager$v_YVu8-zrTed-YtdSxQ4_fIPkj8;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/-$$Lambda$DownloadManager$v_YVu8-zrTed-YtdSxQ4_fIPkj8;-><init>()V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/-$$Lambda$DownloadManager$v_YVu8-zrTed-YtdSxQ4_fIPkj8;->INSTANCE:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/-$$Lambda$DownloadManager$v_YVu8-zrTed-YtdSxQ4_fIPkj8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/DownloadMission;

    check-cast p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/DownloadMission;

    invoke-static {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/DownloadManager;->lambda$loadPendingMissions$0(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/DownloadMission;Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/DownloadMission;)I

    move-result p1

    return p1
.end method
