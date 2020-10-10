.class Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "b_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b_ViewBinding;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b_ViewBinding;

.field final synthetic val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b_ViewBinding;Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b_ViewBinding$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b_ViewBinding;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b_ViewBinding$1;->val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b_ViewBinding$1;->val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->onMLlPlayNowClicked()V

    return-void
.end method
