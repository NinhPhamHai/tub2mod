.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$4;
.super Ljava/lang/Object;
.source "h.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->requestArtist(Ljava/lang/String;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;

.field final synthetic val$artistBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;

.field final synthetic val$country_code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;Ljava/lang/String;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$4;->val$country_code:Ljava/lang/String;

    iput-object p3, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$4;->val$artistBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 247
    :try_start_0
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$4;->val$country_code:Ljava/lang/String;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$4;->val$artistBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/TopChartsUtil;->parseArtistData(Ljava/lang/String;Ljava/lang/String;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/ArtistBean;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;->mMusicBeanList:Ljava/util/List;

    .line 249
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;

    new-instance p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$4$1;

    invoke-direct {p2, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$4$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$4;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h;

    new-instance p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$4$2;

    invoke-direct {p2, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$4$2;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/h$4;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
