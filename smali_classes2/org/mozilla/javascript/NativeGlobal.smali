.class public Lorg/mozilla/javascript/NativeGlobal;
.super Ljava/lang/Object;
.source "NativeGlobal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/mozilla/javascript/IdFunctionCall;


# static fields
.field private static final FTAG:Ljava/lang/Object;

.field private static final INVALID_UTF8:I = 0x7fffffff

.field private static final Id_decodeURI:I = 0x1

.field private static final Id_decodeURIComponent:I = 0x2

.field private static final Id_encodeURI:I = 0x3

.field private static final Id_encodeURIComponent:I = 0x4

.field private static final Id_escape:I = 0x5

.field private static final Id_eval:I = 0x6

.field private static final Id_isFinite:I = 0x7

.field private static final Id_isNaN:I = 0x8

.field private static final Id_isXMLName:I = 0x9

.field private static final Id_new_CommonError:I = 0xe

.field private static final Id_parseFloat:I = 0xa

.field private static final Id_parseInt:I = 0xb

.field private static final Id_unescape:I = 0xc

.field private static final Id_uneval:I = 0xd

.field private static final LAST_SCOPE_FUNCTION_ID:I = 0xd

.field private static final URI_DECODE_RESERVED:Ljava/lang/String; = ";/?:@&=+$,#"

