.class Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying$4$1$1;
.super Ljava/lang/Object;
.source "RadioPlaying.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying$4$1;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying$4$1;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying$4$1$1;->this$2:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying$4$1$1;->this$2:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying$4$1;

    iget-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying$4$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying$4;

    iget-object v1, v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying;

    iget-object v1, v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying;->llBg:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying$4$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
