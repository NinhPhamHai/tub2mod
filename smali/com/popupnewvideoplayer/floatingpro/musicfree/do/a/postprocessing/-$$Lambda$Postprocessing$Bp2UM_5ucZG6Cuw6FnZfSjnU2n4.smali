.class public final synthetic Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/postprocessing/-$$Lambda$Postprocessing$Bp2UM_5ucZG6Cuw6FnZfSjnU2n4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/CircularFileWriter$OffsetChecker;


# instance fields
.field private final synthetic f$0:[Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/ChunkFileInputStream;


# direct methods
.method public synthetic constructor <init>([Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/ChunkFileInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/postprocessing/-$$Lambda$Postprocessing$Bp2UM_5ucZG6Cuw6FnZfSjnU2n4;->f$0:[Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/ChunkFileInputStream;

    return-void
.end method


# virtual methods
.method public final check()J
    .locals 2

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/postprocessing/-$$Lambda$Postprocessing$Bp2UM_5ucZG6Cuw6FnZfSjnU2n4;->f$0:[Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/ChunkFileInputStream;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/postprocessing/Postprocessing;->lambda$run$0([Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/ChunkFileInputStream;)J

    move-result-wide v0

    return-wide v0
.end method
