.class public final enum Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;
.super Ljava/lang/Enum;
.source "o.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

.field public static final enum FAILED:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

.field public static final enum LOADING:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

.field public static final enum NO_RESULT:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    const/4 v1, 0x0

    const-string v2, "LOADING"

    invoke-direct {v0, v2, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->LOADING:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    const/4 v2, 0x1

    const-string v3, "FAILED"

    invoke-direct {v0, v3, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->FAILED:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    const/4 v3, 0x2

    const-string v4, "NO_RESULT"

    invoke-direct {v0, v4, v3}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->NO_RESULT:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    sget-object v4, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->LOADING:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    aput-object v4, v0, v1

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->FAILED:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->NO_RESULT:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    aput-object v1, v0, v3

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->$VALUES:[Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;
    .locals 1

    .line 7
    const-class v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    return-object p0
.end method

.method public static values()[Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;
    .locals 1

    .line 7
    sget-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->$VALUES:[Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    invoke-virtual {v0}, [Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    return-object v0
.end method
