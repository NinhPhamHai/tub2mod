.class Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$1;
.super Ljava/lang/Object;
.source "c.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;->onBindViewHolder(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;

.field final synthetic val$country:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$1;->val$country:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 58
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;->access$200(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c;)Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/c$1;->val$country:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;

    invoke-interface {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a/a;->onItemClicked(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;)V

    return-void
.end method
