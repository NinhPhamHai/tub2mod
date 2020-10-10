.class public final enum Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;
.super Ljava/lang/Enum;
.source "j.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

.field public static final enum DELETE_FROM_HISTORY:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

.field public static final enum DOWNLOAD_FAILED:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

.field public static final enum DOWNLOAD_POSTPROCESSING:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

.field public static final enum GET_SUGGESTIONS:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

.field public static final enum LOAD_IMAGE:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

.field public static final enum PLAY_STREAM:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

.field public static final enum REQUESTED_CHANNEL:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

.field public static final enum REQUESTED_COMMENTS:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

.field public static final enum REQUESTED_KIOSK:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

.field public static final enum REQUESTED_PLAYLIST:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

.field public static final enum REQUESTED_STREAM:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

.field public static final enum SEARCHED:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

.field public static final enum SOMETHING_ELSE:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

.field public static final enum SUBSCRIPTION:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

.field public static final enum UI_ERROR:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

.field public static final enum USER_REPORT:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 7
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    const/4 v1, 0x0

    const-string v2, "USER_REPORT"

    const-string v3, "user report"

    invoke-direct {v0, v2, v1, v3}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->USER_REPORT:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    .line 8
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    const/4 v2, 0x1

    const-string v3, "UI_ERROR"

    const-string v4, "ui error"

    invoke-direct {v0, v3, v2, v4}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->UI_ERROR:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    .line 9
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    const/4 v3, 0x2

    const-string v4, "SUBSCRIPTION"

    const-string v5, "subscription"

    invoke-direct {v0, v4, v3, v5}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->SUBSCRIPTION:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    .line 10
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    const/4 v4, 0x3

    const-string v5, "LOAD_IMAGE"

    const-string v6, "load image"

    invoke-direct {v0, v5, v4, v6}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->LOAD_IMAGE:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    .line 11
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    const/4 v5, 0x4

    const-string v6, "SOMETHING_ELSE"

    const-string v7, "something"

    invoke-direct {v0, v6, v5, v7}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->SOMETHING_ELSE:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    .line 12
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    const/4 v6, 0x5

    const-string v7, "SEARCHED"

    const-string v8, "searched"

    invoke-direct {v0, v7, v6, v8}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->SEARCHED:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    .line 13
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    const/4 v7, 0x6

    const-string v8, "GET_SUGGESTIONS"

    const-string v9, "get suggestions"

    invoke-direct {v0, v8, v7, v9}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->GET_SUGGESTIONS:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    .line 14
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    const/4 v8, 0x7

    const-string v9, "REQUESTED_STREAM"

    const-string v10, "requested stream"

    invoke-direct {v0, v9, v8, v10}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->REQUESTED_STREAM:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    .line 15
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    const/16 v9, 0x8

    const-string v10, "REQUESTED_CHANNEL"

    const-string v11, "requested channel"

    invoke-direct {v0, v10, v9, v11}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->REQUESTED_CHANNEL:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    .line 16
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    const/16 v10, 0x9

    const-string v11, "REQUESTED_PLAYLIST"

    const-string v12, "requested playlist"

    invoke-direct {v0, v11, v10, v12}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->REQUESTED_PLAYLIST:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    .line 17
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    const/16 v11, 0xa

    const-string v12, "REQUESTED_KIOSK"

    const-string v13, "requested kiosk"

    invoke-direct {v0, v12, v11, v13}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->REQUESTED_KIOSK:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    .line 18
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    const/16 v12, 0xb

    const-string v13, "REQUESTED_COMMENTS"

    const-string v14, "requested comments"

    invoke-direct {v0, v13, v12, v14}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->REQUESTED_COMMENTS:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    .line 19
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    const/16 v13, 0xc

    const-string v14, "DELETE_FROM_HISTORY"

    const-string v15, "delete from history"

    invoke-direct {v0, v14, v13, v15}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->DELETE_FROM_HISTORY:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    .line 20
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    const/16 v14, 0xd

    const-string v15, "PLAY_STREAM"

    const-string v13, "Play stream"

    invoke-direct {v0, v15, v14, v13}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->PLAY_STREAM:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    .line 21
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    const/16 v13, 0xe

    const-string v15, "DOWNLOAD_POSTPROCESSING"

    const-string v14, "download post-processing"

    invoke-direct {v0, v15, v13, v14}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->DOWNLOAD_POSTPROCESSING:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    .line 22
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    const-string v14, "DOWNLOAD_FAILED"

    const/16 v15, 0xf

    const-string v13, "download failed"

    invoke-direct {v0, v14, v15, v13}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->DOWNLOAD_FAILED:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    const/16 v0, 0x10

    .line 6
    new-array v0, v0, [Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    sget-object v13, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->USER_REPORT:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    aput-object v13, v0, v1

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->UI_ERROR:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    aput-object v1, v0, v2

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->SUBSCRIPTION:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->LOAD_IMAGE:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    aput-object v1, v0, v4

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->SOMETHING_ELSE:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    aput-object v1, v0, v5

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->SEARCHED:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    aput-object v1, v0, v6

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->GET_SUGGESTIONS:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    aput-object v1, v0, v7

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->REQUESTED_STREAM:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    aput-object v1, v0, v8

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->REQUESTED_CHANNEL:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    aput-object v1, v0, v9

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->REQUESTED_PLAYLIST:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    aput-object v1, v0, v10

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->REQUESTED_KIOSK:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    aput-object v1, v0, v11

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->REQUESTED_COMMENTS:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    aput-object v1, v0, v12

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->DELETE_FROM_HISTORY:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->PLAY_STREAM:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->DOWNLOAD_POSTPROCESSING:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->DOWNLOAD_FAILED:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->$VALUES:[Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->message:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;
    .locals 1

    .line 6
    const-class v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    return-object p0
.end method

.method public static values()[Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;
    .locals 1

    .line 6
    sget-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->$VALUES:[Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    invoke-virtual {v0}, [Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/popupnewvideoplayer/floatingpro/musicfree/do/j;

    return-object v0
.end method
