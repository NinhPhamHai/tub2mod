.class Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "PlayActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity_ViewBinding;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity_ViewBinding;

.field final synthetic val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity_ViewBinding;Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity_ViewBinding$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity_ViewBinding;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity_ViewBinding$2;->val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity_ViewBinding$2;->val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/PlayActivity;->onDownloadClick()V

    return-void
.end method
