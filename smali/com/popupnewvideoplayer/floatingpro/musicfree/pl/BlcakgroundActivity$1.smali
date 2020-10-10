.class Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/BlcakgroundActivity$1;
.super Ljava/lang/Object;
.source "BlcakgroundActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/BlcakgroundActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/BlcakgroundActivity;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/BlcakgroundActivity;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/BlcakgroundActivity$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/BlcakgroundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/BlcakgroundActivity$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/BlcakgroundActivity;

    new-instance p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/b/l;

    invoke-direct {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/b/l;-><init>()V

    invoke-virtual {p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/BlcakgroundActivity;->closePower(Lcom/popupnewvideoplayer/floatingpro/musicfree/b/l;)V

    const/4 p1, 0x0

    return p1
.end method
