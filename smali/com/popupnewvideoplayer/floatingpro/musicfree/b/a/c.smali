.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/b/a/c;
.super Ljava/lang/Object;
.source "c.java"


# instance fields
.field mVideo:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;


# direct methods
.method public constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/b/a/c;->mVideo:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    return-void
.end method


# virtual methods
.method public getVideo()Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/b/a/c;->mVideo:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    return-object v0
.end method
