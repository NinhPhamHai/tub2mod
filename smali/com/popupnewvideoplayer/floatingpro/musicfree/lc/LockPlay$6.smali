.class Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay$6;
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

    .line 610
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay$6;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 613
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay$6;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->setLockStatus(Landroid/content/Context;Z)V

    .line 614
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay$6;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
