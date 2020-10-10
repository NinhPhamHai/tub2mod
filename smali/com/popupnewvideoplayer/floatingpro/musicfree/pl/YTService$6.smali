.class Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService$6;
.super Ljava/lang/Object;
.source "YTService.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    .line 388
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService$6;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService$6;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;->mSmallContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 392
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService$6;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->getSmallPlayerSize(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;->access$300(Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;I)V

    return-void
.end method
