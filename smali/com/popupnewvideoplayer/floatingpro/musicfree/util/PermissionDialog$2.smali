.class Lcom/popupnewvideoplayer/floatingpro/musicfree/util/PermissionDialog$2;
.super Ljava/lang/Object;
.source "PermissionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/util/PermissionDialog;->createAddDialog()Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/util/PermissionDialog;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/util/PermissionDialog;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/PermissionDialog$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/util/PermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/PermissionDialog$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/util/PermissionDialog;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/PermissionDialog;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/util/PermissionDialog$Listener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 90
    invoke-interface {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/PermissionDialog$Listener;->onButtonClick(Z)V

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/PermissionDialog$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/util/PermissionDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
