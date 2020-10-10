.class Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity$2;
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

    .line 39
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 42
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity;

    const-class v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity;

    invoke-virtual {v1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionOneActivity;->startActivity(Landroid/content/Intent;)V

    .line 44
    return-void
.end method
