.class synthetic Lcom/popupnewvideoplayer/floatingpro/musicfree/do/c/SecondaryStreamHelper$1;
.super Ljava/lang/Object;
.source "SecondaryStreamHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/do/c/SecondaryStreamHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$schabi$newpipe$extractor$MediaFormat:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    invoke-static {}, Lorg/schabi/newpipe/extractor/MediaFormat;->values()[Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/c/SecondaryStreamHelper$1;->$SwitchMap$org$schabi$newpipe$extractor$MediaFormat:[I

    :try_start_0
    sget-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/c/SecondaryStreamHelper$1;->$SwitchMap$org$schabi$newpipe$extractor$MediaFormat:[I

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/c/SecondaryStreamHelper$1;->$SwitchMap$org$schabi$newpipe$extractor$MediaFormat:[I

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
