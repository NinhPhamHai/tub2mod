.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "d.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemHolder"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field me:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;

.field mIvCover:Landroid/widget/ImageView;

.field mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;

.field mTvTitle:Landroid/widget/TextView;

.field root:Landroid/view/View;

.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d;


# direct methods
.method public constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d;Landroid/view/View;Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;Landroid/content/Context;)V
    .locals 1

    .line 92
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d;

    .line 93
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090111

    .line 94
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;->mIvCover:Landroid/widget/ImageView;

    const v0, 0x7f0902c8

    .line 95
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;->mTvTitle:Landroid/widget/TextView;

    const v0, 0x7f090220

    .line 96
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;->root:Landroid/view/View;

    .line 98
    iput-object p4, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;->mContext:Landroid/content/Context;

    .line 99
    iput-object p3, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/g;

    .line 100
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;->root:Landroid/view/View;

    new-instance p3, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder$1;

    invoke-direct {p3, p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;)V
    .locals 3

    .line 110
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;->me:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;

    .line 112
    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "top_country"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/CountryUtil;->getCountryNameByCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;->me:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;->getThumbnail()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "http"

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;->mIvCover:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_1
    const-string v0, ".png"

    const-string v1, ".webp"

    .line 131
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/d$ItemHolder;->mIvCover:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/ImageUtil;->loadImageFromAsset(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_2
    :goto_0
    return-void
.end method
