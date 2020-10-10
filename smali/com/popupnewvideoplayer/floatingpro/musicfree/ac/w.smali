.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;
.super Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/b;
.source "w.java"


# instance fields
.field mAdContainer:Landroid/widget/LinearLayout;

.field mAdmobNative:Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d;

.field mAppBackground:Landroid/widget/RelativeLayout;

.field mArrow:Landroid/widget/ImageView;

.field mCountDownTimer:Landroid/os/CountDownTimer;

.field mEnterLayout:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field mTopLayout:Landroid/widget/RelativeLayout;

.field mTvTimeCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/b;-><init>()V

    .line 54
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$1;

    invoke-direct {v0, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;)V

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->enterb()V

    return-void
.end method

.method static synthetic access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->loadAnimation(Landroid/view/View;)V

    return-void
.end method

.method private enterb()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ma/b;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private loadAdS()V
    .locals 7

    .line 87
    invoke-static {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/h;->getLogger(Landroid/content/Context;)Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/h;->SetNative_Request()V

    .line 89
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d;-><init>()V

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->mAdmobNative:Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d;

    .line 90
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->mAdmobNative:Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d;

    sget-object v3, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/a;->AD_NATIVE_SPLASH:Ljava/lang/String;

    iget-object v4, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->mAdContainer:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$2;

    invoke-direct {v6, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w$2;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;)V

    const v5, 0x7f0c0039

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/d;->load(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;ILcom/popupnewvideoplayer/floatingpro/musicfree/adm/g;)V

    return-void
.end method

.method private loadAnimation(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x2

    .line 166
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 167
    new-array v4, v0, [F

    fill-array-data v4, :array_1

    const-string v5, "translationY"

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 168
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 169
    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 170
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x447a0000    # 1000.0f
        0x0
    .end array-data
.end method

.method private loadScreenSizeInfo()V
    .locals 5

    .line 176
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "android"

    const-string v3, "dimen"

    const-string v4, "status_bar_height"

    invoke-virtual {v1, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 178
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/ScreenSize;->STATUS_BAR_HEIGHT:I

    const-string v1, "navigation_bar_height"

    .line 179
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/ScreenSize;->NAVIGATION_HEIGHT:I

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 183
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 184
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 185
    iget v0, v1, Landroid/graphics/Point;->x:I

    sput v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/ScreenSize;->SCREEN_WIDTH:I

    .line 186
    iget v0, v1, Landroid/graphics/Point;->y:I

    sput v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/ScreenSize;->SCREEN_HEIGHT:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 72
    invoke-super {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/b;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0031

    .line 73
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 74
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 75
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->loadAdS()V

    .line 76
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->loadScreenSizeInfo()V

    .line 78
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->mTopLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/pl/ScreenSize;->STATUS_BAR_HEIGHT:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 80
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3e7

    const-wide/16 v1, 0x2328

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onViewClicked()V
    .locals 1

    .line 151
    invoke-static {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/h;->getLogger(Landroid/content/Context;)Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/h;->SetNative_Enter()V

    .line 152
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/w;->enterb()V

    return-void
.end method
