.class Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3;
.super Ljava/util/TimerTask;
.source "h.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;->startUpdateTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3$1;

    invoke-direct {v1, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
