.class Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/postprocessing/Mp4FromDashMuxer;
.super Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/postprocessing/Postprocessing;
.source "Mp4FromDashMuxer.java"


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "mp4D-mp4"

    .line 14
    invoke-direct {p0, v0, v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/postprocessing/Postprocessing;-><init>(ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method varargs process(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/io/SharpStream;[Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/io/SharpStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4FromDashWriter;

    invoke-direct {v0, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4FromDashWriter;-><init>([Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/io/SharpStream;)V

    .line 20
    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4FromDashWriter;->parseSources()V

    const/4 p2, 0x2

    .line 21
    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-virtual {v0, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4FromDashWriter;->selectTracks([I)V

    .line 22
    invoke-virtual {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/Mp4FromDashWriter;->build(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/io/SharpStream;)V

    const/4 p1, -0x1

    return p1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
