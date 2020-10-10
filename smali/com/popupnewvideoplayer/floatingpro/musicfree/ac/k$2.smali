.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k$2;
.super Ljava/lang/Object;
.source "k.java"

# interfaces
.implements Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k;

    invoke-static {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->actionStart(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;Landroid/content/Context;)V

    const/16 p1, 0x3c

    .line 148
    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->getInstance(Landroid/app/Activity;)Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/b;->showInterstitial()Z

    :cond_0
    return-void
.end method
