.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7$1;
.super Ljava/lang/Object;
.source "e.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7;Ljava/lang/String;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 798
    :try_start_0
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7$1;->val$data:Ljava/lang/String;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7;

    iget-object v1, v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7;->val$country_code:Ljava/lang/String;

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7;

    iget-object v2, v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7$1$1;

    invoke-direct {v3, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7$1$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/TopChartsUtil;->parseTopChartsData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/b/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 805
    :catch_0
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;->access$1100(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;)V

    :goto_0
    return-void
.end method
