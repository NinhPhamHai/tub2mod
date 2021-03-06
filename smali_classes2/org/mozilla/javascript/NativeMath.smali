.class final Lorg/mozilla/javascript/NativeMath;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeMath.java"


# static fields
.field private static final Id_E:I = 0x1e

.field private static final Id_LN10:I = 0x20

.field private static final Id_LN2:I = 0x21

.field private static final Id_LOG10E:I = 0x23

.field private static final Id_LOG2E:I = 0x22

.field private static final Id_PI:I = 0x1f

.field private static final Id_SQRT1_2:I = 0x24

.field private static final Id_SQRT2:I = 0x25

.field private static final Id_abs:I = 0x2

.field private static final Id_acos:I = 0x3

.field private static final Id_asin:I = 0x4

.field private static final Id_atan:I = 0x5

.field private static final Id_atan2:I = 0x6

.field private static final Id_cbrt:I = 0x14

.field private static final Id_ceil:I = 0x7

.field private static final Id_cos:I = 0x8

.field private static final Id_cosh:I = 0x15

.field private static final Id_exp:I = 0x9

.field private static final Id_expm1:I = 0x16

.field private static final Id_floor:I = 0xa

.field private static final Id_hypot:I = 0x17

.field private static final Id_imul:I = 0x1c

.field private static final Id_log:I = 0xb

.field private static final Id_log10:I = 0x19

.field private static final Id_log1p:I = 0x18

.field private static final Id_max:I = 0xc

.field private static final Id_min:I = 0xd

.field private static final Id_pow:I = 0xe

.field private static final Id_random:I = 0xf

.field private static final Id_round:I = 0x10

.field private static final Id_sin:I = 0x11

.field private static final Id_sinh:I = 0x1a

.field private static final Id_sqrt:I = 0x12

.field private static final Id_tan:I = 0x13

.field private static final Id_tanh:I = 0x1b

.field private static final Id_toSource:I = 0x1

.field private static final Id_trunc:I = 0x1d

.field private static final LAST_METHOD_ID:I = 0x1d

.field private static final MATH_TAG:Ljava/lang/Object;

.field private static final MAX_ID:I = 0x25

