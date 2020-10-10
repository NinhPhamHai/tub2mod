.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CuratedItemHolder"
.end annotation


# instance fields
.field listener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;

.field mCover:Landroid/widget/ImageView;

.field mDescription:Landroid/widget/TextView;

.field me:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;

.field mTitle:Landroid/widget/TextView;

.field root:Landroid/view/View;

.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r;


# direct methods
.method public constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r;Landroid/view/View;Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;Landroid/content/Context;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r;

    .line 65
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p4, 0x7f090111

    .line 66
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;->mCover:Landroid/widget/ImageView;

    const p4, 0x7f090294

    .line 67
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;->mTitle:Landroid/widget/TextView;

    const p4, 0x7f090090

    .line 68
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;->mDescription:Landroid/widget/TextView;

    const p4, 0x7f090057

    .line 69
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;->root:Landroid/view/View;

    .line 71
    iput-object p3, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;->listener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;

    .line 73
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;->root:Landroid/view/View;

    new-instance p4, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder$1;

    invoke-direct {p4, p0, p1, p3}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r;Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;)V
    .locals 2

    .line 84
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;->me:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;

    .line 86
    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;->me:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;->getThumbnail()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    const-string v0, ".png"

    const-string v1, ".webp"

    .line 98
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/r$CuratedItemHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/ImageUtil;->loadImageFromAsset(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method
