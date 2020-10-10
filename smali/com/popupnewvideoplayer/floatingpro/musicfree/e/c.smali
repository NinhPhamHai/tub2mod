.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "c.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c$Listener;

.field mLlAddPlaylist:Landroid/widget/LinearLayout;

.field mLlDelete:Landroid/widget/LinearLayout;

.field mLlPlayNow:Landroid/widget/LinearLayout;

.field private mMusicBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c;
    .locals 3

    .line 47
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c;-><init>()V

    .line 48
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "video"

    .line 49
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    instance-of p1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c$Listener;

    if-eqz p1, :cond_1

    .line 69
    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c$Listener;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c$Listener;

    goto :goto_0

    .line 72
    :cond_0
    instance-of v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c$Listener;

    if-eqz v0, :cond_1

    .line 73
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c$Listener;

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c$Listener;

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "video"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c;->mMusicBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00f3

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 85
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c;->unbinder:Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 92
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 93
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method








.method public onMLlAddPlaylistClicked()V
    .locals 5
	
	
	
	   .line 9
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->getInstance()Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;

    move-result-object v0

    const-string v1, "vip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/SharePreferencesHelper;->get(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 10
    invoke-virtual {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/Utils;->openSub(Landroid/content/Context;)V

    .line 11
    return-void

    .line 13
    :cond_16
    const-string v0, "openSub: "

    const-string v1, "thisapp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
	
	

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c;->mMusicBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/a;->newInstance(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)Lcom/popupnewvideoplayer/floatingpro/musicfree/e/a;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "add"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onMLlDeleteClicked()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c$Listener;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c;->mMusicBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-interface {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c$Listener;->onDeleteClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onMLlPlayNowClicked()V
    .locals 2

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/c;->mMusicBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-static {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;->start(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
