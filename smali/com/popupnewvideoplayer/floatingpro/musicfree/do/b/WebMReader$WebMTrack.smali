.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$WebMTrack;
.super Ljava/lang/Object;
.source "WebMReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebMTrack"
.end annotation


# instance fields
.field public bMetadata:[B

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public defaultDuration:J

.field public kind:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$TrackKind;

.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;

.field public trackNumber:J

.field protected trackType:I


# direct methods
.method public constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader$WebMTrack;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b/WebMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
