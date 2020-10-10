.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;
.super Landroid/app/Dialog;
.source "a.java"


# instance fields
.field private prgLoading:Landroid/widget/ProgressBar;

.field private tvLoading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    const v0, 0x7f120287

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;->setCancelable(Z)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;

    .line 28
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;->tvLoading:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;

    .line 28
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;->prgLoading:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;Lcom/google/android/gms/ads/formats/UnifiedNativeAd;Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;)V
    .locals 0
    .param p0, "x0"    # Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;
    .param p1, "x1"    # Lcom/google/android/gms/ads/formats/UnifiedNativeAd;
    .param p2, "x2"    # Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;->initFiedNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;)V

    return-void
.end method

.method static synthetic access$301(Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;)V
    .locals 0
    .param p0, "x0"    # Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;

    .line 28
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private initFiedNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;)V
    .locals 12
    .param p1, "unifiedNativeAd"    # Lcom/google/android/gms/ads/formats/UnifiedNativeAd;
    .param p2, "unifiedNativeAdView"    # Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    .line 96
    const v0, 0x7f0902f7

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/MediaView;

    .line 97
    .local v0, "mediaView":Lcom/google/android/gms/ads/formats/MediaView;
    const v1, 0x7f0902f6

    invoke-virtual {p2, v1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 98
    .local v1, "imgIcon":Landroid/widget/ImageView;
    const v2, 0x7f090301

    invoke-virtual {p2, v2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 99
    .local v2, "tvHeader":Landroid/widget/TextView;
    const v3, 0x7f090300

    invoke-virtual {p2, v3}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 100
    .local v3, "tvContent":Landroid/widget/TextView;
    const v4, 0x7f090302

    invoke-virtual {p2, v4}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 101
    .local v4, "tvBody":Landroid/widget/TextView;
    const v5, 0x7f090307

    invoke-virtual {p2, v5}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 102
    .local v5, "tvPrice":Landroid/widget/TextView;
    const v6, 0x7f090309

    invoke-virtual {p2, v6}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 103
    .local v6, "tvStore":Landroid/widget/TextView;
    const v7, 0x7f0902f0

    invoke-virtual {p2, v7}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 104
    .local v7, "btnCta":Landroid/widget/Button;
    const v8, 0x7f0902f9

    invoke-virtual {p2, v8}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RatingBar;

    .line 106
    .local v8, "ratingBar":Landroid/widget/RatingBar;
    invoke-virtual {p2, v2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setHeadlineView(Landroid/view/View;)V

    .line 107
    invoke-virtual {p2, v4}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setBodyView(Landroid/view/View;)V

    .line 108
    invoke-virtual {p2, v7}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setCallToActionView(Landroid/view/View;)V

    .line 109
    invoke-virtual {p2, v1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setIconView(Landroid/view/View;)V

    .line 110
    invoke-virtual {p2, v5}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setPriceView(Landroid/view/View;)V

    .line 111
    invoke-virtual {p2, v6}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setStoreView(Landroid/view/View;)V

    .line 112
    invoke-virtual {p2, v3}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setAdvertiserView(Landroid/view/View;)V

    .line 113
    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setMediaView(Lcom/google/android/gms/ads/formats/MediaView;)V

    .line 114
    invoke-virtual {p2, v8}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setStarRatingView(Landroid/view/View;)V

    .line 116
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x8

    if-nez v9, :cond_0

    .line 117
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getHeadlineView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getHeadlineView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getBody()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    .line 122
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getBodyView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getBodyView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getBody()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v9

    if-nez v9, :cond_2

    .line 128
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getIconView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 130
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getIconView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    .line 134
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getAdvertiserView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 136
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getAdvertiserView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getPrice()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    .line 140
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getPriceView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 142
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getPriceView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getPrice()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :goto_4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getStore()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    .line 146
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getStoreView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 148
    :cond_5
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getStoreView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getStore()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6

    .line 152
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getCallToActionView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 154
    :cond_6
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getCallToActionView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :goto_6
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v9

    if-nez v9, :cond_7

    .line 158
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getStarRatingView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 160
    :cond_7
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getStarRatingView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RatingBar;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->floatValue()F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/RatingBar;->setRating(F)V

    .line 163
    :goto_7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    .line 164
    return-void
.end method


# virtual methods
.method public initializeNativeAdmob()V
    .locals 4

    .line 64
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->getInstance()Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;

    move-result-object v0

    const-string v1, "vip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->get(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 65
    .local v0, "vip":I
    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/Utils;->checkInternet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    if-nez v0, :cond_1

    .line 67
    new-instance v1, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ca-app-pub-"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a$4;

    invoke-direct {v2, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a$4;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;)V

    .line 68
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;->forUnifiedNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v1

    new-instance v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a$3;

    invoke-direct {v2, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a$3;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;)V

    .line 80
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v1

    .line 88
    .local v1, "adLoader":Lcom/google/android/gms/ads/AdLoader;
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 89
    .end local v1    # "adLoader":Lcom/google/android/gms/ads/AdLoader;
    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;->dismiss()V

    .line 93
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0c011f

    invoke-virtual {p0, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;->setContentView(I)V

    .line 43
    const v0, 0x7f0902f8

    invoke-virtual {p0, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;->prgLoading:Landroid/widget/ProgressBar;

    .line 44
    const v0, 0x7f090305

    invoke-virtual {p0, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;->tvLoading:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0902f5

    invoke-virtual {p0, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 46
    .local v0, "imgClose":Landroid/widget/ImageView;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 47
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a$1;

    invoke-direct {v2, p0, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;Landroid/widget/ImageView;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    new-instance v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a$2;

    invoke-direct {v2, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a$2;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;->initializeNativeAdmob()V

    .line 61
    return-void
.end method

.method public show()V
    .locals 3

    .line 168
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->getInstance()Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;

    move-result-object v0

    const-string v1, "vip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->get(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 169
    .local v0, "vip":I
    if-nez v0, :cond_0

    .line 170
    invoke-static {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;->access$301(Lcom/popupnewvideoplayer/floatingpro/musicfree/ads/a;)V

    .line 172
    :cond_0
    return-void
.end method
