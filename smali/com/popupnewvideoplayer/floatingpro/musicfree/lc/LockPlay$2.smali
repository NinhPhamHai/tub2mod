.class Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay$2;
.super Ljava/lang/Object;
.source "LockPlay.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 171
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;->durationStart:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/Utils;->formatDuration(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;

    iget-boolean v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;->mBound:Z

    if-eqz v1, :cond_0

    .line 183
    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;->durationStart:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/Utils;->formatDuration(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;->mYTService:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;->getWebPlayer()Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/WebPlayer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/JavaScript;->seekTo(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/WebPlayer;->loadJS(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
