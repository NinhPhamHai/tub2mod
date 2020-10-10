.class Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity$2;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 213
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;->mVideo:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    if-eqz p1, :cond_1

    .line 214
    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->isFavoriteVideo(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 215
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;->mVideo:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->deleteFromFavorite(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    .line 216
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;->mBtnFavourite:Landroid/widget/ImageView;

    const v0, 0x7f08021e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;->mVideo:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->saveToFavorite(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    .line 219
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;->mBtnFavourite:Landroid/widget/ImageView;

    const v0, 0x7f08021a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method
