.class Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$4;
.super Ljava/lang/Object;
.source "a.java"

# interfaces
.implements Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;->setupRecyclerView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;)V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;->access$600(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;)Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;->access$600(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;)Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a/c;->onSelectCountry(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;)V

    .line 431
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;->access$700(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;)Lcom/popupnewvideoplayer/floatingpro/musicfree/c/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 432
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;->access$700(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;)Lcom/popupnewvideoplayer/floatingpro/musicfree/c/b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 434
    :cond_0
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;->access$800(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 435
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;->access$800(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 437
    :cond_1
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;->access$802(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 438
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

    invoke-static {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;->access$702(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;Lcom/popupnewvideoplayer/floatingpro/musicfree/c/b;)Lcom/popupnewvideoplayer/floatingpro/musicfree/c/b;

    .line 439
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;->access$902(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;I)I

    .line 440
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

    invoke-static {p1, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;->access$1002(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;I)I

    .line 441
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

    invoke-static {p1, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;->access$1102(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;I)I

    .line 442
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

    invoke-static {p1, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;->access$1202(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;I)I

    .line 443
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

    invoke-static {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;->access$1302(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_2
    return-void
.end method
