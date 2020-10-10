.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d$2;
.super Ljava/lang/Object;
.source "d.java"

# interfaces
.implements Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/e$IFolderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->loadAllData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;)V
    .locals 2

    .line 183
    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;->getDb_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "artist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;-><init>()V

    .line 186
    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;->getFolder_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;->setTitle(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;->getUnique_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;->setId(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;->getThumbnail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;->setThumbnail(Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->actionStart(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;Landroid/content/Context;)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;->getFolder_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FOLDER_TYPE_USER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/d;->actionStart(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/t;->actionStart(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;)V

    :goto_0
    return-void
.end method
