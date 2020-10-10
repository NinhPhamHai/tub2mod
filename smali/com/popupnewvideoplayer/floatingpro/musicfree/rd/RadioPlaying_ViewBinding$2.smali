.class Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "RadioPlaying_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying_ViewBinding;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying_ViewBinding;

.field final synthetic val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying_ViewBinding;Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying_ViewBinding$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying_ViewBinding;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying_ViewBinding$2;->val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying_ViewBinding$2;->val$target:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying;

    invoke-virtual {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
