.class final Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;
.super Ljava/lang/Object;
.source "FramedStream.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/FramedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FramedDataSink"
.end annotation


# instance fields
.field private closed:Z

.field private finished:Z

.field private final sendBuffer:Lokio/Buffer;

.field final synthetic this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedStream;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    return-void
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;)Z
    .locals 0

    .line 470
    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z

    return p0
.end method

.method static synthetic access$202(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;Z)Z
    .locals 0

    .line 470
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z

    return p1
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;)Z
    .locals 0

    .line 470
    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z

    return p0
.end method

.method private emitDataFrame(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    monitor-enter v0

    .line 502
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$1100(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v1

    invoke-virtual {v1}, Lokio/AsyncTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 504
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    iget-wide v1, v1, Lcom/squareup/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$800(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v1

    if-nez v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$900(Lcom/squareup/okhttp/internal/framed/FramedStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 508
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$1100(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 511
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$1200(Lcom/squareup/okhttp/internal/framed/FramedStream;)V

    .line 512
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    iget-wide v1, v1, Lcom/squareup/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 513
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    iget-wide v2, v1, Lcom/squareup/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    sub-long/2addr v2, v9

    iput-wide v2, v1, Lcom/squareup/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    .line 514
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 516
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$1100(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 518
    :try_start_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$500(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$600(Lcom/squareup/okhttp/internal/framed/FramedStream;)I

    move-result v6

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long p1, v9, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 v7, 0x0

    :goto_1
    iget-object v8, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual/range {v5 .. v10}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->writeData(IZLokio/Buffer;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 520
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$1100(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$1100(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw p1

    :catchall_1
    move-exception p1

    .line 508
    :try_start_4
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$1100(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw p1

    :catchall_2
    move-exception p1

    .line 514
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    monitor-enter v0

    .line 542
    :try_start_0
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 543
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 544
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    iget-boolean v0, v0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 547
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 548
    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->emitDataFrame(Z)V

    goto :goto_0

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$500(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$600(Lcom/squareup/okhttp/internal/framed/FramedStream;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->writeData(IZLokio/Buffer;J)V

    .line 555
    :cond_2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    monitor-enter v2

    .line 556
    :try_start_1
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z

    .line 557
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$500(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->flush()V

    .line 559
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$1000(Lcom/squareup/okhttp/internal/framed/FramedStream;)V

    return-void

    :catchall_0
    move-exception v0

    .line 557
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 543
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    monitor-enter v0

    .line 527
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$1200(Lcom/squareup/okhttp/internal/framed/FramedStream;)V

    .line 528
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    .line 530
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->emitDataFrame(Z)V

    .line 531
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$500(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->flush()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 528
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$1100(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 490
    :goto_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_0

    const/4 p1, 0x0

    .line 491
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->emitDataFrame(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
