.class Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject$1;
.super Ljava/lang/Object;
.source "InappObject.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;->initializeInapp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;

    .line 59
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 0

    .line 89
    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 7
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;

    .line 62
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;)V

    .line 63
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;->access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    const-string v1, "subs"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object v0

    .line 64
    .local v0, "purchasesResult":Lcom/android/billingclient/api/Purchase$PurchasesResult;
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->getInstance()Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "vip"

    invoke-virtual {v1, v3, v3, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->put(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 66
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/Purchase;

    .line 67
    .local v4, "purchase":Lcom/android/billingclient/api/Purchase;
    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    iget-object v5, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;

    invoke-static {v5, v4}, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;->access$200(Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;Lcom/android/billingclient/api/Purchase;)V

    .line 72
    .end local v4    # "purchase":Lcom/android/billingclient/api/Purchase;
    :goto_1
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/Purchase;

    .line 74
    .restart local v4    # "purchase":Lcom/android/billingclient/api/Purchase;
    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->getSku()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;

    invoke-static {v6}, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;->access$300(Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->getSku()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;

    invoke-static {v6}, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;->access$400(Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 75
    :cond_2
    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 76
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->getInstance()Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;

    move-result-object v5

    invoke-virtual {v5, v3, v3, v6}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->put(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 78
    :cond_3
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->getInstance()Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;

    move-result-object v5

    invoke-virtual {v5, v3, v3, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->put(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    .end local v4    # "purchase":Lcom/android/billingclient/api/Purchase;
    :goto_3
    goto :goto_2

    :cond_4
    goto :goto_4

    .line 82
    :cond_5
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->getInstance()Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->put(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    :goto_4
    return-void
.end method
