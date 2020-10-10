.class Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay$5;
.super Ljava/lang/Object;
.source "LockPlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;->initPopWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay$5;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 607
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay$5;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/a;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
