.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "g_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g_ViewBinding;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g_ViewBinding;

.field final synthetic val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g_ViewBinding;Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g_ViewBinding$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g_ViewBinding;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g_ViewBinding$2;->val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g_ViewBinding$2;->val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g;

    invoke-virtual {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g;->onClick(Landroid/view/View;)V

    const/4 p1, 0x0

    throw p1
.end method
