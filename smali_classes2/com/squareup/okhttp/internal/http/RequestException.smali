.class public final Lcom/squareup/okhttp/internal/http/RequestException;
.super Ljava/lang/Exception;
.source "RequestException.java"


# virtual methods
.method public getCause()Ljava/io/IOException;
    .locals 1

    .line 32
    invoke-super {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/RequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method
