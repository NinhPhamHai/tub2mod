.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k$6$1;
.super Ljava/lang/Object;
.source "k.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k$6;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k$6;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k$6;Ljava/lang/String;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k$6$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k$6;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k$6$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 411
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k$6$1;->val$data:Ljava/lang/String;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k$6$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k$6;

    iget-object v2, v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k$6;->val$country_code:Ljava/lang/String;

    iget-object v1, v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k$6;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k;

    new-instance v3, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k$6$1$1;

    invoke-direct {v3, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k$6$1$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/k$6$1;)V

    invoke-static {v0, v2, v1, v3}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/TopChartsUtil;->parseTopChartsData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/a;)V

    return-void
.end method
