.class Lcom/popupnewvideoplayer/floatingpro/musicfree/e/a$1;
.super Ljava/lang/Object;
.source "a.java"

# interfaces
.implements Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/a$FolderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/e/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/a;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/e/a;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/a$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/a$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/a;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/a;->mMusicBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-static {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->saveToFolder(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;)V

    .line 66
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/a$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/a;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
