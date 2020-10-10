.class Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity$3;
.super Ljava/lang/Object;
.source "SubscriptionOneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity;

    .line 52
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;->getInstance(Landroid/content/Context;)Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;

    move-result-object v0

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity;

    invoke-virtual {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;->buySubscriptionTwo(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity;

    const-class v3, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity;

    invoke-virtual {v2, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method
