.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
.super Lcom/bumptech/glide/RequestBuilder;
.source "d.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/RequestBuilder<",
        "TTranscodeType;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/RequestManager;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/RequestBuilder;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;)",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 486
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-object p1, p0

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object p1
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;)",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 465
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object p1
.end method

.method public centerCrop()Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 321
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->clone()Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->clone()Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 584
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->clone()Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->decode(Ljava/lang/Class;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/lang/Class;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 240
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object p1
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object p1

    return-object p1
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 114
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object p1
.end method

.method public bridge synthetic downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object p1

    return-object p1
.end method

.method public downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ")",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 294
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->load(Landroid/net/Uri;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->load(Ljava/lang/Object;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->load(Ljava/lang/String;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/net/Uri;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 550
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-object p1, p0

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object p1
.end method

.method public load(Ljava/lang/Object;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 522
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-object p1, p0

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 543
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-object p1, p0

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object p1
.end method

.method public bridge synthetic optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->optionalCenterCrop()Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object v0

    return-object v0
.end method

.method public optionalCenterCrop()Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 312
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object v0
.end method

.method public bridge synthetic optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->optionalCenterInside()Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object v0

    return-object v0
.end method

.method public optionalCenterInside()Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 348
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object v0
.end method

.method public bridge synthetic optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->optionalFitCenter()Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object v0

    return-object v0
.end method

.method public optionalFitCenter()Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 330
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object v0
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->override(II)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object p1

    return-object p1
.end method

.method public override(II)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 204
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object p1
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->placeholder(I)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object p1

    return-object p1
.end method

.method public placeholder(I)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 141
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object p1
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->priority(Lcom/bumptech/glide/Priority;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object p1

    return-object p1
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 123
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object p1
.end method

.method public bridge synthetic set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TY;>;TY;)",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 231
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object p1
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->signature(Lcom/bumptech/glide/load/Key;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object p1

    return-object p1
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 222
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object p1
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->sizeMultiplier(F)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object p1

    return-object p1
.end method

.method public sizeMultiplier(F)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 78
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object p1
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->skipMemoryCache(Z)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object p1

    return-object p1
.end method

.method public skipMemoryCache(Z)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 195
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object p1
.end method

.method public bridge synthetic transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lcom/bumptech/glide/load/Transformation;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 384
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object p1
.end method

.method public bridge synthetic useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;->useAnimationPool(Z)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object p1

    return-object p1
.end method

.method public useAnimationPool(Z)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 96
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object p1
.end method
