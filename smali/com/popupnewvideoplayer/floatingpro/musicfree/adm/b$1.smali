.class Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "b.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 0

    return-void
.end method

.method public onAdClosed()V
    .locals 3

    .line 60
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/b/b;

    sget-object v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/b/b$AdStatus;->DISMISS:Lcom/popupnewvideoplayer/floatingpro/musicfree/b/b$AdStatus;

    invoke-direct {v1, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/b/b;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/b/b$AdStatus;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 61
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->access$100()Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 1

    .line 41
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->access$002(Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;Z)Z

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public onAdLoaded()V
    .locals 0

    return-void
.end method

.method public onAdOpened()V
    .locals 3

    .line 46
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/b/b;

    sget-object v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/b/b$AdStatus;->DISPLAY:Lcom/popupnewvideoplayer/floatingpro/musicfree/b/b$AdStatus;

    invoke-direct {v1, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/b/b;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/b/b$AdStatus;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->lastShowAdTimeStamp:J

    return-void
.end method