.field static final serialVersionUID:J = 0x546211ef26c230caL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Global"

    .line 753
    sput-object v0, Lorg/mozilla/javascript/NativeGlobal;->FTAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructError(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/EcmaError;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 507
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    return-object p0
.end method

.method public static constructError(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;IILjava/lang/String;)Lorg/mozilla/javascript/EcmaError;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p1

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move-object v4, p7

    move v5, p6

    .line 525
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    return-object p0
.end method

.method private static decode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 613
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-eq v3, v1, :cond_18

    .line 614
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x25

    if-eq v6, v7, :cond_1

    if-eqz v4, :cond_0

    add-int/lit8 v7, v5, 0x1

    .line 617
    aput-char v6, v4, v5

    move v5, v7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    .line 624
    new-array v4, v1, [C

    .line 625
    invoke-virtual {v0, v2, v3, v4, v2}, Ljava/lang/String;->getChars(II[CI)V

    move v5, v3

    :cond_2
    add-int/lit8 v6, v3, 0x3

    if-gt v6, v1, :cond_17

    add-int/lit8 v8, v3, 0x1

    .line 631
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v3, 0x2

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v8, v9}, Lorg/mozilla/javascript/NativeGlobal;->unHex(CC)I

    move-result v8

    if-ltz v8, :cond_16

    and-int/lit16 v9, v8, 0x80

    if-nez v9, :cond_3

    int-to-char v7, v8

    move v13, v6

    goto/16 :goto_5

    :cond_3
    and-int/lit16 v9, v8, 0xc0

    const/16 v10, 0x80

    if-eq v9, v10, :cond_15

    and-int/lit8 v9, v8, 0x20

    const/high16 v11, 0x10000

    if-nez v9, :cond_4

    and-int/lit8 v8, v8, 0x1f

    const/4 v9, 0x1

    const/16 v12, 0x80

    goto :goto_1

    :cond_4
    and-int/lit8 v9, v8, 0x10

    if-nez v9, :cond_5

    and-int/lit8 v8, v8, 0xf

    const/16 v9, 0x800

    const/4 v12, 0x2

    const/4 v9, 0x2

    const/16 v12, 0x800

    goto :goto_1

    :cond_5
    and-int/lit8 v9, v8, 0x8

    if-nez v9, :cond_6

    and-int/lit8 v8, v8, 0x7

    const/4 v9, 0x3

    const/high16 v12, 0x10000

    goto :goto_1

    :cond_6
    and-int/lit8 v9, v8, 0x4

    if-nez v9, :cond_7

    and-int/lit8 v8, v8, 0x3

    const/high16 v9, 0x200000

    const/4 v12, 0x4

    const/4 v9, 0x4

    const/high16 v12, 0x200000

    goto :goto_1

    :cond_7
    and-int/lit8 v9, v8, 0x2

    if-nez v9, :cond_14

    const/4 v9, 0x5

    and-int/lit8 v8, v8, 0x1

    const/high16 v12, 0x4000000

    :goto_1
    mul-int/lit8 v13, v9, 0x3

    add-int/2addr v13, v6

    if-gt v13, v1, :cond_13

    move v13, v6

    const/4 v6, 0x0

    :goto_2
    if-eq v6, v9, :cond_a

    .line 665
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v7, :cond_9

    add-int/lit8 v14, v13, 0x1

    .line 667
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    add-int/lit8 v15, v13, 0x2

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v14, v15}, Lorg/mozilla/javascript/NativeGlobal;->unHex(CC)I

    move-result v14

    if-ltz v14, :cond_8

    and-int/lit16 v15, v14, 0xc0

    if-ne v15, v10, :cond_8

    shl-int/lit8 v8, v8, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v8, v14

    add-int/lit8 v13, v13, 0x3

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 669
    :cond_8
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 666
    :cond_9
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_a
    const v6, 0xd800

    if-lt v8, v12, :cond_d

    if-lt v8, v6, :cond_b

    const v7, 0xdfff

    if-gt v8, v7, :cond_b

    goto :goto_3

    :cond_b
    const v7, 0xfffe

    if-eq v8, v7, :cond_c

    const v7, 0xffff

    if-ne v8, v7, :cond_e

    :cond_c
    const v8, 0xfffd

    goto :goto_4

    :cond_d
    :goto_3
    const v8, 0x7fffffff

    :cond_e
    :goto_4
    if-lt v8, v11, :cond_10

    sub-int/2addr v8, v11

    const v7, 0xfffff

    if-gt v8, v7, :cond_f

    ushr-int/lit8 v7, v8, 0xa

    add-int/2addr v7, v6

    int-to-char v6, v7

    and-int/lit16 v7, v8, 0x3ff

    const v8, 0xdc00

    add-int/2addr v7, v8

    int-to-char v7, v7

    add-int/lit8 v8, v5, 0x1

    .line 687
    aput-char v6, v4, v5

    move v5, v8

    goto :goto_5

    .line 683
    :cond_f
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_10
    int-to-char v7, v8

    :goto_5
    if-eqz p1, :cond_11

    const-string v6, ";/?:@&=+$,#"

    .line 692
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_11

    :goto_6
    if-eq v3, v13, :cond_12

    add-int/lit8 v6, v5, 0x1

    .line 694
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v4, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v6

    goto :goto_6

    :cond_11
    add-int/lit8 v3, v5, 0x1

    .line 697
    aput-char v7, v4, v5

    move v5, v3

    :cond_12
    move v3, v13

    goto/16 :goto_0

    .line 663
    :cond_13
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 660
    :cond_14
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 642
    :cond_15
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 632
    :cond_16
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 630
    :cond_17
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_18
    if-nez v4, :cond_19

    goto :goto_7

    .line 701
    :cond_19
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v2, v5}, Ljava/lang/String;-><init>([CII)V

    :goto_7
    return-object v0
.end method

.method private static encode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10

    .line 541
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_9

    .line 542
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 543
    invoke-static {v5, p1}, Lorg/mozilla/javascript/NativeGlobal;->encodeUnescaped(CZ)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v3, :cond_8

    .line 545
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_0
    if-nez v3, :cond_1

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x3

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 550
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v4, 0x6

    .line 552
    new-array v4, v4, [B

    :cond_1
    const v6, 0xdfff

    const v7, 0xdc00

    if-gt v7, v5, :cond_3

    if-le v5, v6, :cond_2

    goto :goto_1

    .line 555
    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    const v8, 0xd800

    if-lt v5, v8, :cond_7

    const v9, 0xdbff

    if-ge v9, v5, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    if-eq v2, v0, :cond_6

    .line 565
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-gt v7, v9, :cond_5

    if-gt v9, v6, :cond_5

    sub-int/2addr v5, v8

    shl-int/lit8 v5, v5, 0xa

    sub-int/2addr v9, v7

    add-int/2addr v5, v9

    const/high16 v6, 0x10000

    add-int/2addr v5, v6

    goto :goto_2

    .line 567
    :cond_5
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    .line 563
    :cond_6
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    .line 571
    :cond_7
    :goto_2
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeGlobal;->oneUcs4ToUtf8Char([BI)I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_8

    .line 573
    aget-byte v7, v4, v6

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x25

    .line 574
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v8, v7, 0x4

    .line 575
    invoke-static {v8}, Lorg/mozilla/javascript/NativeGlobal;->toHexChar(I)C

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v7, v7, 0xf

    .line 576
    invoke-static {v7}, Lorg/mozilla/javascript/NativeGlobal;->toHexChar(I)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    if-nez v3, :cond_a

    goto :goto_5

    .line 580
    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_5
    return-object p0
.end method

.method private static encodeUnescaped(CZ)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x41

    if-gt v1, p0, :cond_0

    const/16 v1, 0x5a

    if-le p0, v1, :cond_2

    :cond_0
    const/16 v1, 0x61

    if-gt v1, p0, :cond_1

    const/16 v1, 0x7a

    if-le p0, v1, :cond_2

    :cond_1
    const/16 v1, 0x30

    if-gt v1, p0, :cond_3

    const/16 v1, 0x39

    if-gt p0, v1, :cond_3

    :cond_2
    return v0

    :cond_3
    const-string v1, "-_.!~*\'()"

    .line 709
    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const-string p1, ";/?:@&=+$,#"

    .line 713
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_6
    return v1
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 16

    move-object/from16 v7, p1

    .line 30
    new-instance v8, Lorg/mozilla/javascript/NativeGlobal;

    invoke-direct {v8}, Lorg/mozilla/javascript/NativeGlobal;-><init>()V

    const/4 v9, 0x1

    const/4 v10, 0x1

    :goto_0
    const/16 v0, 0xd

    const/4 v11, 0x2

    if-gt v10, v0, :cond_1

    packed-switch v10, :pswitch_data_0

    .line 77
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_3

    :pswitch_0
    const-string v0, "uneval"

    goto :goto_1

    :pswitch_1
    const-string v0, "unescape"

    goto :goto_1

    :pswitch_2
    const-string v0, "parseInt"

    move-object v4, v0

    const/4 v5, 0x2

    goto :goto_2

    :pswitch_3
    const-string v0, "parseFloat"

    goto :goto_1

    :pswitch_4
    const-string v0, "isXMLName"

    goto :goto_1

    :pswitch_5
    const-string v0, "isNaN"

    goto :goto_1

    :pswitch_6
    const-string v0, "isFinite"

    goto :goto_1

    :pswitch_7
    const-string v0, "eval"

    goto :goto_1

    :pswitch_8
    const-string v0, "escape"

    goto :goto_1

    :pswitch_9
    const-string v0, "encodeURIComponent"

    goto :goto_1

    :pswitch_a
    const-string v0, "encodeURI"

    goto :goto_1

    :pswitch_b
    const-string v0, "decodeURIComponent"

    goto :goto_1

    :pswitch_c
    const-string v0, "decodeURI"

    :goto_1
    move-object v4, v0

    const/4 v5, 0x1

    .line 79
    :goto_2
    new-instance v11, Lorg/mozilla/javascript/IdFunctionObject;

    sget-object v2, Lorg/mozilla/javascript/NativeGlobal;->FTAG:Ljava/lang/Object;

    move-object v0, v11

    move-object v1, v8

    move v3, v10

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V

    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {v11}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    .line 84
    :cond_0
    invoke-virtual {v11}, Lorg/mozilla/javascript/IdFunctionObject;->exportAsScopeProperty()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :goto_3
    const/4 v0, 0x0

    .line 77
    throw v0

    .line 87
    :cond_1
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    const/4 v1, 0x7

    const-string v2, "NaN"

    invoke-static {v7, v2, v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 90
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const-string v2, "Infinity"

    invoke-static {v7, v2, v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 94
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const-string v2, "undefined"

    invoke-static {v7, v2, v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 102
    invoke-static {}, Lorg/mozilla/javascript/TopLevel$NativeErrors;->values()[Lorg/mozilla/javascript/TopLevel$NativeErrors;

    move-result-object v9

    array-length v10, v9

    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v10, :cond_4

    aget-object v0, v9, v12

    .line 103
    sget-object v1, Lorg/mozilla/javascript/TopLevel$NativeErrors;->Error:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    if-ne v0, v1, :cond_2

    move-object/from16 v13, p0

    goto :goto_5

    .line 107
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 108
    sget-object v0, Lorg/mozilla/javascript/TopLevel$Builtins;->Error:Lorg/mozilla/javascript/TopLevel$Builtins;

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    move-object/from16 v13, p0

    invoke-static {v13, v7, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->newBuiltinObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lorg/mozilla/javascript/ScriptableObject;

    const-string v0, "name"

    .line 112
    invoke-virtual {v14, v0, v14, v4}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    const-string v0, "message"

    const-string v1, ""

    .line 113
    invoke-virtual {v14, v0, v14, v1}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 114
    new-instance v15, Lorg/mozilla/javascript/IdFunctionObject;

    sget-object v2, Lorg/mozilla/javascript/NativeGlobal;->FTAG:Ljava/lang/Object;

    const/16 v3, 0xe

    const/4 v5, 0x1

    move-object v0, v15

    move-object v1, v8

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V

    .line 117
    invoke-virtual {v15, v14}, Lorg/mozilla/javascript/IdFunctionObject;->markAsConstructor(Lorg/mozilla/javascript/Scriptable;)V

    const-string v0, "constructor"

    .line 118
    invoke-virtual {v14, v0, v14, v15}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v14, v0, v11}, Lorg/mozilla/javascript/ScriptableObject;->setAttributes(Ljava/lang/String;I)V

    if-eqz p2, :cond_3

    .line 121
    invoke-virtual {v14}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    .line 122
    invoke-virtual {v15}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    .line 124
    :cond_3
    invoke-virtual {v15}, Lorg/mozilla/javascript/IdFunctionObject;->exportAsScopeProperty()V

    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method static isEvalFunction(Ljava/lang/Object;)Z
    .locals 1

    .line 488
    instance-of v0, p0, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v0, :cond_0

    .line 489
    check-cast p0, Lorg/mozilla/javascript/IdFunctionObject;

    .line 490
    sget-object v0, Lorg/mozilla/javascript/NativeGlobal;->FTAG:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private js_escape([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x0

    .line 376
    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    .line 379
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 380
    aget-object p1, p1, v3

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    cmpl-double p1, v4, v4

    if-nez p1, :cond_0

    double-to-int p1, v4

    int-to-double v6, p1

    cmpl-double v2, v6, v4

    if-nez v2, :cond_0

    and-int/lit8 v2, p1, -0x8

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "msg.bad.esc.mask"

    .line 384
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x7

    :goto_0
    const/4 v2, 0x0

    .line 389
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_1
    if-eq v0, v4, :cond_c

    .line 390
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-eqz p1, :cond_6

    const/16 v7, 0x30

    if-lt v5, v7, :cond_2

    const/16 v7, 0x39

    if-le v5, v7, :cond_5

    :cond_2
    const/16 v7, 0x41

    if-lt v5, v7, :cond_3

    const/16 v7, 0x5a

    if-le v5, v7, :cond_5

    :cond_3
    const/16 v7, 0x61

    if-lt v5, v7, :cond_4

    const/16 v7, 0x7a

    if-le v5, v7, :cond_5

    :cond_4
    const/16 v7, 0x40

    if-eq v5, v7, :cond_5

    const/16 v7, 0x2a

    if-eq v5, v7, :cond_5

    const/16 v7, 0x5f

    if-eq v5, v7, :cond_5

    const/16 v7, 0x2d

    if-eq v5, v7, :cond_5

    const/16 v7, 0x2e

    if-eq v5, v7, :cond_5

    and-int/lit8 v7, p1, 0x4

    if-eqz v7, :cond_6

    const/16 v7, 0x2f

    if-eq v5, v7, :cond_5

    if-ne v5, v6, :cond_6

    :cond_5
    if-eqz v2, :cond_b

    int-to-char v5, v5

    .line 398
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    if-nez v2, :cond_7

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, 0x3

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 403
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_7
    const/16 v7, 0x100

    const/4 v8, 0x2

    const/16 v9, 0x25

    const/4 v10, 0x4

    if-ge v5, v7, :cond_9

    const/16 v7, 0x20

    if-ne v5, v7, :cond_8

    if-ne p1, v8, :cond_8

    .line 410
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 413
    :cond_8
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 416
    :cond_9
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x75

    .line 417
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x4

    :goto_2
    sub-int/2addr v8, v3

    mul-int/lit8 v8, v8, 0x4

    :goto_3
    if-ltz v8, :cond_b

    shr-int v6, v5, v8

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0xa

    if-ge v6, v7, :cond_a

    add-int/lit8 v6, v6, 0x30

    goto :goto_4

    :cond_a
    add-int/lit8 v6, v6, 0x37

    :goto_4
    int-to-char v6, v6

    .line 425
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x4

    goto :goto_3

    :cond_b
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_c
    if-nez v2, :cond_d

    goto :goto_6

    .line 430
    :cond_d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    return-object v1
.end method

.method private js_eval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 482
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v4, "eval code"

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, v2

    move-object v3, p3

    .line 483
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptRuntime;->evalSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static js_parseFloat([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 263
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 264
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 266
    aget-object p0, p0, v0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ne v3, v2, :cond_1

    .line 273
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object p0

    .line 275
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 276
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->isStrWhiteSpaceChar(I)Z

    move-result v5

    if-nez v5, :cond_12

    const/16 v5, 0x2b

    const/16 v6, 0x2d

    if-eq v4, v5, :cond_3

    if-ne v4, v6, :cond_2

    goto :goto_1

    :cond_2
    move v7, v3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v4, v3, 0x1

    if-ne v4, v2, :cond_4

    .line 286
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object p0

    .line 288
    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v12, v7

    move v7, v4

    move v4, v12

    :goto_2
    const/16 v8, 0x49

    if-ne v4, v8, :cond_7

    add-int/lit8 v1, v7, 0x8

    if-gt v1, v2, :cond_6

    const/16 v1, 0x8

    const-string v2, "Infinity"

    .line 293
    invoke-virtual {p0, v7, v2, v0, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 295
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v6, :cond_5

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_3

    :cond_5
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 300
    :goto_3
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 302
    :cond_6
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object p0

    :cond_7
    const/4 v4, -0x1

    const/4 v0, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    :goto_4
    if-ge v7, v2, :cond_10

    .line 310
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v5, :cond_d

    const/16 v11, 0x45

    if-eq v10, v11, :cond_a

    const/16 v11, 0x65

    if-eq v10, v11, :cond_a

    if-eq v10, v6, :cond_d

    const/16 v11, 0x2e

    if-eq v10, v11, :cond_8

    packed-switch v10, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    if-eq v0, v4, :cond_f

    const/4 v9, 0x1

    goto :goto_5

    :cond_8
    if-eq v8, v4, :cond_9

    goto :goto_6

    :cond_9
    move v8, v7

    goto :goto_5

    :cond_a
    if-eq v0, v4, :cond_b

    goto :goto_6

    :cond_b
    add-int/lit8 v10, v2, -0x1

    if-ne v7, v10, :cond_c

    goto :goto_6

    :cond_c
    move v0, v7

    goto :goto_5

    :cond_d
    add-int/lit8 v10, v7, -0x1

    if-eq v0, v10, :cond_e

    goto :goto_6

    :cond_e
    add-int/lit8 v10, v2, -0x1

    if-ne v7, v10, :cond_f

    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    :cond_f
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_10
    :goto_6
    if-eq v0, v4, :cond_11

    if-nez v9, :cond_11

    goto :goto_7

    :cond_11
    move v0, v7

    .line 353
    :goto_7
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 355
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 358
    :catch_0
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object p0

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static js_parseInt([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x0

    .line 207
    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 208
    invoke-static {p0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32([Ljava/lang/Object;I)I

    move-result p0

    .line 210
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 212
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object p0

    :cond_0
    const/4 v4, 0x0

    .line 218
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 219
    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->isStrWhiteSpaceChar(I)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v3, :cond_1

    :goto_0
    const/16 v6, 0x2b

    if-eq v5, v6, :cond_4

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    :cond_5
    const/16 v5, 0x58

    const/16 v6, 0x78

    const/16 v7, 0x10

    const/4 v8, -0x1

    const/16 v9, 0x30

    if-nez p0, :cond_6

    const/4 p0, -0x1

    goto :goto_1

    :cond_6
    const/4 v10, 0x2

    if-lt p0, v10, :cond_e

    const/16 v10, 0x24

    if-le p0, v10, :cond_7

    goto :goto_4

    :cond_7
    if-ne p0, v7, :cond_9

    sub-int v10, v3, v4

    if-le v10, v2, :cond_9

    .line 232
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v9, :cond_9

    add-int/lit8 v10, v4, 0x1

    .line 233
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v6, :cond_8

    if-ne v10, v5, :cond_9

    :cond_8
    add-int/lit8 v4, v4, 0x2

    :cond_9
    :goto_1
    if-ne p0, v8, :cond_c

    const/16 p0, 0xa

    sub-int/2addr v3, v4

    if-le v3, v2, :cond_c

    .line 240
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_c

    add-int/lit8 v2, v4, 0x1

    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_b

    if-ne v3, v5, :cond_a

    goto :goto_2

    :cond_a
    if-gt v9, v3, :cond_c

    const/16 v5, 0x39

    if-gt v3, v5, :cond_c

    const/16 v7, 0x8

    move v4, v2

    const/16 p0, 0x8

    goto :goto_3

    :cond_b
    :goto_2
    add-int/lit8 v4, v4, 0x2

    const/16 p0, 0x10

    .line 252
    :cond_c
    :goto_3
    invoke-static {v1, v4, p0}, Lorg/mozilla/javascript/ScriptRuntime;->stringToNumber(Ljava/lang/String;II)D

    move-result-wide v1

    if-eqz v0, :cond_d

    neg-double v1, v1

    .line 253
    :cond_d
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 231
    :cond_e
    :goto_4
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object p0
.end method

.method private js_unescape([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    .line 439
    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x25

    .line 440
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_4

    .line 442
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 443
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    move v4, v2

    :goto_0
    if-eq v2, v3, :cond_3

    .line 446
    aget-char v5, p1, v2

    add-int/lit8 v2, v2, 0x1

    if-ne v5, v1, :cond_2

    if-eq v2, v3, :cond_2

    .line 450
    aget-char v6, p1, v2

    const/16 v7, 0x75

    if-ne v6, v7, :cond_0

    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v2, 0x5

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v2, 0x2

    move v6, v2

    :goto_1
    if-gt v7, v3, :cond_2

    const/4 v8, 0x0

    :goto_2
    if-eq v6, v7, :cond_1

    .line 460
    aget-char v9, p1, v6

    invoke-static {v9, v8}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    if-ltz v8, :cond_2

    int-to-char v5, v8

    move v2, v7

    .line 468
    :cond_2
    aput-char v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 471
    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0, v4}, Ljava/lang/String;-><init>([CII)V

    move-object p1, v1

    :cond_4
    return-object p1
.end method

.method private static oneUcs4ToUtf8Char([BI)I
    .locals 5

    and-int/lit8 v0, p1, -0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    int-to-byte p1, p1

    .line 734
    aput-byte p1, p0, v1

    goto :goto_2

    :cond_0
    ushr-int/lit8 v0, p1, 0xb

    const/4 v3, 0x2

    :goto_0
    if-eqz v0, :cond_1

    ushr-int/lit8 v0, v0, 0x5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, p1

    move p1, v3

    :goto_1
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_2

    and-int/lit8 v4, v0, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 745
    aput-byte v4, p0, p1

    ushr-int/lit8 v0, v0, 0x6

    goto :goto_1

    :cond_2
    rsub-int/lit8 p1, v3, 0x8

    shl-int p1, v2, p1

    rsub-int p1, p1, 0x100

    add-int/2addr p1, v0

    int-to-byte p1, p1

    .line 748
    aput-byte p1, p0, v1

    move v2, v3

    :goto_2
    return v2
.end method

.method private static toHexChar(I)C
    .locals 1

    shr-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x30

    goto :goto_0

    :cond_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x41

    :goto_0
    int-to-char p0, p0

    return p0

    .line 584
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    throw p0
.end method

.method private static unHex(C)I
    .locals 2

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v1, 0x46

    if-gt p0, v1, :cond_0

    :goto_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v1, 0x39

    if-gt p0, v1, :cond_2

    sub-int/2addr p0, v0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static unHex(CC)I
    .locals 0

    .line 601
    invoke-static {p0}, Lorg/mozilla/javascript/NativeGlobal;->unHex(C)I

    move-result p0

    .line 602
    invoke-static {p1}, Lorg/mozilla/javascript/NativeGlobal;->unHex(C)I

    move-result p1

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    shl-int/lit8 p0, p0, 0x4

    or-int/2addr p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static uriError()Lorg/mozilla/javascript/EcmaError;
    .locals 2

    const-string v0, "msg.bad.uri"

    .line 719
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "URIError"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 131
    sget-object p4, Lorg/mozilla/javascript/NativeGlobal;->FTAG:Ljava/lang/Object;

    invoke-virtual {p1, p4}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 132
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p4, :pswitch_data_0

    goto/16 :goto_5

    .line 197
    :pswitch_0
    invoke-static {p2, p3, p1, p5}, Lorg/mozilla/javascript/NativeError;->make(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeError;

    move-result-object p1

    return-object p1

    .line 189
    :pswitch_1
    array-length p1, p5

    if-eqz p1, :cond_0

    aget-object p1, p5, v1

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 191
    :goto_0
    invoke-static {p2, p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->uneval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 186
    :pswitch_2
    invoke-direct {p0, p5}, Lorg/mozilla/javascript/NativeGlobal;->js_unescape([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 183
    :pswitch_3
    invoke-static {p5}, Lorg/mozilla/javascript/NativeGlobal;->js_parseInt([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 180
    :pswitch_4
    invoke-static {p5}, Lorg/mozilla/javascript/NativeGlobal;->js_parseFloat([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 172
    :pswitch_5
    array-length p1, p5

    if-nez p1, :cond_1

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    aget-object p1, p5, v1

    .line 174
    :goto_1
    invoke-static {p3}, Lorg/mozilla/javascript/xml/XMLLib;->extractFromScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/xml/XMLLib;

    move-result-object p3

    .line 175
    invoke-virtual {p3, p2, p1}, Lorg/mozilla/javascript/xml/XMLLib;->isXMLName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 162
    :pswitch_6
    array-length p1, p5

    if-ge p1, v0, :cond_2

    goto :goto_2

    .line 165
    :cond_2
    aget-object p1, p5, v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    cmpl-double p3, p1, p1

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 168
    :goto_2
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 153
    :pswitch_7
    array-length p1, p5

    if-ge p1, v0, :cond_4

    .line 154
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 156
    :cond_4
    aget-object p1, p5, v1

    invoke-static {p1}, Lorg/mozilla/javascript/NativeNumber;->isFinite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 150
    :pswitch_8
    invoke-direct {p0, p2, p3, p5}, Lorg/mozilla/javascript/NativeGlobal;->js_eval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 147
    :pswitch_9
    invoke-direct {p0, p5}, Lorg/mozilla/javascript/NativeGlobal;->js_escape([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 142
    :pswitch_a
    invoke-static {p5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    if-ne p4, p2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 143
    :goto_3
    invoke-static {p1, v0}, Lorg/mozilla/javascript/NativeGlobal;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 136
    :pswitch_b
    invoke-static {p5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    if-ne p4, v0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    .line 137
    :goto_4
    invoke-static {p1, v0}, Lorg/mozilla/javascript/NativeGlobal;->decode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 200
    :cond_7
    :goto_5
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->unknown()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_a
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
