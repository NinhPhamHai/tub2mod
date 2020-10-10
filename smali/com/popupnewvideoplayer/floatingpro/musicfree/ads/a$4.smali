.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a$4;
.super Ljava/lang/Object;
.source "a.java"

# interfaces
.implements Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;->initializeNativeAdmob()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;

    .line 68
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnifiedNativeAdLoaded(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .locals 3
    .param p1, "unifiedNativeAd"    # Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    .line 71
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;->access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c012b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    .line 74
    .local v0, "unifiedNativeAdView":Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;

    invoke-static {v1, p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;->access$200(Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;Lcom/google/android/gms/ads/formats/UnifiedNativeAd;Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;)V

    .line 75
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;

    const v2, 0x7f0902f1

    invoke-virtual {v1, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 76
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 77
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 78
    return-void
.end method
