.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;
.super Landroidx/fragment/app/Fragment;
.source "n.java"


# instance fields
.field private countryPicker:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

.field mAboutUsRl:Landroid/widget/RelativeLayout;

.field mCbLock:Landroidx/appcompat/widget/SwitchCompat;

.field mCountry:Landroid/widget/RelativeLayout;

.field mIvCountry:Landroid/widget/ImageView;

.field mPowerSaving:Landroid/widget/RelativeLayout;

.field mPrivacy:Landroid/widget/RelativeLayout;

.field mRateUs:Landroid/widget/RelativeLayout;

.field mRlLock:Landroid/widget/RelativeLayout;

.field mRlSignOut:Landroid/widget/RelativeLayout;

.field mSelectSize:Landroid/widget/RelativeLayout;

.field mShareApp:Landroid/widget/RelativeLayout;

.field mSleep:Landroid/widget/RelativeLayout;

.field rlDownload:Landroid/widget/RelativeLayout;

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->showCountryDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->setCountryIcon()V

    return-void
.end method

.method private setCountryIcon()V
    .locals 4

    .line 195
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flag_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->mIvCountry:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showCountryDialog()V
    .locals 2

    .line 159
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;-><init>()V

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;->with(Landroid/content/Context;)Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;

    new-instance v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n$5;

    invoke-direct {v1, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n$5;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;)V

    .line 161
    invoke-virtual {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;->listener(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a/c;)Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;

    const/4 v1, 0x1

    .line 172
    invoke-virtual {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;->canSearch(Z)Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;

    .line 173
    invoke-virtual {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;->sortBy(I)Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;

    .line 175
    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$Builder;->build()Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->countryPicker:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

    .line 176
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->countryPicker:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;->showDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 178
    new-instance v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n$6;

    invoke-direct {v1, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n$6;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 190
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static showMarket(Landroid/app/Activity;)V
    .locals 5

    const-string v0, "com.android.vending"

    if-nez p0, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 240
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 242
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.google.android.finsky.activities.LaunchUrlHandlerActivity"

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    new-instance v0, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private showToastDialog()V
    .locals 2

    .line 134
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1102a8

    .line 135
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    const v1, 0x7f1100a9

    .line 136
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    const v1, 0x7f1100e0

    .line 137
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    const v1, 0x7f1100df

    .line 138
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    const/4 v1, 0x0

    .line 139
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n$4;

    invoke-direct {v1, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n$4;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;)V

    .line 140
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n$3;

    invoke-direct {v1, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n$3;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;)V

    .line 146
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 152
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x0

    const v0, 0x7f0c002e

    .line 83
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 84
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->unbinder:Lbutterknife/Unbinder;

    .line 86
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->mCbLock:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->isLockEnable(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 87
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->mCbLock:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n$1;

    invoke-direct {v0, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;)V

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->isFromFacebook(Landroid/content/Context;)Z

    move-result p2

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    .line 96
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->mRlLock:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 97
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->mCountry:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 98
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->rlDownload:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->mRlLock:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->mCountry:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 102
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->rlDownload:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 105
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->isDownloadEnable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 106
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->rlDownload:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 108
    :cond_1
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->rlDownload:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 111
    :goto_1
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->setCountryIcon()V

    .line 113
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->mCountry:Landroid/widget/RelativeLayout;

    new-instance p3, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n$2;

    invoke-direct {p3, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n$2;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->isFromFacebook(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 124
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->isCountrySet()Z

    move-result p2

    if-nez p2, :cond_2

    .line 125
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->showToastDialog()V

    :cond_2
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 203
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 204
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public onDownload()V
    .locals 3

    .line 317
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/d;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onMAboutUsRlClicked()V
    .locals 3

    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/a;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onMPowerSavingClicked()V
    .locals 2

    .line 214
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110262

    .line 215
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    const v1, 0x7f110261

    .line 216
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    const v1, 0x7f1100e0

    .line 217
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 218
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method public onMRateUsClicked()V
    .locals 1

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;->showMarket(Landroid/app/Activity;)V

    return-void
.end method

.method public onPrivacy()V
    .locals 3

    .line 253
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/m;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onSelectSize()V
    .locals 3

    .line 259
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->getSmallPlayerSize(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x2c00

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x2716e

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const v2, 0x334e0

    if-ne v0, v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const v2, 0x3f852

    if-ne v0, v2, :cond_3

    const/4 v1, 0x3

    .line 272
    :cond_3
    :goto_0
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f110075

    .line 273
    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    const v2, 0x7f03001f

    .line 274
    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n$7;

    invoke-direct {v2, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n$7;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;)V

    .line 275
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackSingleChoice(ILcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    const v1, 0x7f1100e0

    .line 299
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    const v1, 0x7f1100df

    .line 300
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 301
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method public onSleep()V
    .locals 3

    .line 309
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/h;-><init>()V

    .line 310
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "sleep"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onViewClicked()V
    .locals 3

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 229
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/Constants;->SHARE_TEXT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Share link using"

    .line 231
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
