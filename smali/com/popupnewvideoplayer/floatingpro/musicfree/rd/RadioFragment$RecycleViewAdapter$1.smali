.class Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment$RecycleViewAdapter$1;
.super Ljava/lang/Object;
.source "RadioFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment$RecycleViewAdapter;->onBindViewHolder(Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment$RecycleViewAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment$RecycleViewAdapter;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment$RecycleViewAdapter;Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment$RecycleViewAdapter$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment$RecycleViewAdapter;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment$RecycleViewAdapter$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 250
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment$RecycleViewAdapter$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment$RecycleViewAdapter;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment$RecycleViewAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment$RecycleViewAdapter$1;->val$text:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/16 p1, 0x3c

    .line 252
    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment$RecycleViewAdapter$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment$RecycleViewAdapter;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment$RecycleViewAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->getInstance(Landroid/app/Activity;)Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->showInterstitial()Z

    :cond_0
    return-void
.end method
