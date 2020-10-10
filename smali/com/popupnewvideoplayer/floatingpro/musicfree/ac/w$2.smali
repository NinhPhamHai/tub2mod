.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$2;
.super Ljava/lang/Object;
.source "w.java"

# interfaces
.implements Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->loadAdS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;)V

    :cond_0
    return-void
.end method

.method public success()V
    .locals 8

    .line 95
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->mAppBackground:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->mTopLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->mTvTimeCount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->mAdContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;

    iget-object v3, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->mAdContainer:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->access$200(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->mTvTimeCount:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;

    new-instance v7, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$2$1;

    const-wide/16 v3, 0x1770

    const-wide/16 v5, 0x3e8

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$2$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$2;JJ)V

    .line 127
    invoke-virtual {v7}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v1

    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->mCountDownTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method
