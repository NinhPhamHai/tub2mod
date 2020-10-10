.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n$7;
.super Ljava/lang/Object;
.source "n.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->onSelectSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n$7;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z
    .locals 0

    const/16 p1, 0x2c00

    const/4 p2, 0x1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-ne p3, p2, :cond_1

    const p1, 0x2716e

    goto :goto_0

    :cond_1
    const/4 p4, 0x2

    if-ne p3, p4, :cond_2

    const p1, 0x334e0

    goto :goto_0

    :cond_2
    const/4 p4, 0x3

    if-ne p3, p4, :cond_3

    const p1, 0x3f852

    .line 294
    :cond_3
    :goto_0
    iget-object p3, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n$7;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->saveSmallPlayerSize(Landroid/content/Context;I)V

    .line 295
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p3

    new-instance p4, Lcom/popupnewvideoplayer/floatingpro/musicfree/b/k;

    invoke-direct {p4, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/b/k;-><init>(I)V

    invoke-virtual {p3, p4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return p2
.end method
