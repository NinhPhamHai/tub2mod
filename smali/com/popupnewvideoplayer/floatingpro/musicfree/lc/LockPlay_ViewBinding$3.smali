.class Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "LockPlay_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay_ViewBinding;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay_ViewBinding;

.field final synthetic val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay_ViewBinding;Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay_ViewBinding$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay_ViewBinding;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay_ViewBinding$3;->val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay_ViewBinding$3;->val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/lc/LockPlay;->onBtnPreviousClicked()V

    return-void
.end method
