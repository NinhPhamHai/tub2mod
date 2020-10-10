.class Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService$3;
.super Ljava/lang/Object;
.source "YTService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;->initWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 366
    sget-object p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;->mWebPlayer:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/WebPlayer;

    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/JavaScript;->pauseVideo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/WebPlayer;->loadJS(Ljava/lang/String;)V

    .line 367
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;)V

    return-void
.end method
