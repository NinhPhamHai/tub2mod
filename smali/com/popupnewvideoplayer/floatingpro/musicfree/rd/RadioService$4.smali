.class Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService$4;
.super Ljava/lang/Object;
.source "RadioService.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService;->loadImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService;

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

    .line 305
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    .line 307
    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/BitmapUtil;->decodeFile(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 308
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService;

    iget-object p2, p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService;->mNSmallView:Landroid/widget/RemoteViews;

    const v0, 0x7f09010d

    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 309
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 p2, 0x38d

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p1, p2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 312
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
