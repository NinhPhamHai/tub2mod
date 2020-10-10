.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$2;
.super Ljava/lang/Object;
.source "l.java"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "Lio/reactivex/functions/Function<",
        "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ChannelPlaylistModule;",
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

    .line 125
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ChannelPlaylistModule;

    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$2;->apply(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ChannelPlaylistModule;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ChannelPlaylistModule;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ChannelPlaylistModule;",
            ")",
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/e;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ChannelPlaylistModule;->getNextPageToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->access$402(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->access$400(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/retrofit/YConfig;->NO_MORE_PAGE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;->access$402(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/l;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    :cond_0
    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/retrofit/YUtils;->convertToe(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ChannelPlaylistModule;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
