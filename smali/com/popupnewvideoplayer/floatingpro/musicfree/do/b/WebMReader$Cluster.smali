.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;
.super Ljava/lang/Object;
.source "WebMReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cluster"
.end annotation


# instance fields
.field currentSimpleBlock:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$SimpleBlock;

.field ref:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Element;

.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;

.field public timecode:J


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Element;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 471
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;->currentSimpleBlock:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$SimpleBlock;

    .line 475
    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;->ref:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Element;

    return-void
.end method


# virtual methods
.method check()Z
    .locals 7

    .line 479
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;->access$700(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;)Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/DataReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/DataReader;->position()J

    move-result-wide v0

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;->ref:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Element;

    iget-wide v3, v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Element;->offset:J

    iget-wide v5, v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Element;->size:J

    add-long/2addr v3, v5

    cmp-long v2, v0, v3

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNextSimpleBlock()Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$SimpleBlock;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;->check()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;->currentSimpleBlock:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$SimpleBlock;

    if-eqz v0, :cond_1

    .line 487
    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$SimpleBlock;->access$800(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$SimpleBlock;)Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Element;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;->access$500(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Element;)V

    .line 490
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;->check()Z

    move-result v0

    if-nez v0, :cond_4

    .line 491
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;->ref:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Element;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x23

    aput v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;->access$600(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Element;[I)Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Element;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 496
    :cond_2
    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;

    invoke-static {v2, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;->access$900(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Element;)Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$SimpleBlock;

    move-result-object v2

    iput-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;->currentSimpleBlock:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$SimpleBlock;

    .line 497
    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;->currentSimpleBlock:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$SimpleBlock;

    iget-wide v2, v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$SimpleBlock;->trackNumber:J

    iget-object v4, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;

    invoke-static {v4}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;->access$1000(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;)[Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$WebMTrack;

    move-result-object v4

    iget-object v5, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;

    invoke-static {v5}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;->access$1100(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;)I

    move-result v5

    aget-object v4, v4, v5

    iget-wide v4, v4, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$WebMTrack;->trackNumber:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    .line 498
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;->currentSimpleBlock:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$SimpleBlock;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;

    invoke-static {v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;->access$700(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;)Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/DataReader;

    move-result-object v1

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;->currentSimpleBlock:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$SimpleBlock;

    iget-wide v2, v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$SimpleBlock;->dataSize:J

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/DataReader;->getView(I)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$SimpleBlock;->data:Ljava/io/InputStream;

    .line 499
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;->currentSimpleBlock:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$SimpleBlock;

    return-object v0

    .line 502
    :cond_3
    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Cluster;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;

    invoke-static {v2, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;->access$500(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Element;)V

    goto :goto_0

    :cond_4
    return-object v1
.end method
