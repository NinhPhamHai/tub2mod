.class public final enum Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;
.super Ljava/lang/Enum;
.source "MissionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

.field public static final enum Finished:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

.field public static final enum None:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

.field public static final enum Pending:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

.field public static final enum PendingRunning:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

    const/4 v1, 0x0

    const-string v2, "None"

    invoke-direct {v0, v2, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;->None:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

    const/4 v2, 0x1

    const-string v3, "Pending"

    invoke-direct {v0, v3, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;->Pending:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

    const/4 v3, 0x2

    const-string v4, "PendingRunning"

    invoke-direct {v0, v4, v3}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;->PendingRunning:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

    const/4 v4, 0x3

    const-string v5, "Finished"

    invoke-direct {v0, v5, v4}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;->Finished:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

    sget-object v5, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;->None:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;->Pending:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;->PendingRunning:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;->Finished:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;->$VALUES:[Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;
    .locals 1

    .line 3
    const-class v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

    return-object p0
.end method

.method public static values()[Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;
    .locals 1

    .line 3
    sget-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;->$VALUES:[Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

    invoke-virtual {v0}, [Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/service/MissionState;

    return-object v0
.end method
