.class public final Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "ReusableBufferedOutputStream.java"


# instance fields
.field private closed:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;->closed:Z

    const/4 v0, 0x0

    .line 44
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 49
    :goto_0
    :try_start_1
    iget-object v2, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    :goto_1
    if-nez v1, :cond_1

    return-void

    .line 56
    :cond_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public reset(Ljava/io/OutputStream;)V
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;->closed:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 69
    iput-object p1, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Ljava/io/BufferedOutputStream;->count:I

    .line 71
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;->closed:Z

    return-void
.end method
