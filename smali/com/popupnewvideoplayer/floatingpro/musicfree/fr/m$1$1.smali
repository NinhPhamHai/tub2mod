.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$1$1;
.super Ljava/lang/Object;
.source "m.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$1;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$1;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$1;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$1$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$1$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$1;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->access$202(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;Z)Z

    .line 263
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$1$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$1;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->access$300(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;)V

    .line 264
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$1$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$1;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;

    iget v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->page:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/m;->page:I

    return-void
.end method
