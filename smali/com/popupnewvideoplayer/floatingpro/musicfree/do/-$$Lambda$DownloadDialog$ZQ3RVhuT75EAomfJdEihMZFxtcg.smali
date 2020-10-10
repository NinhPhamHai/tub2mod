.class public final synthetic Lcom/popupnewvideoplayer/floatingpro/musicfree/do/-$$Lambda$DownloadDialog$ZQ3RVhuT75EAomfJdEihMZFxtcg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b;

.field private final synthetic f$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/StoredFileHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b;Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/StoredFileHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/-$$Lambda$DownloadDialog$ZQ3RVhuT75EAomfJdEihMZFxtcg;->f$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/-$$Lambda$DownloadDialog$ZQ3RVhuT75EAomfJdEihMZFxtcg;->f$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/StoredFileHelper;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/-$$Lambda$DownloadDialog$ZQ3RVhuT75EAomfJdEihMZFxtcg;->f$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/-$$Lambda$DownloadDialog$ZQ3RVhuT75EAomfJdEihMZFxtcg;->f$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/StoredFileHelper;

    invoke-virtual {v0, v1, p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/b;->lambda$checkSelectedDownload$5$DownloadDialog(Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/StoredFileHelper;Landroid/content/DialogInterface;I)V

    return-void
.end method
