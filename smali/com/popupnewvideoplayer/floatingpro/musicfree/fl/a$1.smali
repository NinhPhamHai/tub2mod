.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a$1;
.super Ljava/lang/Object;
.source "a.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;

    .line 40
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fl/a;->openPolicy()V

    .line 44
    return-void
.end method
