.class Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b$2;
.super Ljava/lang/Object;
.source "b.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    add-int/lit8 p2, p2, 0x1

    .line 299
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p3, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b;

    const v0, 0x7f1100c7

    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 300
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b;->access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
