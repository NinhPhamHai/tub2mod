.class Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay$1;
.super Ljava/lang/Object;
.source "LockPlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;)Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 152
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;)Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    move-result-object p1

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->isFavoriteVideo(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;)Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    move-result-object p1

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->deleteFromFavorite(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    .line 154
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;->btnFavourite:Landroid/widget/ImageView;

    const v0, 0x7f08021e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;)Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    move-result-object p1

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->saveToFavorite(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    .line 157
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;->btnFavourite:Landroid/widget/ImageView;

    const v0, 0x7f08021a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method
