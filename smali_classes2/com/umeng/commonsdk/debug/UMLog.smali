.class public Lcom/umeng/commonsdk/debug/UMLog;
.super Ljava/lang/Object;
.source "UMLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aq(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static aq(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 105
    invoke-static/range {v0 .. v7}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static aq(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 118
    invoke-static/range {v0 .. v7}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static aq(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "\u2502     "

    .line 139
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "UMLog"

    goto :goto_0

    .line 147
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UMLog_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 153
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 154
    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 155
    array-length p3, p1

    const/4 v1, 0x2

    if-lt p3, v1, :cond_4

    const/4 p3, 0x0

    if-eqz p4, :cond_2

    .line 156
    array-length v1, p4

    if-lez v1, :cond_2

    if-eqz p5, :cond_2

    array-length v1, p5

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 157
    :goto_1
    array-length v2, p4

    if-ge v1, v2, :cond_2

    array-length v2, p5

    if-ge v1, v2, :cond_2

    .line 158
    aget-object v2, p1, p3

    aget-object v3, p4, v1

    aget-object v4, p5, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p4, 0x1

    if-eqz p6, :cond_3

    .line 161
    array-length p5, p6

    if-lez p5, :cond_3

    if-eqz p7, :cond_3

    array-length p5, p7

    if-lez p5, :cond_3

    const/4 p5, 0x0

    .line 162
    :goto_2
    array-length v1, p6

    if-ge p5, v1, :cond_3

    array-length v1, p7

    if-ge p5, v1, :cond_3

    .line 163
    aget-object v1, p1, p4

    aget-object v2, p6, p5

    aget-object v3, p7, p5

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, p4

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    .line 166
    :cond_3
    invoke-static {p2}, Lcom/umeng/commonsdk/debug/UMLog;->getLogger(I)Lcom/umeng/commonsdk/debug/UInterface;

    move-result-object p2

    const-string p5, "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u95ee\u9898\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    .line 167
    invoke-interface {p2, p0, p5}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p1, p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p0, p3}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "\u251c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u89e3\u51b3\u65b9\u6848\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    .line 169
    invoke-interface {p2, p0, p3}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, p4

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    .line 171
    invoke-interface {p2, p0, p1}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method public static getLogger(I)Lcom/umeng/commonsdk/debug/UInterface;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 491
    new-instance p0, Lcom/umeng/commonsdk/debug/D;

    invoke-direct {p0}, Lcom/umeng/commonsdk/debug/D;-><init>()V

    goto :goto_0

    .line 488
    :cond_0
    new-instance p0, Lcom/umeng/commonsdk/debug/D;

    invoke-direct {p0}, Lcom/umeng/commonsdk/debug/D;-><init>()V

    goto :goto_0

    .line 485
    :cond_1
    new-instance p0, Lcom/umeng/commonsdk/debug/I;

    invoke-direct {p0}, Lcom/umeng/commonsdk/debug/I;-><init>()V

    goto :goto_0

    .line 482
    :cond_2
    new-instance p0, Lcom/umeng/commonsdk/debug/W;

    invoke-direct {p0}, Lcom/umeng/commonsdk/debug/W;-><init>()V

    goto :goto_0

    .line 479
    :cond_3
    new-instance p0, Lcom/umeng/commonsdk/debug/E;

    invoke-direct {p0}, Lcom/umeng/commonsdk/debug/E;-><init>()V

    :goto_0
    return-object p0
.end method

.method public static mutlInfo(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 252
    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 267
    invoke-static/range {v0 .. v5}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static mutlInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 280
    invoke-static/range {v0 .. v5}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static mutlInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .line 298
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 302
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "UMLog"

    goto :goto_0

    .line 305
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UMLog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 311
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    .line 312
    array-length v1, p4

    if-lez v1, :cond_3

    if-eqz p5, :cond_3

    array-length v1, p5

    if-lez v1, :cond_3

    move-object v1, p1

    const/4 p1, 0x0

    .line 313
    :goto_1
    array-length v2, p4

    if-ge p1, v2, :cond_2

    array-length v2, p5

    if-ge p1, v2, :cond_2

    .line 314
    aget-object v2, p4, p1

    aget-object v3, p5, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    move-object p1, v1

    .line 317
    :cond_3
    invoke-static {p2}, Lcom/umeng/commonsdk/debug/UMLog;->getLogger(I)Lcom/umeng/commonsdk/debug/UInterface;

    move-result-object p2

    .line 318
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 319
    invoke-interface {p2, p0, p1}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 321
    :cond_4
    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string p3, "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    .line 323
    invoke-interface {p2, p0, p3}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_2
    array-length p3, p1

    if-ge v0, p3, :cond_6

    .line 325
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u2502     "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p4, p1, v0

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p0, p3}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    array-length p3, p1

    add-int/lit8 p3, p3, -0x1

    if-eq v0, p3, :cond_5

    const-string p3, "\u251c\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

    .line 327
    invoke-interface {p2, p0, p3}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const-string p1, "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    .line 330
    invoke-interface {p2, p0, p1}, Lcom/umeng/commonsdk/debug/UInterface;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    :goto_3
    return-void
.end method
