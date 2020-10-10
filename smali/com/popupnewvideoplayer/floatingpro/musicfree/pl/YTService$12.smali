.class Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService$12;
.super Ljava/lang/Object;
.source "YTService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;->showWarningDialog()V
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

    .line 913
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService$12;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 916
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService$12;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;

    iget-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;->mWindowManager:Landroid/view/WindowManager;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;->mWarningDialog:Landroid/widget/RelativeLayout;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method
