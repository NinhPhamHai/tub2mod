.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "c.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a/a;

.field private textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;",
            ">;",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a/a;",
            "I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;->countries:Ljava/util/List;

    .line 35
    iput-object p3, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;->listener:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a/a;

    .line 36
    iput p4, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;->textColor:I

    return-void
.end method

.method static synthetic access$200(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;)Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a/a;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;->listener:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a/a;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;->countries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;->onBindViewHolder(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$ViewHolder;I)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;->countries:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;

    .line 50
    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$ViewHolder;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$ViewHolder;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;->textColor:I

    if-nez v1, :cond_0

    const/high16 v1, -0x1000000

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;->context:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;->loadFlagByCode(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;->getFlag()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 54
    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$ViewHolder;->access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;->getFlag()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    :cond_1
    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$ViewHolder;->access$300(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$1;

    invoke-direct {v0, p0, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$ViewHolder;
    .locals 2

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c009c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 44
    new-instance p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$ViewHolder;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;Landroid/view/View;)V

    return-object p2
.end method
