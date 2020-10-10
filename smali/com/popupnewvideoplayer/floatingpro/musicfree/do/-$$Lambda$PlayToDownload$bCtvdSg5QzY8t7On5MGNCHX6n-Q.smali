.class public final synthetic Lcom/popupnewvideoplayer/floatingpro/musicfree/do/-$$Lambda$PlayToDownload$bCtvdSg5QzY8t7On5MGNCHX6n-Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/k;


# direct methods
.method public synthetic constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/-$$Lambda$PlayToDownload$bCtvdSg5QzY8t7On5MGNCHX6n-Q;->f$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/k;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/-$$Lambda$PlayToDownload$bCtvdSg5QzY8t7On5MGNCHX6n-Q;->f$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/k;

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/k;->lambda$loadData$0$PlayToDownload(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method
