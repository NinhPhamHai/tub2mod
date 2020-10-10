.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$SimpleBlock;
.super Ljava/lang/Object;
.source "WebMReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleBlock"
.end annotation


# instance fields
.field public data:Ljava/io/InputStream;

.field public dataSize:J

.field public flags:B

.field private final ref:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Element;

.field public relativeTimeCode:S

.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;

.field public trackNumber:J


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Element;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$SimpleBlock;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$SimpleBlock;->ref:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Element;

    return-void
.end method

.method static synthetic access$800(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$SimpleBlock;)Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Element;
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$SimpleBlock;->ref:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$Element;

    return-object p0
.end method
