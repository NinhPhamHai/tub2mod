.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$1;
.super Landroid/os/Handler;
.source "w.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;)V

    :goto_0
    return-void
.end method
