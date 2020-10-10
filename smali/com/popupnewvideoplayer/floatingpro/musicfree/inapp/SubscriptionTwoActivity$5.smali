.class Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity$5;
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


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;

    .line 92
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity$5;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity$5;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;->getInstance(Landroid/content/Context;)Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;

    move-result-object v0

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity$5;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;

    invoke-virtual {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/InappObject;->buySubcription(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 99
    :goto_0
    return-void
.end method
