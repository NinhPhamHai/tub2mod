.class Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "d.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d;->load(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;ILcom/popupnewvideoplayer/floatingpro/musicfree/adm/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$listener:Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/g;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d;Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/g;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d$1;->val$listener:Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/g;

    iput-object p3, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d$1;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    .line 63
    sget-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/a;->AD_NATIVE_SPLASH:Ljava/lang/String;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d$1;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/h;->getLogger(Landroid/content/Context;)Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/h;->SetNative_Click()V

    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d$1;->val$listener:Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/g;

    invoke-interface {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/g;->failed()V

    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 56
    sget-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/a;->AD_NATIVE_SPLASH:Ljava/lang/String;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d$1;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/h;->getLogger(Landroid/content/Context;)Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/h;->SetNative_Impression()V

    :cond_0
    return-void
.end method
