.class Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$2;
.super Ljava/lang/Object;
.source "h.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;->createAddDialog()Landroidx/appcompat/app/AlertDialog;
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

    .line 68
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 72
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;->switchCompat:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/notification/SleepService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;->seekBar:Lcom/popupnewvideoplayer/floatingpro/musicfree/v/CircularSeekBar;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/v/CircularSeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x3c

    const-string v1, "sleep_time"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 78
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;->access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;->access$200(Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 83
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/notification/SleepService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    :goto_0
    return-void
.end method
