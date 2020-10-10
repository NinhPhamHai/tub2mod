.class Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity$3;
.super Ljava/lang/Object;
.source "SubscriptionTwoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;

.field final synthetic val$vip:I


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;

    .line 68
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;

    iput p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity$3;->val$vip:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 71
    iget v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity$3;->val$vip:I

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;->buySuccess()V

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;->buySuccess()V

    .line 80
    :goto_0
    return-void
.end method