.field static final serialVersionUID:J = -0x7aa9e4af6da33631L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Math"

    .line 21
    sput-object v0, Lorg/mozilla/javascript/NativeMath;->MATH_TAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 2

    .line 25
    new-instance v0, Lorg/mozilla/javascript/NativeMath;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeMath;-><init>()V

    const/16 v1, 0x25

    .line 26
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->activatePrototypeMap(I)V

    .line 27
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 28
    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_0
    const/4 p1, 0x2

    const-string v1, "Math"

    .line 30
    invoke-static {p0, v1, v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private js_hypot([Ljava/lang/Object;)D
    .locals 11

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 348
    :cond_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p1, v3

    .line 349
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    .line 350
    sget-wide v6, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    cmpl-double v8, v4, v6

    if-nez v8, :cond_1

    return-wide v4

    :cond_1
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_3

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v10, v4, v8

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    mul-double v4, v4, v4

    add-double/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v6

    .line 358
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private js_imul([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    if-eqz p1, :cond_2

    .line 369
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 373
    aget-object v0, p1, v0

    invoke-static {v0}, Lorg/mozilla/javascript/typedarrays/Conversions;->toUint32(Ljava/lang/Object;)J

    move-result-wide v0

    const/4 v2, 0x1

    .line 374
    aget-object p1, p1, v2

    invoke-static {p1}, Lorg/mozilla/javascript/typedarrays/Conversions;->toUint32(Ljava/lang/Object;)J

    move-result-wide v2

    mul-long v0, v0, v2

    const-wide v2, 0x100000000L

    .line 375
    rem-long/2addr v0, v2

    const-wide v4, 0x80000000L

    cmp-long p1, v0, v4

    if-ltz p1, :cond_1

    sub-long/2addr v0, v2

    .line 377
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 370
    :cond_2
    :goto_0
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method private js_pow(DD)D
    .locals 22

    move-wide/from16 v0, p3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/16 v6, 0x0

    cmpl-double v8, v0, v0

    if-eqz v8, :cond_0

    move-wide/from16 v17, v0

    goto/16 :goto_4

    :cond_0
    cmpl-double v8, v0, v6

    if-nez v8, :cond_1

    move-wide/from16 v17, v2

    goto/16 :goto_4

    :cond_1
    const-wide/high16 v9, -0x8000000000000000L

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x1

    const-wide/high16 v15, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v17, p1, v6

    if-nez v17, :cond_7

    div-double v2, v2, p1

    cmpl-double v17, v2, v6

    if-lez v17, :cond_2

    if-lez v8, :cond_9

    move-wide v4, v6

    goto :goto_2

    :cond_2
    double-to-long v2, v0

    long-to-double v6, v2

    cmpl-double v19, v6, v0

    if-nez v19, :cond_4

    and-long v0, v2, v13

    cmp-long v2, v0, v11

    if-eqz v2, :cond_4

    if-lez v8, :cond_6

    :cond_3
    move-wide v15, v9

    goto :goto_1

    :cond_4
    if-lez v8, :cond_5

    const-wide/16 v17, 0x0

    goto :goto_0

    :cond_5
    move-wide/from16 v17, v4

    :goto_0
    move-wide/from16 v15, v17

    :cond_6
    :goto_1
    move-wide/from16 v17, v15

    goto/16 :goto_4

    .line 308
    :cond_7
    invoke-static/range {p1 .. p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    cmpl-double v19, v6, v6

    if-eqz v19, :cond_10

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    cmpl-double v21, v0, v4

    if-nez v21, :cond_a

    cmpg-double v0, p1, v19

    if-ltz v0, :cond_9

    cmpg-double v0, v2, p1

    if-gez v0, :cond_8

    goto :goto_2

    :cond_8
    cmpg-double v0, v19, p1

    if-gez v0, :cond_10

    cmpg-double v0, p1, v2

    if-gez v0, :cond_10

    goto :goto_3

    :cond_9
    :goto_2
    move-wide/from16 v17, v4

    goto :goto_4

    :cond_a
    cmpl-double v21, v0, v15

    if-nez v21, :cond_d

    cmpg-double v0, p1, v19

    if-ltz v0, :cond_c

    cmpg-double v0, v2, p1

    if-gez v0, :cond_b

    goto :goto_3

    :cond_b
    cmpg-double v0, v19, p1

    if-gez v0, :cond_10

    cmpg-double v0, p1, v2

    if-gez v0, :cond_10

    goto :goto_2

    :cond_c
    :goto_3
    const-wide/16 v17, 0x0

    goto :goto_4

    :cond_d
    cmpl-double v2, p1, v4

    if-nez v2, :cond_e

    if-lez v8, :cond_c

    goto :goto_2

    :cond_e
    cmpl-double v2, p1, v15

    if-nez v2, :cond_10

    double-to-long v2, v0

    long-to-double v6, v2

    cmpl-double v19, v6, v0

    if-nez v19, :cond_f

    and-long v0, v2, v13

    cmp-long v2, v0, v11

    if-eqz v2, :cond_f

    if-lez v8, :cond_3

    goto :goto_1

    :cond_f
    if-lez v8, :cond_c

    goto :goto_2

    :cond_10
    move-wide/from16 v17, v6

    :goto_4
    return-wide v17
.end method

.method private js_trunc(D)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    .line 363
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    :goto_0
    return-wide p1
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 103
    sget-object v0, Lorg/mozilla/javascript/NativeMath;->MATH_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 107
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p1

    const/4 p2, 0x1

    const-wide/high16 p3, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    .line 280
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 276
    :pswitch_0
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    .line 277
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/NativeMath;->js_trunc(D)D

    move-result-wide p3

    goto/16 :goto_4

    .line 182
    :pswitch_1
    invoke-direct {p0, p5}, Lorg/mozilla/javascript/NativeMath;->js_imul([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 271
    :pswitch_2
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    .line 272
    invoke-static {p1, p2}, Ljava/lang/Math;->tanh(D)D

    move-result-wide p3

    goto/16 :goto_4

    .line 256
    :pswitch_3
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    .line 257
    invoke-static {p1, p2}, Ljava/lang/Math;->sinh(D)D

    move-result-wide p3

    goto/16 :goto_4

    .line 196
    :pswitch_4
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    .line 197
    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    move-result-wide p3

    goto/16 :goto_4

    .line 191
    :pswitch_5
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    .line 192
    invoke-static {p1, p2}, Ljava/lang/Math;->log1p(D)D

    move-result-wide p3

    goto/16 :goto_4

    .line 161
    :pswitch_6
    invoke-direct {p0, p5}, Lorg/mozilla/javascript/NativeMath;->js_hypot([Ljava/lang/Object;)D

    move-result-wide p3

    goto/16 :goto_4

    .line 172
    :pswitch_7
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    .line 173
    invoke-static {p1, p2}, Ljava/lang/Math;->expm1(D)D

    move-result-wide p3

    goto/16 :goto_4

    .line 156
    :pswitch_8
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    .line 157
    invoke-static {p1, p2}, Ljava/lang/Math;->cosh(D)D

    move-result-wide p3

    goto/16 :goto_4

    .line 139
    :pswitch_9
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    .line 140
    invoke-static {p1, p2}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide p3

    goto/16 :goto_4

    .line 266
    :pswitch_a
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    .line 267
    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p3

    goto/16 :goto_4

    .line 261
    :pswitch_b
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    .line 262
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    goto/16 :goto_4

    .line 249
    :pswitch_c
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    cmpl-double p5, p1, v2

    if-eqz p5, :cond_e

    cmpl-double p5, p1, v0

    if-nez p5, :cond_0

    goto/16 :goto_4

    .line 250
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    :cond_1
    :goto_0
    move-wide p3, p1

    goto/16 :goto_4

    .line 229
    :pswitch_d
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p3

    cmpl-double p1, p3, p3

    if-nez p1, :cond_e

    cmpl-double p1, p3, v2

    if-eqz p1, :cond_e

    cmpl-double p1, p3, v0

    if-eqz p1, :cond_e

    .line 234
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p5, p1, v0

    if-eqz p5, :cond_2

    long-to-double p1, p1

    goto :goto_0

    :cond_2
    cmpg-double p1, p3, v4

    if-gez p1, :cond_3

    .line 240
    sget-wide p1, Lorg/mozilla/javascript/ScriptRuntime;->negativeZero:D

    goto :goto_0

    :cond_3
    cmpl-double p1, p3, v4

    if-eqz p1, :cond_e

    :goto_1
    move-wide p3, v4

    goto/16 :goto_4

    .line 225
    :pswitch_e
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p3

    goto/16 :goto_4

    .line 220
    :pswitch_f
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p3

    .line 221
    invoke-static {p5, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    invoke-direct {p0, p3, p4, p1, p2}, Lorg/mozilla/javascript/NativeMath;->js_pow(DD)D

    move-result-wide p3

    goto/16 :goto_4

    :pswitch_10
    const/16 p2, 0xc

    if-ne p1, p2, :cond_4

    goto :goto_2

    :cond_4
    move-wide v0, v2

    .line 204
    :goto_2
    array-length p3, p5

    if-eq v6, p3, :cond_7

    .line 205
    aget-object p3, p5, v6

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p3

    cmpl-double v2, p3, p3

    if-eqz v2, :cond_5

    goto/16 :goto_4

    :cond_5
    if-ne p1, p2, :cond_6

    .line 212
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p3

    goto :goto_3

    .line 214
    :cond_6
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide p3

    :goto_3
    move-wide v0, p3

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    move-wide p3, v0

    goto/16 :goto_4

    .line 185
    :pswitch_11
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    cmpg-double p5, p1, v4

    if-gez p5, :cond_8

    goto/16 :goto_4

    .line 187
    :cond_8
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    goto :goto_0

    .line 177
    :pswitch_12
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    .line 178
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    goto/16 :goto_4

    .line 165
    :pswitch_13
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    cmpl-double p3, p1, v2

    if-nez p3, :cond_9

    goto/16 :goto_0

    :cond_9
    cmpl-double p3, p1, v0

    if-nez p3, :cond_a

    goto :goto_1

    .line 166
    :cond_a
    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    goto/16 :goto_0

    .line 149
    :pswitch_14
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    cmpl-double p5, p1, v2

    if-eqz p5, :cond_e

    cmpl-double p5, p1, v0

    if-nez p5, :cond_b

    goto :goto_4

    .line 150
    :cond_b
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    goto/16 :goto_0

    .line 144
    :pswitch_15
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    .line 145
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    goto :goto_4

    .line 134
    :pswitch_16
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p3

    .line 135
    invoke-static {p5, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p3

    goto :goto_4

    .line 129
    :pswitch_17
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    .line 130
    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p3

    goto :goto_4

    .line 120
    :pswitch_18
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpl-double p2, v0, v0

    if-nez p2, :cond_e

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpg-double p2, v2, v0

    if-gtz p2, :cond_e

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p2, v0, v2

    if-gtz p2, :cond_e

    const/4 p2, 0x3

    if-ne p1, p2, :cond_c

    .line 122
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    goto/16 :goto_0

    :cond_c
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    goto/16 :goto_0

    .line 113
    :pswitch_19
    invoke-static {p5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    cmpl-double p3, p1, v4

    if-nez p3, :cond_d

    goto/16 :goto_1

    :cond_d
    cmpg-double p3, p1, v4

    if-gez p3, :cond_1

    neg-double p1, p1

    goto/16 :goto_0

    .line 282
    :cond_e
    :goto_4
    invoke-static {p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_1a
    const-string p1, "Math"

    return-object p1

    .line 104
    :cond_f
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 16

    move-object/from16 v0, p1

    .line 388
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x4e

    const/16 v3, 0x6d

    const/16 v4, 0x6c

    const/16 v5, 0x69

    const/16 v6, 0x74

    const/16 v7, 0x70

    const/16 v8, 0x65

    const/16 v9, 0x4c

    const/16 v10, 0x6f

    const/16 v11, 0x73

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "toSource"

    move-object v2, v1

    const/4 v1, 0x1

    goto/16 :goto_1

    :pswitch_1
    const/16 v1, 0x24

    const-string v2, "SQRT1_2"

    goto/16 :goto_1

    .line 432
    :pswitch_2
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_0

    const/16 v1, 0x23

    const-string v2, "LOG10E"

    goto/16 :goto_1

    :cond_0
    const/16 v2, 0x72

    if-ne v1, v2, :cond_1d

    const/16 v1, 0xf

    const-string v2, "random"

    goto/16 :goto_1

    .line 418
    :pswitch_3
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v9, :cond_a

    const/16 v2, 0x53

    if-eq v1, v2, :cond_9

    if-eq v1, v12, :cond_8

    const/16 v2, 0x68

    if-eq v1, v2, :cond_7

    if-eq v1, v4, :cond_5

    const/16 v2, 0x72

    if-eq v1, v2, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v8, :cond_2

    const/16 v2, 0x66

    if-eq v1, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xa

    const-string v2, "floor"

    goto/16 :goto_1

    :cond_2
    const/16 v1, 0x16

    const-string v2, "expm1"

    goto/16 :goto_1

    :cond_3
    const/16 v1, 0x1d

    const-string v2, "trunc"

    goto/16 :goto_1

    :cond_4
    const/16 v1, 0x10

    const-string v2, "round"

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x4

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_6

    const/16 v1, 0x19

    const-string v2, "log10"

    goto/16 :goto_1

    :cond_6
    if-ne v1, v7, :cond_1d

    const/16 v1, 0x18

    const-string v2, "log1p"

    goto/16 :goto_1

    :cond_7
    const/16 v1, 0x17

    const-string v2, "hypot"

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x6

    const-string v2, "atan2"

    goto/16 :goto_1

    :cond_9
    const/16 v1, 0x25

    const-string v2, "SQRT2"

    goto/16 :goto_1

    :cond_a
    const/16 v1, 0x22

    const-string v2, "LOG2E"

    goto/16 :goto_1

    .line 405
    :pswitch_4
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_12

    if-eq v1, v8, :cond_11

    if-eq v1, v5, :cond_10

    if-eq v1, v3, :cond_f

    if-eq v1, v10, :cond_e

    const/16 v2, 0x71

    if-eq v1, v2, :cond_d

    if-eq v1, v11, :cond_c

    if-eq v1, v6, :cond_b

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_5
    const/4 v1, 0x3

    const-string v2, "acos"

    goto/16 :goto_1

    :pswitch_6
    const/16 v1, 0x14

    const-string v2, "cbrt"

    goto/16 :goto_1

    :pswitch_7
    const/16 v1, 0x1b

    const-string v2, "tanh"

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x5

    const-string v2, "atan"

    goto/16 :goto_1

    :cond_c
    const/4 v1, 0x4

    const-string v2, "asin"

    goto/16 :goto_1

    :cond_d
    const/16 v1, 0x12

    const-string v2, "sqrt"

    goto/16 :goto_1

    :cond_e
    const/16 v1, 0x15

    const-string v2, "cosh"

    goto/16 :goto_1

    :cond_f
    const/16 v1, 0x1c

    const-string v2, "imul"

    goto/16 :goto_1

    :cond_10
    const/16 v1, 0x1a

    const-string v2, "sinh"

    goto/16 :goto_1

    :cond_11
    const/4 v1, 0x7

    const-string v2, "ceil"

    goto/16 :goto_1

    :cond_12
    const/16 v1, 0x20

    const-string v2, "LN10"

    goto/16 :goto_1

    .line 391
    :pswitch_8
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v9, :cond_1c

    if-eq v1, v12, :cond_1b

    const/16 v2, 0x63

    if-eq v1, v2, :cond_1a

    if-eq v1, v8, :cond_19

    if-eq v1, v7, :cond_18

    if-eq v1, v4, :cond_17

    const/16 v2, 0x6e

    if-eq v1, v3, :cond_15

    if-eq v1, v11, :cond_14

    if-eq v1, v6, :cond_13

    goto/16 :goto_0

    .line 403
    :cond_13
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1d

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_1d

    const/16 v13, 0x13

    goto/16 :goto_2

    .line 402
    :cond_14
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1d

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1d

    const/16 v13, 0x11

    goto/16 :goto_2

    .line 397
    :cond_15
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_16

    .line 398
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1d

    const/16 v13, 0xd

    goto/16 :goto_2

    :cond_16
    const/16 v2, 0x78

    if-ne v1, v2, :cond_1d

    .line 399
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_1d

    const/16 v13, 0xc

    goto/16 :goto_2

    .line 396
    :cond_17
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x67

    if-ne v1, v2, :cond_1d

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_1d

    const/16 v13, 0xb

    goto/16 :goto_2

    .line 401
    :cond_18
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_1d

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_1d

    const/16 v13, 0xe

    goto/16 :goto_2

    .line 395
    :cond_19
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_1d

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x78

    if-ne v1, v2, :cond_1d

    const/16 v13, 0x9

    goto :goto_2

    .line 394
    :cond_1a
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_1d

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_1d

    const/16 v13, 0x8

    goto :goto_2

    .line 393
    :cond_1b
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_1d

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_1d

    const/4 v13, 0x2

    goto :goto_2

    .line 392
    :cond_1c
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x32

    if-ne v1, v3, :cond_1d

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1d

    const/16 v13, 0x21

    goto :goto_2

    .line 390
    :pswitch_9
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1d

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x49

    if-ne v1, v2, :cond_1d

    const/16 v13, 0x1f

    goto :goto_2

    .line 389
    :pswitch_a
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x45

    if-ne v1, v2, :cond_1d

    const/16 v13, 0x1e

    goto :goto_2

    :cond_1d
    :goto_0
    const/4 v1, 0x0

    move-object v2, v1

    const/4 v1, 0x0

    :goto_1
    if-eqz v2, :cond_1e

    if-eq v2, v0, :cond_1e

    .line 439
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_2

    :cond_1e
    move v13, v1

    :goto_2
    return v13

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Math"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .locals 3

    const/16 v0, 0x1d

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "trunc"

    goto/16 :goto_2

    :pswitch_1
    const-string v0, "imul"

    goto :goto_0

    :pswitch_2
    const-string v0, "tanh"

    goto/16 :goto_2

    :pswitch_3
    const-string v0, "sinh"

    goto/16 :goto_2

    :pswitch_4
    const-string v0, "log10"

    goto :goto_2

    :pswitch_5
    const-string v0, "log1p"

    goto :goto_2

    :pswitch_6
    const-string v0, "hypot"

    goto :goto_0

    :pswitch_7
    const-string v0, "expm1"

    goto :goto_2

    :pswitch_8
    const-string v0, "cosh"

    goto :goto_2

    :pswitch_9
    const-string v0, "cbrt"

    goto :goto_2

    :pswitch_a
    const-string v0, "tan"

    goto :goto_2

    :pswitch_b
    const-string v0, "sqrt"

    goto :goto_2

    :pswitch_c
    const-string v0, "sin"

    goto :goto_2

    :pswitch_d
    const-string v0, "round"

    goto :goto_2

    :pswitch_e
    const-string v1, "random"

    goto :goto_1

    :pswitch_f
    const-string v0, "pow"

    goto :goto_0

    :pswitch_10
    const-string v0, "min"

    goto :goto_0

    :pswitch_11
    const-string v0, "max"

    goto :goto_0

    :pswitch_12
    const-string v0, "log"

    goto :goto_2

    :pswitch_13
    const-string v0, "floor"

    goto :goto_2

    :pswitch_14
    const-string v0, "exp"

    goto :goto_2

    :pswitch_15
    const-string v0, "cos"

    goto :goto_2

    :pswitch_16
    const-string v0, "ceil"

    goto :goto_2

    :pswitch_17
    const-string v0, "atan2"

    :goto_0
    const/4 v2, 0x2

    goto :goto_2

    :pswitch_18
    const-string v0, "atan"

    goto :goto_2

    :pswitch_19
    const-string v0, "asin"

    goto :goto_2

    :pswitch_1a
    const-string v0, "acos"

    goto :goto_2

    :pswitch_1b
    const-string v0, "abs"

    goto :goto_2

    :pswitch_1c
    const-string v1, "toSource"

    :goto_1
    move-object v0, v1

    const/4 v2, 0x0

    .line 79
    :goto_2
    sget-object v1, Lorg/mozilla/javascript/NativeMath;->MATH_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0, v2}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    goto :goto_4

    :cond_0
    packed-switch p1, :pswitch_data_1

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    const-wide v0, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    const-string v2, "SQRT2"

    goto :goto_3

    :pswitch_1e
    const-wide v0, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    const-string v2, "SQRT1_2"

    goto :goto_3

    :pswitch_1f
    const-wide v0, 0x3fdbcb7b1526e50eL    # 0.4342944819032518

    const-string v2, "LOG10E"

    goto :goto_3

    :pswitch_20
    const-wide v0, 0x3ff71547652b82feL    # 1.4426950408889634

    const-string v2, "LOG2E"

    goto :goto_3

    :pswitch_21
    const-wide v0, 0x3fe62e42fefa39efL    # 0.6931471805599453

    const-string v2, "LN2"

    goto :goto_3

    :pswitch_22
    const-wide v0, 0x40026bb1bbb55516L    # 2.302585092994046

    const-string v2, "LN10"

    goto :goto_3

    :pswitch_23
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    const-string v2, "PI"

    goto :goto_3

    :pswitch_24
    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    const-string v2, "E"

    .line 94
    :goto_3
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeValue(ILjava/lang/String;Ljava/lang/Object;I)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch
.end method
