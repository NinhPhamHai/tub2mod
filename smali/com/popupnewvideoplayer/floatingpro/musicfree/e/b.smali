.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "b.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b$Listener;
    }
.end annotation


# instance fields
.field private mContainsDelete:Z

.field private mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

.field private mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b$Listener;

.field mLlAddPlaylist:Landroid/widget/LinearLayout;

.field mLlAddQueue:Landroid/widget/LinearLayout;

.field mLlDelete:Landroid/widget/LinearLayout;

.field mLlPlayNow:Landroid/widget/LinearLayout;

.field mLlShare:Landroid/widget/LinearLayout;

.field private mMusicBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;Z)Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;
    .locals 3

    .line 59
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;-><init>()V

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "video"

    .line 61
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "contains_delete"

    .line 62
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newInstance(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;ZLcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;)Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;
    .locals 3

    .line 68
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;-><init>()V

    .line 69
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "video"

    .line 70
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "contains_delete"

    .line 71
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "playlist_name"

    .line 72
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 73
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    instance-of p1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b$Listener;

    if-eqz p1, :cond_1

    .line 95
    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b$Listener;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b$Listener;

    goto :goto_0

    .line 98
    :cond_0
    instance-of v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b$Listener;

    if-eqz v0, :cond_1

    .line 99
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b$Listener;

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b$Listener;

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "video"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->mMusicBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "contains_delete"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->mContainsDelete:Z

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "playlist_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0041

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 111
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->unbinder:Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 132
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 133
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 127
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    return-void
.end method

.method public onMLlAddPlaylistClicked()V
    .locals 3

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->mMusicBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/a;->newInstance(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)Lcom/popupnewvideoplayer/floatingpro/musicfree/e/a;

    move-result-object v0

    .line 153
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

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onMLlAddQueueClicked()V
    .locals 2

    .line 145
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->getQueueLab()Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;

    move-result-object v0

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->mMusicBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-virtual {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->addMusicToQueue(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onMLlDeleteClicked()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->mMusicBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    invoke-static {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->deleteVideoFromFolder(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;)V

    .line 165
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b$Listener;

    invoke-interface {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b$Listener;->onDeleteSuccess()V

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onMLlPlayNowClicked()V
    .locals 2

    .line 138
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->getQueueLab()Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;

    move-result-object v0

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->mMusicBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-virtual {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/QueueLab;->addMusicToQueue(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->mMusicBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-static {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/YTService;->start(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onMLlShareClicked()V
    .locals 0

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 117
    iget-boolean p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->mContainsDelete:Z

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->mLlDelete:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/b;->mLlDelete:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
