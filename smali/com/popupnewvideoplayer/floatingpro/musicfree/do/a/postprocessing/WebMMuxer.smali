.class Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/postprocessing/WebMMuxer;
.super Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/postprocessing/Postprocessing;
.source "WebMMuxer.java"


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "webm"

    .line 15
    invoke-direct {p0, v0, v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/postprocessing/Postprocessing;-><init>(ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method varargs process(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/io/SharpStream;[Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/io/SharpStream;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMWriter;

    invoke-direct {v0, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMWriter;-><init>([Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/io/SharpStream;)V

    .line 21
    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMWriter;->parseSources()V

    .line 24
    array-length v1, p2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 26
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_2

    .line 27
    invoke-virtual {v0, v3}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMWriter;->getTracksFromSource(I)[Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$WebMTrack;

    move-result-object v4

    const/4 v5, 0x0

    .line 28
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 29
    aget-object v6, v4, v5

    iget-object v6, v6, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$WebMTrack;->kind:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$TrackKind;

    sget-object v7, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$TrackKind;->Audio:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$TrackKind;

    if-ne v6, v7, :cond_0

    .line 30
    aput v5, v1, v3

    .line 31
    array-length v3, p2

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMWriter;->selectTracks([I)V

    .line 38
    invoke-virtual {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMWriter;->build(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/io/SharpStream;)V

    const/4 p1, -0x1

    return p1
.end method
