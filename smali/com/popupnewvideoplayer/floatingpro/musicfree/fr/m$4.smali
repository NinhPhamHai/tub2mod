.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$4;
.super Ljava/lang/Object;
.source "m.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->loadingErrorPrompt(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f110207

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 394
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->mm:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->mm:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    sget-object v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->FAILED:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    invoke-virtual {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->setLoadingSate(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;)V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 402
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
