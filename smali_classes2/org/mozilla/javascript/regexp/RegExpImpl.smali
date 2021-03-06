.class public Lorg/mozilla/javascript/regexp/RegExpImpl;
.super Ljava/lang/Object;
.source "RegExpImpl.java"

# interfaces
.implements Lorg/mozilla/javascript/RegExpProxy;


# instance fields
.field protected input:Ljava/lang/String;

.field protected lastMatch:Lorg/mozilla/javascript/regexp/SubString;

.field protected lastParen:Lorg/mozilla/javascript/regexp/SubString;

.field protected leftContext:Lorg/mozilla/javascript/regexp/SubString;

.field protected multiline:Z

.field protected parens:[Lorg/mozilla/javascript/regexp/SubString;

.field protected rightContext:Lorg/mozilla/javascript/regexp/SubString;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;IZ)Lorg/mozilla/javascript/regexp/NativeRegExp;
    .locals 3

    .line 127
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 128
    array-length v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    aget-object v0, p2, v1

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    aget-object v0, p2, v1

    instance-of v0, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-eqz v0, :cond_1

    .line 132
    aget-object p0, p2, v1

    check-cast p0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-object p2, p0

    goto :goto_2

    .line 134
    :cond_1
    aget-object v0, p2, v1

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 136
    array-length v2, p2

    if-ge p3, v2, :cond_2

    .line 137
    aput-object v0, p2, v1

    .line 138
    aget-object p2, p2, p3

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 142
    :goto_0
    invoke-static {p0, v0, p2, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    move-result-object p0

    .line 143
    new-instance p2, Lorg/mozilla/javascript/regexp/NativeRegExp;

    invoke-direct {p2, p1, p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RECompiled;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string p2, ""

    .line 129
    invoke-static {p0, p2, p2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    move-result-object p0

    .line 130
    new-instance p2, Lorg/mozilla/javascript/regexp/NativeRegExp;

    invoke-direct {p2, p1, p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RECompiled;)V

    :goto_2
    return-object p2
.end method

.method private static do_replace(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;)V
    .locals 8

    .line 479
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    .line 481
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    .line 482
    iget p0, p0, Lorg/mozilla/javascript/regexp/GlobData;->dollar:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p0, v3, :cond_3

    const/4 v3, 0x1

    .line 484
    new-array v3, v3, [I

    const/4 v4, 0x0

    .line 487
    :cond_0
    invoke-virtual {v1, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-static {p1, p2, v1, p0, v3}, Lorg/mozilla/javascript/regexp/RegExpImpl;->interpretDollar(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;I[I)Lorg/mozilla/javascript/regexp/SubString;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 492
    iget v5, v4, Lorg/mozilla/javascript/regexp/SubString;->length:I

    if-lez v5, :cond_1

    .line 494
    iget-object v6, v4, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    iget v4, v4, Lorg/mozilla/javascript/regexp/SubString;->index:I

    add-int/2addr v5, v4

    invoke-virtual {v0, v6, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 496
    :cond_1
    aget v4, v3, v2

    add-int/2addr v4, p0

    .line 497
    aget v5, v3, v2

    add-int/2addr p0, v5

    goto :goto_0

    :cond_2
    add-int/lit8 v4, p0, 0x1

    move v7, v4

    move v4, p0

    move p0, v7

    :goto_0
    const/16 v5, 0x24

    .line 501
    invoke-virtual {v1, v5, p0}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    if-gez p0, :cond_0

    move v2, v4

    .line 504
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-le p0, v2, :cond_4

    .line 506
    invoke-virtual {v1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    return-void
.end method

.method private static find_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILorg/mozilla/javascript/RegExpProxy;Lorg/mozilla/javascript/Scriptable;[I[I[Z[[Ljava/lang/String;)I
    .locals 11

    move-object v3, p2

    move-object v4, p3

    move v0, p4

    const/4 v1, 0x0

    .line 626
    aget v2, p7, v1

    .line 627
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x78

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne v0, v6, :cond_5

    if-nez p6, :cond_5

    .line 634
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v8, :cond_5

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-ne v9, v10, :cond_5

    if-nez v2, :cond_1

    :goto_0
    if-ge v2, v5, :cond_0

    .line 639
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 641
    :cond_0
    aput v2, p7, v1

    :cond_1
    if-ne v2, v5, :cond_2

    return v7

    :cond_2
    :goto_1
    if-ge v2, v5, :cond_3

    .line 650
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_2
    if-ge v0, v5, :cond_4

    .line 655
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    sub-int/2addr v0, v2

    .line 659
    aput v0, p8, v1

    return v2

    :cond_5
    if-le v2, v5, :cond_6

    return v7

    :cond_6
    if-eqz p6, :cond_7

    move-object/from16 v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    .line 682
    invoke-interface/range {v0 .. v9}, Lorg/mozilla/javascript/RegExpProxy;->find_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;[I[I[Z[[Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_7
    if-eqz v0, :cond_8

    const/16 v9, 0x82

    if-ge v0, v9, :cond_8

    if-nez v5, :cond_8

    return v7

    .line 705
    :cond_8
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_c

    if-ne v0, v6, :cond_a

    if-ne v2, v5, :cond_9

    .line 708
    aput v8, p8, v1

    return v2

    :cond_9
    add-int/2addr v2, v8

    return v2

    :cond_a
    if-ne v2, v5, :cond_b

    goto :goto_3

    :cond_b
    add-int/lit8 v7, v2, 0x1

    :goto_3
    return v7

    .line 719
    :cond_c
    aget v0, p7, v1

    if-lt v0, v5, :cond_d

    return v5

    .line 722
    :cond_d
    aget v0, p7, v1

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_e

    move v5, v0

    :cond_e
    return v5
.end method

.method private static interpretDollar(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;I[I)Lorg/mozilla/javascript/regexp/SubString;
    .locals 7

    .line 389
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x24

    const/4 v2, 0x0

    if-ne v0, v1, :cond_10

    .line 392
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p0

    const/16 v0, 0x8c

    if-eqz p0, :cond_0

    if-gt p0, v0, :cond_0

    if-lez p3, :cond_0

    add-int/lit8 v3, p3, -0x1

    .line 396
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    return-object v2

    .line 399
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, p3, 0x1

    if-lt v4, v3, :cond_1

    return-object v2

    .line 403
    :cond_1
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 404
    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_9

    const/16 v1, 0x30

    if-eqz p0, :cond_4

    if-gt p0, v0, :cond_4

    if-ne v4, v1, :cond_2

    return-object v2

    :cond_2
    move p0, p3

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 p0, p0, 0x1

    if-ge p0, v3, :cond_8

    .line 414
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_8

    mul-int/lit8 v2, v0, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v1, v2

    if-ge v1, v0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_0

    .line 423
    :cond_4
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    if-nez p0, :cond_5

    const/4 p0, 0x0

    goto :goto_1

    :cond_5
    array-length p0, p0

    :goto_1
    sub-int/2addr v4, v1

    if-le v4, p0, :cond_6

    return-object v2

    :cond_6
    add-int/lit8 v0, p3, 0x2

    if-ge v0, v3, :cond_7

    .line 429
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 430
    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_7

    mul-int/lit8 v3, v4, 0xa

    sub-int/2addr p2, v1

    add-int/2addr v3, p2

    if-gt v3, p0, :cond_7

    add-int/lit8 v0, v0, 0x1

    move p0, v0

    move v0, v3

    goto :goto_2

    :cond_7
    move p0, v0

    move v0, v4

    :goto_2
    if-nez v0, :cond_8

    return-object v2

    :cond_8
    :goto_3
    add-int/lit8 v0, v0, -0x1

    sub-int/2addr p0, p3

    .line 442
    aput p0, p4, v6

    .line 443
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/regexp/RegExpImpl;->getParenSubString(I)Lorg/mozilla/javascript/regexp/SubString;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p2, 0x2

    .line 446
    aput p2, p4, v6

    if-eq v4, v1, :cond_f

    const/16 p2, 0x2b

    if-eq v4, p2, :cond_e

    const/16 p2, 0x60

    if-eq v4, p2, :cond_c

    const/16 p0, 0x26

    if-eq v4, p0, :cond_b

    const/16 p0, 0x27

    if-eq v4, p0, :cond_a

    return-object v2

    .line 468
    :cond_a
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    return-object p0

    .line 451
    :cond_b
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    return-object p0

    :cond_c
    const/16 p2, 0x78

    if-ne p0, p2, :cond_d

    .line 463
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iput v6, p0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    .line 464
    iget-object p2, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    iget p2, p2, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iput p2, p0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 466
    :cond_d
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    return-object p0

    .line 453
    :cond_e
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    return-object p0

    .line 449
    :cond_f
    new-instance p0, Lorg/mozilla/javascript/regexp/SubString;

    const-string p1, "$"

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 389
    :cond_10
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v2
.end method

.method private static matchOrReplace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/regexp/RegExpImpl;Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/regexp/NativeRegExp;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 156
    iget-object v9, v8, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    .line 157
    invoke-virtual/range {p6 .. p6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getFlags()I

    move-result v0

    const/4 v10, 0x1

    and-int/2addr v0, v10

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v8, Lorg/mozilla/javascript/regexp/GlobData;->global:Z

    .line 158
    new-array v12, v10, [I

    aput v11, v12, v11

    .line 160
    iget v0, v8, Lorg/mozilla/javascript/regexp/GlobData;->mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/4 v6, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object v4, v9

    move-object v5, v12

    .line 161
    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, v7, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iget v0, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_5

    :cond_1
    const/4 v0, -0x1

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_5

    .line 167
    :cond_2
    iget-boolean v1, v8, Lorg/mozilla/javascript/regexp/GlobData;->global:Z

    const/4 v13, 0x2

    if-eqz v1, :cond_9

    const-wide/16 v0, 0x0

    .line 168
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object/from16 v14, p6

    iput-object v0, v14, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 169
    :goto_1
    aget v1, v12, v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_b

    const/16 v16, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object v4, v9

    move-object v5, v12

    move v15, v6

    move/from16 v6, v16

    .line 170
    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 172
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 174
    :cond_3
    iget v0, v8, Lorg/mozilla/javascript/regexp/GlobData;->mode:I

    if-ne v0, v10, :cond_4

    move-object/from16 v5, p0

    move-object/from16 v4, p1

    .line 175
    invoke-static {v8, v5, v4, v15, v7}, Lorg/mozilla/javascript/regexp/RegExpImpl;->match_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/regexp/RegExpImpl;)V

    goto :goto_2

    :cond_4
    move-object/from16 v5, p0

    move-object/from16 v4, p1

    if-ne v0, v13, :cond_7

    .line 178
    iget-object v0, v7, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    .line 179
    iget v3, v8, Lorg/mozilla/javascript/regexp/GlobData;->leftIndex:I

    .line 180
    iget v1, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    sub-int v16, v1, v3

    .line 181
    iget v0, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    add-int/2addr v1, v0

    iput v1, v8, Lorg/mozilla/javascript/regexp/GlobData;->leftIndex:I

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v17, v3

    move-object/from16 v3, p4

    move/from16 v4, v17

    move/from16 v5, v16

    .line 182
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/regexp/RegExpImpl;->replace_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;II)V

    .line 184
    :goto_2
    iget-object v0, v7, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    iget v0, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    if-nez v0, :cond_6

    .line 185
    aget v0, v12, v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_5

    goto :goto_3

    .line 187
    :cond_5
    aget v0, v12, v11

    add-int/2addr v0, v10

    aput v0, v12, v11

    :cond_6
    add-int/lit8 v0, v15, 0x1

    move-object/from16 v18, v6

    move v6, v0

    move-object/from16 v0, v18

    goto :goto_1

    .line 177
    :cond_7
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    throw v0

    :cond_8
    :goto_3
    move-object v0, v6

    goto :goto_5

    :cond_9
    move-object/from16 v14, p6

    if-ne v0, v13, :cond_a

    const/4 v6, 0x0

    goto :goto_4

    :cond_a
    const/4 v6, 0x1

    :goto_4
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object v4, v9

    move-object v5, v12

    .line 191
    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    move-result-object v0

    :cond_b
    :goto_5
    return-object v0
.end method

.method private static match_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/regexp/RegExpImpl;)V
    .locals 1

    .line 295
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 296
    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    .line 298
    :cond_0
    iget-object p1, p4, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    .line 299
    invoke-virtual {p1}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object p1

    .line 300
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, p3, p0, p1}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method private static replace_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;II)V
    .locals 7

    .line 312
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->lambda:Lorg/mozilla/javascript/Function;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 315
    iget-object v0, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    if-nez v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 316
    :cond_0
    array-length v3, v0

    :goto_0
    add-int/lit8 v4, v3, 0x3

    .line 317
    new-array v4, v4, [Ljava/lang/Object;

    .line 318
    iget-object v5, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    invoke-virtual {v5}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    :goto_1
    if-ge v2, v3, :cond_2

    .line 320
    aget-object v5, v0, v2

    if-eqz v5, :cond_1

    add-int/lit8 v6, v2, 0x1

    .line 322
    invoke-virtual {v5}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v2, 0x1

    .line 324
    sget-object v6, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aput-object v6, v4, v5

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, 0x1

    .line 327
    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iget v2, v2, Lorg/mozilla/javascript/regexp/SubString;->length:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    add-int/lit8 v3, v3, 0x2

    .line 328
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    aput-object v0, v4, v3

    .line 333
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v0

    if-ne p3, v0, :cond_3

    .line 334
    new-instance v0, Lorg/mozilla/javascript/regexp/RegExpImpl;

    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/RegExpImpl;-><init>()V

    .line 335
    iget-boolean v1, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    iput-boolean v1, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    .line 336
    iget-object v1, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    iput-object v1, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    .line 337
    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->setRegExpProxy(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/RegExpProxy;)V

    .line 339
    :try_start_0
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    .line 340
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->lambda:Lorg/mozilla/javascript/Function;

    invoke-interface {v0, p1, p2, p2, v4}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 341
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-static {p1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setRegExpProxy(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/RegExpProxy;)V

    .line 345
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 343
    invoke-static {p1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setRegExpProxy(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/RegExpProxy;)V

    throw p0

    .line 333
    :cond_3
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v1

    .line 348
    :cond_4
    iget-object p2, p0, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    .line 349
    iget v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->dollar:I

    if-ltz v0, :cond_7

    const/4 v3, 0x1

    .line 350
    new-array v3, v3, [I

    .line 353
    :cond_5
    iget-object v4, p0, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    invoke-static {p1, p3, v4, v0, v3}, Lorg/mozilla/javascript/regexp/RegExpImpl;->interpretDollar(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;I[I)Lorg/mozilla/javascript/regexp/SubString;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 356
    iget v4, v4, Lorg/mozilla/javascript/regexp/SubString;->length:I

    aget v5, v3, v2

    sub-int/2addr v4, v5

    add-int/2addr p2, v4

    .line 357
    aget v4, v3, v2

    add-int/2addr v0, v4

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 361
    :goto_3
    iget-object v4, p0, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    const/16 v5, 0x24

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_5

    :cond_7
    :goto_4
    add-int/2addr p2, p5

    .line 366
    iget-object v0, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    iget v0, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    add-int/2addr p2, v0

    .line 367
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    if-nez v0, :cond_8

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 370
    iput-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    goto :goto_5

    .line 372
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 375
    :goto_5
    iget-object p2, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iget-object p2, p2, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    add-int/2addr p5, p4

    invoke-virtual {v0, p2, p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 376
    iget-object p2, p0, Lorg/mozilla/javascript/regexp/GlobData;->lambda:Lorg/mozilla/javascript/Function;

    if-eqz p2, :cond_9

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 379
    :cond_9
    invoke-static {p0, p1, p3}, Lorg/mozilla/javascript/regexp/RegExpImpl;->do_replace(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;)V

    :goto_6
    return-void
.end method


# virtual methods
.method public action(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8

    .line 35
    new-instance v7, Lorg/mozilla/javascript/regexp/GlobData;

    invoke-direct {v7}, Lorg/mozilla/javascript/regexp/GlobData;-><init>()V

    .line 36
    iput p5, v7, Lorg/mozilla/javascript/regexp/GlobData;->mode:I

    .line 37
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p5, v1, :cond_f

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p5, v2, :cond_1

    const/4 v2, 0x3

    if-ne p5, v2, :cond_0

    .line 50
    invoke-static {p1, p2, p4, v1, v0}, Lorg/mozilla/javascript/regexp/RegExpImpl;->createRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;IZ)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object v6

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, v7

    .line 51
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/RegExpImpl;->matchOrReplace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/regexp/RegExpImpl;Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/regexp/NativeRegExp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 118
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v3

    .line 57
    :cond_1
    array-length p5, p4

    if-lez p5, :cond_2

    aget-object p5, p4, v0

    instance-of p5, p5, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-nez p5, :cond_3

    :cond_2
    array-length p5, p4

    if-le p5, v2, :cond_4

    :cond_3
    const/4 p5, 0x1

    goto :goto_0

    :cond_4
    const/4 p5, 0x0

    :goto_0
    if-eqz p5, :cond_5

    .line 62
    invoke-static {p1, p2, p4, v2, v1}, Lorg/mozilla/javascript/regexp/RegExpImpl;->createRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;IZ)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object v4

    move-object v6, v4

    move-object v4, v3

    goto :goto_2

    .line 64
    :cond_5
    array-length v4, p4

    if-ge v4, v1, :cond_6

    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_1

    :cond_6
    aget-object v4, p4, v0

    .line 65
    :goto_1
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v3

    .line 68
    :goto_2
    array-length v5, p4

    if-ge v5, v2, :cond_7

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_3

    :cond_7
    aget-object v1, p4, v1

    .line 71
    :goto_3
    instance-of v2, v1, Lorg/mozilla/javascript/Function;

    if-eqz v2, :cond_8

    .line 72
    check-cast v1, Lorg/mozilla/javascript/Function;

    move-object v2, v3

    goto :goto_4

    .line 74
    :cond_8
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v3

    .line 77
    :goto_4
    iput-object v1, v7, Lorg/mozilla/javascript/regexp/GlobData;->lambda:Lorg/mozilla/javascript/Function;

    .line 78
    iput-object v2, v7, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    if-nez v2, :cond_9

    const/4 v1, -0x1

    goto :goto_5

    :cond_9
    const/16 v1, 0x24

    .line 79
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    :goto_5
    iput v1, v7, Lorg/mozilla/javascript/regexp/GlobData;->dollar:I

    .line 80
    iput-object v3, v7, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    .line 81
    iput v0, v7, Lorg/mozilla/javascript/regexp/GlobData;->leftIndex:I

    if-eqz p5, :cond_a

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, v7

    .line 85
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/RegExpImpl;->matchOrReplace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/regexp/RegExpImpl;Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/regexp/NativeRegExp;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_6

    .line 88
    :cond_a
    iget-object p3, v7, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    .line 89
    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p4

    if-ltz p4, :cond_b

    .line 91
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p5

    .line 92
    iput-object v3, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    .line 93
    new-instance v1, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v1, p3, v0, p4}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;II)V

    iput-object v1, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 94
    new-instance v0, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v0, p3, p4, p5}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    .line 95
    new-instance v0, Lorg/mozilla/javascript/regexp/SubString;

    add-int v1, p4, p5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p4

    sub-int/2addr v2, p5

    invoke-direct {v0, p3, v1, v2}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 96
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    .line 98
    :cond_b
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 102
    :goto_6
    iget-object p4, v7, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    if-nez p4, :cond_e

    .line 103
    iget-boolean p4, v7, Lorg/mozilla/javascript/regexp/GlobData;->global:Z

    if-nez p4, :cond_d

    if-eqz p3, :cond_d

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_c

    goto :goto_7

    .line 109
    :cond_c
    iget-object p3, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 110
    iget v4, p3, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iget v5, p3, Lorg/mozilla/javascript/regexp/SubString;->length:I

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/regexp/RegExpImpl;->replace_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;II)V

    goto :goto_8

    .line 107
    :cond_d
    :goto_7
    iget-object p1, v7, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    return-object p1

    .line 112
    :cond_e
    :goto_8
    iget-object p1, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 113
    iget-object p2, v7, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    iget-object p3, p1, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    iget p4, p1, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iget p1, p1, Lorg/mozilla/javascript/regexp/SubString;->length:I

    add-int/2addr p1, p4

    invoke-virtual {p2, p3, p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 114
    iget-object p1, v7, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 42
    :cond_f
    invoke-static {p1, p2, p4, v1, v0}, Lorg/mozilla/javascript/regexp/RegExpImpl;->createRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;IZ)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object v6

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, v7

    .line 43
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/RegExpImpl;->matchOrReplace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/regexp/RegExpImpl;Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/regexp/NativeRegExp;)Ljava/lang/Object;

    move-result-object p1

    .line 45
    iget-object p2, v7, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    if-nez p2, :cond_10

    goto :goto_9

    :cond_10
    move-object p1, p2

    :goto_9
    return-object p1
.end method

.method public compileRegExp(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-static {p1, p2, p3, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    move-result-object p1

    return-object p1
.end method

.method public find_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;[I[I[Z[[Ljava/lang/String;)I
    .locals 13

    move-object v7, p0

    const/4 v8, 0x0

    .line 207
    aget v0, p6, v8

    .line 208
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v9

    .line 211
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v10

    .line 212
    move-object/from16 v11, p5

    check-cast v11, Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 216
    :goto_0
    aget v12, p6, v8

    .line 217
    aput v0, p6, v8

    const/4 v6, 0x0

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    .line 218
    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    move-result-object v0

    .line 220
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 222
    aput v12, p6, v8

    .line 223
    aput v2, p7, v8

    .line 224
    aput-boolean v8, p8, v8

    return v9

    .line 227
    :cond_0
    aget v0, p6, v8

    .line 228
    aput v12, p6, v8

    .line 229
    aput-boolean v2, p8, v8

    .line 231
    iget-object v1, v7, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    .line 232
    iget v1, v1, Lorg/mozilla/javascript/regexp/SubString;->length:I

    aput v1, p7, v8

    .line 233
    aget v1, p7, v8

    if-nez v1, :cond_3

    .line 240
    aget v1, p6, v8

    if-ne v0, v1, :cond_3

    if-ne v0, v9, :cond_2

    const/16 v1, 0x78

    if-ne v10, v1, :cond_1

    .line 249
    aput v2, p7, v8

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_3
    aget v1, p7, v8

    sub-int/2addr v0, v1

    .line 264
    :goto_1
    iget-object v1, v7, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    array-length v1, v1

    .line 265
    :goto_2
    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, p9, v8

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_5

    .line 267
    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/regexp/RegExpImpl;->getParenSubString(I)Lorg/mozilla/javascript/regexp/SubString;

    move-result-object v3

    .line 268
    aget-object v4, p9, v8

    invoke-virtual {v3}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return v0
.end method

.method getParenSubString(I)Lorg/mozilla/javascript/regexp/SubString;
    .locals 2

    .line 279
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 280
    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    return-object p1

    .line 285
    :cond_0
    sget-object p1, Lorg/mozilla/javascript/regexp/SubString;->emptySubString:Lorg/mozilla/javascript/regexp/SubString;

    return-object p1
.end method

.method public isRegExp(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 0

    .line 17
    instance-of p1, p1, Lorg/mozilla/javascript/regexp/NativeRegExp;

    return p1
.end method

.method public js_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v11, p3

    move-object/from16 v0, p4

    const/4 v12, 0x0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    .line 519
    invoke-virtual {v13, v14, v12}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v15

    .line 522
    array-length v1, v0

    const/4 v10, 0x1

    if-le v1, v10, :cond_0

    aget-object v1, v0, v10

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    if-eqz v16, :cond_1

    .line 526
    aget-object v1, v0, v10

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(Ljava/lang/Object;)J

    move-result-wide v1

    .line 527
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 528
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v10

    int-to-long v1, v1

    :cond_1
    move-wide/from16 v17, v1

    .line 532
    array-length v1, v0

    if-lt v1, v10, :cond_e

    aget-object v1, v0, v12

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v1, v2, :cond_2

    goto/16 :goto_8

    .line 538
    :cond_2
    new-array v9, v10, [I

    .line 541
    aget-object v1, v0, v12

    instance-of v1, v1, Lorg/mozilla/javascript/Scriptable;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 542
    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 544
    aget-object v3, v0, v12

    check-cast v3, Lorg/mozilla/javascript/Scriptable;

    .line 545
    invoke-interface {v1, v3}, Lorg/mozilla/javascript/RegExpProxy;->isRegExp(Lorg/mozilla/javascript/Scriptable;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v20, v1

    move-object/from16 v19, v3

    goto :goto_1

    :cond_3
    move-object/from16 v20, v1

    move-object/from16 v19, v2

    goto :goto_1

    :cond_4
    move-object/from16 v19, v2

    move-object/from16 v20, v19

    :goto_1
    if-nez v19, :cond_5

    .line 551
    aget-object v0, v0, v12

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    aput v1, v9, v12

    move-object/from16 v21, v0

    goto :goto_2

    :cond_5
    move-object/from16 v21, v2

    .line 556
    :goto_2
    new-array v8, v10, [I

    aput v12, v8, v12

    .line 559
    new-array v7, v10, [Z

    aput-boolean v12, v7, v12

    .line 560
    new-array v6, v10, [[Ljava/lang/String;

    aput-object v2, v6, v12

    .line 561
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v5

    const/4 v4, 0x0

    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v21

    move v12, v4

    move v4, v5

    move v13, v5

    move-object/from16 v5, v20

    move-object/from16 v23, v6

    move-object/from16 v6, v19

    move-object/from16 v24, v7

    move-object v7, v8

    move-object/from16 v25, v8

    move-object v8, v9

    move-object/from16 v26, v9

    move-object/from16 v9, v24

    const/4 v14, 0x1

    move-object/from16 v10, v23

    .line 564
    invoke-static/range {v0 .. v10}, Lorg/mozilla/javascript/regexp/RegExpImpl;->find_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILorg/mozilla/javascript/RegExpProxy;Lorg/mozilla/javascript/Scriptable;[I[I[Z[[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d

    if-eqz v16, :cond_6

    int-to-long v1, v12

    cmp-long v3, v1, v17

    if-gez v3, :cond_d

    .line 566
    :cond_6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_7

    goto/16 :goto_7

    .line 570
    :cond_7
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    move-object v1, v11

    const/16 v22, 0x0

    goto :goto_4

    :cond_8
    const/16 v22, 0x0

    .line 573
    aget v1, v25, v22

    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 575
    :goto_4
    invoke-interface {v15, v12, v15, v1}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    add-int/lit8 v4, v12, 0x1

    if-eqz v19, :cond_b

    .line 582
    aget-boolean v1, v24, v22

    if-ne v1, v14, :cond_b

    .line 583
    aget-object v1, v23, v22

    array-length v1, v1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_a

    if-eqz v16, :cond_9

    int-to-long v5, v4

    cmp-long v3, v5, v17

    if-ltz v3, :cond_9

    goto :goto_6

    .line 587
    :cond_9
    aget-object v3, v23, v22

    aget-object v3, v3, v2

    invoke-interface {v15, v4, v15, v3}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    aput-boolean v22, v24, v22

    .line 592
    :cond_b
    aget v1, v26, v22

    add-int/2addr v0, v1

    aput v0, v25, v22

    const/16 v0, 0x82

    if-ge v13, v0, :cond_c

    if-eqz v13, :cond_c

    if-nez v16, :cond_c

    .line 601
    aget v0, v25, v22

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_c

    goto :goto_7

    :cond_c
    move-object/from16 v14, p2

    move v5, v13

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object/from16 v13, p1

    goto/16 :goto_3

    :cond_d
    :goto_7
    return-object v15

    :cond_e
    :goto_8
    const/4 v0, 0x0

    .line 533
    invoke-interface {v15, v0, v15, v11}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-object v15
.end method

.method public wrapRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 0

    .line 28
    new-instance p1, Lorg/mozilla/javascript/regexp/NativeRegExp;

    check-cast p3, Lorg/mozilla/javascript/regexp/RECompiled;

    invoke-direct {p1, p2, p3}, Lorg/mozilla/javascript/regexp/NativeRegExp;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RECompiled;)V

    return-object p1
.end method
