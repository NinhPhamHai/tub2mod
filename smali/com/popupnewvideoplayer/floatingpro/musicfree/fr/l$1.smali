.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$1;
.super Ljava/lang/Object;
.source "l.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->reqPlaylistByChannel(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/util/List<",
        "Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    const-string v0, "j"

    const-string v1, "onComplete: "

    .line 157
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;

    invoke-static {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->access$300(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$1;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/e;",
            ">;)V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->access$102(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;Z)Z

    .line 147
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->access$200(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
