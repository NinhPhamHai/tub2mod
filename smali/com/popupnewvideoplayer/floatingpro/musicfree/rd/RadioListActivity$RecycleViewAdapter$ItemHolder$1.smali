.class Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder$1;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;

.field final synthetic val$this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder$1;->this$2:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder$1;->val$this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 341
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder$1;->this$2:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder$1;->this$2:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;->musicBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-static {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying;->actionStart(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    const/16 p1, 0x3c

    .line 343
    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 344
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder$1;->this$2:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->getInstance(Landroid/app/Activity;)Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->showInterstitial()Z

    :cond_0
    return-void
.end method
