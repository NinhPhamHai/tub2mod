.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;
.super Ljava/lang/Object;
.source "a.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private canSearch:Z

.field private context:Landroid/content/Context;

.field private onCountryPickerListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a/c;

.field private sortBy:I

.field private style:I

.field private theme:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 584
    iput v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;->sortBy:I

    const/4 v0, 0x1

    .line 585
    iput-boolean v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;->canSearch:Z

    const/4 v0, 0x2

    .line 588
    iput v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;->theme:I

    return-void
.end method

.method static synthetic access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;)I
    .locals 0

    .line 582
    iget p0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;->sortBy:I

    return p0
.end method

.method static synthetic access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;)Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a/c;
    .locals 0

    .line 582
    iget-object p0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;->onCountryPickerListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a/c;

    return-object p0
.end method

.method static synthetic access$200(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;)I
    .locals 0

    .line 582
    iget p0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;->style:I

    return p0
.end method

.method static synthetic access$300(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;)Landroid/content/Context;
    .locals 0

    .line 582
    iget-object p0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;)Z
    .locals 0

    .line 582
    iget-boolean p0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;->canSearch:Z

    return p0
.end method

.method static synthetic access$500(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;)I
    .locals 0

    .line 582
    iget p0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;->theme:I

    return p0
.end method


# virtual methods
.method public build()Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;
    .locals 1

    .line 621
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

    invoke-direct {v0, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;)V

    return-object v0
.end method

.method public canSearch(Z)Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;
    .locals 0

    .line 611
    iput-boolean p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;->canSearch:Z

    return-object p0
.end method

.method public listener(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a/c;)Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;->onCountryPickerListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a/c;

    return-object p0
.end method

.method public sortBy(I)Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;
    .locals 0

    .line 601
    iput p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;->sortBy:I

    return-object p0
.end method

.method public with(Landroid/content/Context;)Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;->context:Landroid/content/Context;

    return-object p0
.end method
