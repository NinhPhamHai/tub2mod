.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "r_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r_ViewBinding;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r_ViewBinding;

.field final synthetic val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r_ViewBinding;Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r_ViewBinding$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r_ViewBinding;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r_ViewBinding$1;->val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r_ViewBinding$1;->val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->onViewClicked()V

    return-void
.end method
