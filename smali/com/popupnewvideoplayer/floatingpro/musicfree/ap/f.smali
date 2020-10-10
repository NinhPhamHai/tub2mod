.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/f;
.super Lcom/bumptech/glide/RequestManager;
.source "f.java"


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/RequestManager;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/f;->as(Ljava/lang/Class;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object p1

    return-object p1
.end method

.method public as(Ljava/lang/Class;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "TResourceType;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    iget-object v2, p0, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic asBitmap()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/f;->asBitmap()Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object v0

    return-object v0
.end method

.method public asBitmap()Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object v0
.end method

.method public bridge synthetic asDrawable()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/f;->asDrawable()Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object v0

    return-object v0
.end method

.method public asDrawable()Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object v0
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/f;->load(Landroid/net/Uri;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/f;->load(Ljava/lang/String;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

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
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 113
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

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
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

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
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/d;

    return-object p1
.end method

.method protected setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V
    .locals 1

    .line 174
    instance-of v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/c;

    if-eqz v0, :cond_0

    .line 175
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V

    goto :goto_0

    .line 177
    :cond_0
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/c;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/c;-><init>()V

    invoke-virtual {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/c;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ap/c;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V

    :goto_0
    return-void
.end method
