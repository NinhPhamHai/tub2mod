.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7;
.super Ljava/lang/Object;
.source "e.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;->reqCountry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

.field final synthetic val$country_code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;Ljava/lang/String;)V
    .locals 0

    .line 781
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7;->val$country_code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 790
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 792
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 793
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7$1;

    invoke-direct {v0, p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$7;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
