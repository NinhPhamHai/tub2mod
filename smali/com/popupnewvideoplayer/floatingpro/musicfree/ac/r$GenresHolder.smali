.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$GenresHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenresHolder"
.end annotation


# instance fields
.field album:Landroid/widget/ImageView;

.field position:I

.field root:Landroid/view/View;

.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

.field type:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;Landroid/view/View;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$GenresHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    .line 198
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090220

    .line 199
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$GenresHolder;->root:Landroid/view/View;

    const p1, 0x7f090111

    .line 200
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$GenresHolder;->album:Landroid/widget/ImageView;

    const p1, 0x7f0902c8

    .line 201
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$GenresHolder;->type:Landroid/widget/TextView;

    .line 202
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$GenresHolder;->root:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method bindAlbumData(I)V
    .locals 2

    .line 206
    iput p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$GenresHolder;->position:I

    .line 207
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$GenresHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$GenresHolder;->type:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$GenresHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$GenresHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    invoke-static {v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;->getThumbnail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$GenresHolder;->album:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 218
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$GenresHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$GenresHolder;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;

    invoke-static {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/t;->actionStart(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;)V

    return-void
.end method
