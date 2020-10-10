.class final Lcom/popupnewvideoplayer/floatingpro/musicfree/e/d$2;
.super Ljava/lang/Object;
.source "d.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/e/d;->createAddDialog(Landroid/app/Activity;Lcom/popupnewvideoplayer/floatingpro/musicfree/e/e;)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic val$iDialogInterface:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/e;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertDialog;Lcom/popupnewvideoplayer/floatingpro/musicfree/e/e;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/d$2;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/d$2;->val$iDialogInterface:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/d$2;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 57
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/d$2;->val$iDialogInterface:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/e;

    invoke-interface {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/e;->OnNegativeClick()V

    return-void
.end method
