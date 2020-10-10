.class Lcom/popupnewvideoplayer/floatingpro/musicfree/a$1;
.super Ljava/lang/Object;
.source "a.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/a;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/a;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/popupnewvideoplayer/floatingpro/musicfree/a;

    .line 15
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/a$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/a$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/a;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/a;->finish()V

    .line 19
    return-void
.end method
