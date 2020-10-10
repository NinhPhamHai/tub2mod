.class Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3$1;
.super Ljava/lang/Object;
.source "h.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 131
    sget v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/notification/SleepService;->remainingSeconds:I

    if-gtz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;->access$200(Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;->access$200(Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;->switchCompat:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 136
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;

    iget-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;->time_text:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 141
    sget v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/notification/SleepService;->remainingSeconds:I

    invoke-static {v0, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;->access$300(Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
