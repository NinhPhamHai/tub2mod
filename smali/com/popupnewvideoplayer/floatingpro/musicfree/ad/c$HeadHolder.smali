.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "c.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeadHolder"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mImageView:Landroid/widget/ImageView;

.field mRlHotChart:Landroid/widget/RelativeLayout;

.field mRlTodayHit:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;


# direct methods
.method public constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    .line 161
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;

    .line 162
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090212

    .line 164
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;->mRlHotChart:Landroid/widget/RelativeLayout;

    const v0, 0x7f09021e

    .line 165
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;->mRlTodayHit:Landroid/widget/RelativeLayout;

    const v0, 0x7f090112

    .line 166
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;->mImageView:Landroid/widget/ImageView;

    .line 167
    iput-object p3, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;->mContext:Landroid/content/Context;

    .line 169
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;->setDayImage(Landroid/widget/ImageView;)V

    .line 171
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;->mRlTodayHit:Landroid/widget/RelativeLayout;

    new-instance p3, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder$1;

    invoke-direct {p3, p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;->mRlHotChart:Landroid/widget/RelativeLayout;

    new-instance p3, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder$2;

    invoke-direct {p3, p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder$2;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;->initData()V

    return-void
.end method

.method private initBanner()V
    .locals 0

    return-void
.end method

.method private initData()V
    .locals 0

    .line 220
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;->initBanner()V

    return-void
.end method

.method private setDayImage(Landroid/widget/ImageView;)V
    .locals 4

    .line 210
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 211
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "icon_today_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 214
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
