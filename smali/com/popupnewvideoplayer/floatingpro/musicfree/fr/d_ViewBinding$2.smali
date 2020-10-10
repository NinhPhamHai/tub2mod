.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "d_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d_ViewBinding;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d_ViewBinding;

.field final synthetic val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d_ViewBinding;Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d_ViewBinding$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d_ViewBinding;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d_ViewBinding$2;->val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d_ViewBinding$2;->val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->OnMyFavorite()V

    return-void
.end method
