.class public final synthetic Lcom/popupnewvideoplayer/floatingpro/musicfree/do/c/-$$Lambda$StreamItemAdapter$StreamSizeWrapper$E5LIp1ecLiLkRswb4nDt1Z607t0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/c/StreamItemAdapter$StreamSizeWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/c/StreamItemAdapter$StreamSizeWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/c/-$$Lambda$StreamItemAdapter$StreamSizeWrapper$E5LIp1ecLiLkRswb4nDt1Z607t0;->f$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/c/StreamItemAdapter$StreamSizeWrapper;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/c/-$$Lambda$StreamItemAdapter$StreamSizeWrapper$E5LIp1ecLiLkRswb4nDt1Z607t0;->f$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/c/StreamItemAdapter$StreamSizeWrapper;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/c/StreamItemAdapter$StreamSizeWrapper;->lambda$fetchSizeForWrapper$0(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/c/StreamItemAdapter$StreamSizeWrapper;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
