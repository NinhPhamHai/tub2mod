.class Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity$1;
.super Ljava/lang/Object;
.source "SubscriptionTwoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;

    .line 42
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/inapp/SubscriptionTwoActivity$1;->val$imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    return-void
.end method
