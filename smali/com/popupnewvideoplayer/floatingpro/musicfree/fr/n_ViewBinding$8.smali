.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n_ViewBinding$8;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "n_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n_ViewBinding;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n_ViewBinding;

.field final synthetic val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n_ViewBinding;Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n_ViewBinding$8;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n_ViewBinding;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n_ViewBinding$8;->val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 115
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n_ViewBinding$8;->val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->onDownload()V

    return-void
.end method
