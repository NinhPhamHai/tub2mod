.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f$2;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "f.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
