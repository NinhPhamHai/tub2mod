.class Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a$1;
.super Ljava/lang/Object;
.source "a.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a;)V

    .line 48
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
