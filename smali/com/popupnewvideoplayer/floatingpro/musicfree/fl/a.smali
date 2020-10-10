.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;
.super Landroid/app/Activity;
.source "a.java"


# instance fields
.field private firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

#.field private firebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public checkVip()V
    .registers 4

    .line 119
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->getInstance()Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;

    move-result-object v0

    const-string v1, "vip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->get(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 120
    .local v0, "vip":I
    if-nez v0, :cond_23

    .line 121
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    const v2, 0x4008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;->startActivity(Landroid/content/Intent;)V

    .line 125
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_26

    .line 126
    :cond_23
    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;->openMain()V

    .line 128
    :goto_26
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 127
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 34
    const v0, 0x7f0c011c

    invoke-virtual {p0, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;->setContentView(I)V

    .line 38
    const v0, 0x7f090306

    invoke-virtual {p0, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 39
    .local v0, "tvPolicy":Landroid/widget/ImageView;
    const v1, 0x7f090303

    invoke-virtual {p0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 40
    .local v1, "tvAgree":Landroid/widget/ImageView;
    new-instance v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a$1;

    invoke-direct {v2, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->getInstance()Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->initSharePreferencesHelper(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;->getInstance(Landroid/content/Context;)Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;->initializeInapp()V

    .line 48
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->getInstance()Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "isFirst"

    invoke-virtual {v2, v4, v4, v3}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->get(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 49
    .local v2, "show":I
    if-nez v2, :cond_0

    .line 50
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    new-instance v3, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a$2;

    invoke-direct {v3, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a$2;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 59
    :cond_0
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 64
    .local v3, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a$3;

    invoke-direct {v4, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a$3;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    .end local v3    # "handler":Landroid/os/Handler;
    :goto_0
	
    #:try_start_0
    #invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    #move-result-object v3

    #iput-object v3, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;->firebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    #.line 73
    #new-instance v3, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    #invoke-direct {v3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;-><init>()V

    #const-wide/16 v4, 0xe10

    #.line 74
    #invoke-virtual {v3, v4, v5}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->setMinimumFetchIntervalInSeconds(J)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    #move-result-object v3

    #.line 75
    #invoke-virtual {v3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->build()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    #move-result-object v3

    #.line 76
    #.local v3, "settings":Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;
    #iget-object v4, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;->firebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    #invoke-virtual {v4, v3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setConfigSettingsAsync(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)Lcom/google/android/gms/tasks/Task;

    #.line 77
    #iget-object v4, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;->firebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    #const v5, 0x7f140013

    #invoke-virtual {v4, v5}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setDefaultsAsync(I)Lcom/google/android/gms/tasks/Task;

    #.line 78
    #iget-object v4, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;->firebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    #invoke-virtual {v4}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetchAndActivate()Lcom/google/android/gms/tasks/Task;

    #.line 79
    #invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    #move-result-object v4

    #iput-object v4, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;
    #:try_end_0
    #.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #.line 82
    #.end local v3    # "settings":Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;
    #goto :goto_1

    #.line 80
    #:catch_0
    #move-exception v3

    .line 83
    #:goto_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 131
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 132
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;->getInstance()Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-virtual {v0, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;->checkPermission([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;->getInstance()Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    aput-object v3, v1, v4

    aput-object v5, v1, v6

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;->requestPermission([Ljava/lang/String;I)V

    .line 137
    :cond_0
    return-void
.end method

.method public openMain()V
    .locals 2

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    const v1, 0x4008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;->startActivity(Landroid/content/Intent;)V

    .line 122
    return-void
.end method

.method public openPolicy()V
    .locals 0

    .line 86
    invoke-static {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/Utils;->openPolicy(Landroid/content/Context;)V

    .line 87
    return-void
.end method
