.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService$LocalBinder;
.super Landroid/os/Binder;
.source "YTService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;


# direct methods
.method public constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService$LocalBinder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService$LocalBinder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;

    return-object v0
.end method
