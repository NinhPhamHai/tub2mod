.class public final enum Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;
.super Ljava/lang/Enum;
.source "Mp4DashReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

.field public static final enum Audio:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

.field public static final enum Other:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

.field public static final enum Subtitles:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

.field public static final enum Video:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 70
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

    const/4 v1, 0x0

    const-string v2, "Audio"

    invoke-direct {v0, v2, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;->Audio:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

    const/4 v2, 0x1

    const-string v3, "Video"

    invoke-direct {v0, v3, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;->Video:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

    const/4 v3, 0x2

    const-string v4, "Subtitles"

    invoke-direct {v0, v4, v3}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;->Subtitles:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

    const/4 v4, 0x3

    const-string v5, "Other"

    invoke-direct {v0, v5, v4}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;->Other:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

    const/4 v0, 0x4

    .line 69
    new-array v0, v0, [Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

    sget-object v5, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;->Audio:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

    aput-object v5, v0, v1

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;->Video:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;->Subtitles:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

    aput-object v1, v0, v3

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;->Other:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

    aput-object v1, v0, v4

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;->$VALUES:[Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;
    .locals 1

    .line 69
    const-class v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

    return-object p0
.end method

.method public static values()[Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;
    .locals 1

    .line 69
    sget-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;->$VALUES:[Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

    invoke-virtual {v0}, [Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4DashReader$TrackKind;

    return-object v0
.end method
