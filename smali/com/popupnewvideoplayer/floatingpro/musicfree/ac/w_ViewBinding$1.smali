.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "w_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w_ViewBinding;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w_ViewBinding;

.field final synthetic val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w_ViewBinding;Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w_ViewBinding$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w_ViewBinding;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w_ViewBinding$1;->val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w_ViewBinding$1;->val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->onViewClicked()V

    return-void
.end method
