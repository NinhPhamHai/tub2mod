.class Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity$7;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;->initRecyclerView()V
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

    .line 643
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity$7;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V
    .locals 1

    .line 646
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;->access$008()I

    .line 647
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;->access$000()I

    move-result v0

    rem-int/lit8 v0, v0, 0x6

    if-nez v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity$7;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->getInstance(Landroid/app/Activity;)Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->showInterstitialNow()Z

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity$7;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;

    invoke-static {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;->start(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    return-void
.end method

.method public onLovedClick(ZLcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V
    .locals 0

    return-void
.end method

.method public onMoreItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V
    .locals 2

    .line 666
    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c;->newInstance(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c;

    move-result-object p1

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity$7;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
