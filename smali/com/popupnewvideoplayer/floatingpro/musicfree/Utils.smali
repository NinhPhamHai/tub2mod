.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkInternet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 18
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 19
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static openPolicy(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 13
    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://sites.google.com/view/privacypolicyforplaytubepop-up/home"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 14
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 15
    return-void
.end method

.method public static openSub(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 23
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->getInstance()Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;

    move-result-object v0

    const-string v1, "vip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->get(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 24
    .local v0, "vip":I
    if-nez v0, :cond_0

    .line 25
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 27
    return-void

    .line 29
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v2, "openSub: vip"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method
