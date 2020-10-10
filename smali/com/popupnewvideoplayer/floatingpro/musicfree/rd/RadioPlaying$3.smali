.class Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying$3;
.super Ljava/lang/Object;
.source "RadioPlaying.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying;->setToolbar(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 243
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioPlaying;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
