.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$SimpleHolder$1;
.super Ljava/lang/Object;
.source "e.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$SimpleHolder;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$SimpleHolder;

.field final synthetic val$this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$SimpleHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$SimpleHolder$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$SimpleHolder;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$SimpleHolder$1;->val$this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 631
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$SimpleHolder$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$SimpleHolder;

    iget-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$SimpleHolder;->itemName:Ljava/lang/String;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$SimpleHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k;->actionStart(Ljava/lang/String;Landroid/content/Context;)V

    const/16 p1, 0x3c

    .line 633
    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 634
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$SimpleHolder$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$SimpleHolder;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$SimpleHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->getInstance(Landroid/app/Activity;)Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->showInterstitialNow()Z

    :cond_0
    return-void
.end method
