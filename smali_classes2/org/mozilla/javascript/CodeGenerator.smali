.class Lorg/mozilla/javascript/CodeGenerator;
.super Lorg/mozilla/javascript/Icode;
.source "CodeGenerator.java"


# static fields
.field private static final ECF_TAIL:I = 0x1

.field private static final MIN_FIXUP_TABLE_SIZE:I = 0x28

.field private static final MIN_LABEL_TABLE_SIZE:I = 0x20


# instance fields
.field private compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

.field private doubleTableTop:I

.field private exceptionTableTop:I

.field private fixupTable:[J

.field private fixupTableTop:I

.field private iCodeTop:I

.field private itsData:Lorg/mozilla/javascript/InterpreterData;

.field private itsInFunctionFlag:Z

.field private itsInTryFlag:Z

.field private labelTable:[I

.field private labelTableTop:I

.field private lineNumber:I

.field private literalIds:Lorg/mozilla/javascript/ObjArray;

.field private localTop:I

.field private scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

.field private stackDepth:I

.field private strings:Lorg/mozilla/javascript/ObjToIntMap;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Lorg/mozilla/javascript/Icode;-><init>()V

    .line 35
    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Lorg/mozilla/javascript/ObjToIntMap;

    .line 43
    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Lorg/mozilla/javascript/ObjArray;

    return-void
.end method

.method private addBackwardGoto(II)V
    .locals 1

    .line 1210
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    if-le v0, p2, :cond_0

    .line 1213
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 1214
    invoke-direct {p0, v0, p2}, Lorg/mozilla/javascript/CodeGenerator;->resolveGoto(II)V

    return-void

    .line 1212
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1
.end method

.method private addExceptionHandler(IIIZII)V
    .locals 4

    .line 1409
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->exceptionTableTop:I

    .line 1410
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    if-nez v2, :cond_1

    if-nez v0, :cond_0

    const/16 v2, 0xc

    .line 1413
    new-array v2, v2, [I

    .line 1414
    iput-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    goto :goto_0

    .line 1412
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1

    .line 1415
    :cond_1
    array-length v1, v2

    if-ne v1, v0, :cond_2

    .line 1416
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x0

    .line 1417
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1418
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, v2, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    move-object v2, v1

    :cond_2
    :goto_0
    add-int/lit8 v1, v0, 0x0

    .line 1420
    aput p1, v2, v1

    add-int/lit8 p1, v0, 0x1

    .line 1421
    aput p2, v2, p1

    add-int/lit8 p1, v0, 0x2

    .line 1422
    aput p3, v2, p1

    add-int/lit8 p1, v0, 0x3

    .line 1423
    aput p4, v2, p1

    add-int/lit8 p1, v0, 0x4

    .line 1424
    aput p5, v2, p1

    add-int/lit8 p1, v0, 0x5

    .line 1425
    aput p6, v2, p1

    add-int/lit8 v0, v0, 0x6

    .line 1427
    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->exceptionTableTop:I

    return-void
.end method

.method private addGoto(Lorg/mozilla/javascript/Node;I)V
    .locals 6

    .line 1168
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result p1

    .line 1169
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTableTop:I

    if-ge p1, v0, :cond_4

    .line 1170
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1173
    invoke-direct {p0, p2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addBackwardGoto(II)V

    goto :goto_1

    .line 1175
    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 1176
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 1177
    iget p2, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTableTop:I

    .line 1178
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    if-eqz v1, :cond_1

    array-length v1, v1

    if-ne p2, v1, :cond_3

    .line 1179
    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    if-nez v1, :cond_2

    const/16 v1, 0x28

    .line 1180
    new-array v1, v1, [J

    iput-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    goto :goto_0

    .line 1182
    :cond_2
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    .line 1183
    invoke-static {v1, v3, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1184
    iput-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    :cond_3
    :goto_0
    add-int/lit8 v1, p2, 0x1

    .line 1187
    iput v1, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTableTop:I

    .line 1188
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    int-to-long v2, p1

    const/16 p1, 0x20

    shl-long/2addr v2, p1

    int-to-long v4, v0

    or-long/2addr v2, v4

    aput-wide v2, v1, p2

    :goto_1
    return-void

    .line 1169
    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1
.end method

.method private addGotoOp(I)V
    .locals 4

    .line 1311
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 1312
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    add-int/lit8 v2, v1, 0x3

    .line 1313
    array-length v3, v0

    if-le v2, v3, :cond_0

    const/4 v0, 0x3

    .line 1314
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->increaseICodeCapacity(I)[B

    move-result-object v0

    :cond_0
    int-to-byte p1, p1

    .line 1316
    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    .line 1318
    iput v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    return-void
.end method

.method private addIcode(I)V
    .locals 1

    .line 1250
    invoke-static {p1}, Lorg/mozilla/javascript/Icode;->validIcode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit16 p1, p1, 0xff

    .line 1252
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    .line 1250
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1
.end method

.method private addIndexOp(II)V
    .locals 0

    .line 1359
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexPrefix(I)V

    .line 1360
    invoke-static {p1}, Lorg/mozilla/javascript/Icode;->validIcode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1361
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_0

    .line 1363
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    :goto_0
    return-void
.end method

.method private addIndexPrefix(I)V
    .locals 1

    if-ltz p1, :cond_3

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    rsub-int/lit8 p1, p1, -0x20

    .line 1392
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    const/16 v0, -0x26

    .line 1394
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1395
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    goto :goto_0

    :cond_1
    const v0, 0xffff

    if-gt p1, v0, :cond_2

    const/16 v0, -0x27

    .line 1397
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1398
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto :goto_0

    :cond_2
    const/16 v0, -0x28

    .line 1400
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1401
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addInt(I)V

    :goto_0
    return-void

    .line 1390
    :cond_3
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1
.end method

.method private addInt(I)V
    .locals 5

    .line 1282
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 1283
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    add-int/lit8 v2, v1, 0x4

    .line 1284
    array-length v3, v0

    if-le v2, v3, :cond_0

    const/4 v0, 0x4

    .line 1285
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->increaseICodeCapacity(I)[B

    move-result-object v0

    :cond_0
    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    .line 1287
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    .line 1288
    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x2

    ushr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    .line 1289
    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x3

    int-to-byte p1, p1

    .line 1290
    aput-byte p1, v0, v1

    .line 1291
    iput v2, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    return-void
.end method

.method private addStringOp(ILjava/lang/String;)V
    .locals 0

    .line 1349
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addStringPrefix(Ljava/lang/String;)V

    .line 1350
    invoke-static {p1}, Lorg/mozilla/javascript/Icode;->validIcode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1351
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_0

    .line 1353
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    :goto_0
    return-void
.end method

.method private addStringPrefix(Ljava/lang/String;)V
    .locals 2

    .line 1369
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1371
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjToIntMap;->size()I

    move-result v0

    .line 1372
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, p1, v0}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    :cond_0
    const/4 p1, 0x4

    if-ge v0, p1, :cond_1

    rsub-int/lit8 p1, v0, -0x29

    .line 1375
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xff

    if-gt v0, p1, :cond_2

    const/16 p1, -0x2d

    .line 1377
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1378
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    goto :goto_0

    :cond_2
    const p1, 0xffff

    if-gt v0, p1, :cond_3

    const/16 p1, -0x2e

    .line 1380
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1381
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto :goto_0

    :cond_3
    const/16 p1, -0x2f

    .line 1383
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1384
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addInt(I)V

    :goto_0
    return-void
.end method

.method private addToken(I)V
    .locals 1

    .line 1244
    invoke-static {p1}, Lorg/mozilla/javascript/Icode;->validTokenCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    .line 1244
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1
.end method

.method private addUint16(I)V
    .locals 4

    const/high16 v0, -0x10000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    .line 1270
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 1271
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    add-int/lit8 v2, v1, 0x2

    .line 1272
    array-length v3, v0

    if-le v2, v3, :cond_0

    const/4 v0, 0x2

    .line 1273
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->increaseICodeCapacity(I)[B

    move-result-object v0

    :cond_0
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 1275
    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte p1, p1

    .line 1276
    aput-byte p1, v0, v1

    .line 1277
    iput v2, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    return-void

    .line 1269
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1
.end method

.method private addUint8(I)V
    .locals 4

    and-int/lit16 v0, p1, -0x100

    if-nez v0, :cond_1

    .line 1258
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 1259
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 1260
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 1261
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/CodeGenerator;->increaseICodeCapacity(I)[B

    move-result-object v0

    :cond_0
    int-to-byte p1, p1

    .line 1263
    aput-byte p1, v0, v1

    add-int/2addr v1, v3

    .line 1264
    iput v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    return-void

    .line 1257
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1
.end method

.method private addVarOp(II)V
    .locals 3

    const/4 v0, -0x7

    if-eq p1, v0, :cond_5

    const/16 v0, 0x9c

    const/16 v1, 0x80

    if-eq p1, v0, :cond_3

    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    const/16 v2, 0x38

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 1344
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    if-ge p2, v1, :cond_5

    if-ne p1, v0, :cond_2

    const/16 p1, -0x30

    goto :goto_1

    :cond_2
    const/16 p1, -0x31

    .line 1335
    :goto_1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1336
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    :cond_3
    if-ge p2, v1, :cond_4

    const/16 p1, -0x3d

    .line 1326
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1327
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    :cond_4
    const/16 p1, -0x3c

    .line 1330
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    return-void

    .line 1341
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    return-void
.end method

.method private allocLocal()I
    .locals 4

    .line 1460
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    add-int/lit8 v1, v0, 0x1

    .line 1461
    iput v1, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    .line 1462
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v3, v2, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    if-le v1, v3, :cond_0

    .line 1463
    iput v1, v2, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    :cond_0
    return v0
.end method

.method private badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;
    .locals 1

    .line 226
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fixLabelGotos()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1194
    :goto_0
    iget v2, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTableTop:I

    if-ge v1, v2, :cond_1

    .line 1195
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    aget-wide v3, v2, v1

    const/16 v2, 0x20

    shr-long v5, v3, v2

    long-to-int v2, v5

    long-to-int v4, v3

    .line 1198
    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    aget v2, v3, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1203
    invoke-direct {p0, v4, v2}, Lorg/mozilla/javascript/CodeGenerator;->resolveGoto(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1201
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    throw v0

    .line 1205
    :cond_1
    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTableTop:I

    return-void
.end method

.method private generateCallFunAndThis(Lorg/mozilla/javascript/Node;)V
    .locals 5

    .line 975
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/16 v4, 0x24

    if-eq v0, v4, :cond_1

    const/16 v2, 0x27

    if-eq v0, v2, :cond_0

    .line 1003
    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0x12

    .line 1005
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1006
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    .line 978
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0xf

    .line 980
    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    const/4 p1, 0x2

    .line 981
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    .line 986
    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    .line 987
    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 988
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    if-ne v0, v2, :cond_2

    .line 990
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x10

    .line 992
    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 993
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    .line 995
    :cond_2
    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0x11

    .line 997
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    :goto_0
    return-void
.end method

.method private generateFunctionICode()V
    .locals 3

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsInFunctionFlag:Z

    .line 92
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    .line 94
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v2

    iput v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    .line 95
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v2

    iput-boolean v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    .line 96
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    .line 99
    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->isGenerator()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, -0x3e

    .line 100
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 101
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getBaseLineno()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    .line 104
    :cond_1
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->generateICodeFromTree(Lorg/mozilla/javascript/Node;)V

    return-void
.end method

.method private generateICodeFromTree(Lorg/mozilla/javascript/Node;)V
    .locals 6

    .line 109
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->generateNestedFunctions()V

    .line 111
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->generateRegExpLiterals()V

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    .line 114
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->fixLabelGotos()V

    .line 116
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget p1, p1, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-nez p1, :cond_0

    const/16 p1, 0x40

    .line 117
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 120
    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object p1, p1, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    array-length v1, p1

    iget v2, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    if-eq v1, v2, :cond_1

    .line 123
    new-array v1, v2, [B

    .line 124
    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 127
    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjToIntMap;->size()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 128
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    goto :goto_1

    .line 130
    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjToIntMap;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p1, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    .line 131
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjToIntMap;->newIterator()Lorg/mozilla/javascript/ObjToIntMap$Iterator;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->start()V

    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->done()Z

    move-result v2

    if-nez v2, :cond_4

    .line 133
    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->getValue()I

    move-result v3

    .line 135
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    aget-object v5, v4, v3

    if-nez v5, :cond_3

    .line 136
    aput-object v2, v4, v3

    .line 132
    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->next()V

    goto :goto_0

    .line 135
    :cond_3
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v1

    .line 139
    :cond_4
    :goto_1
    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->doubleTableTop:I

    if-nez p1, :cond_5

    .line 140
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    goto :goto_2

    .line 141
    :cond_5
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    array-length v2, v1

    if-eq v2, p1, :cond_6

    .line 142
    new-array v2, p1, [D

    .line 143
    invoke-static {v1, v0, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v2, p1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    .line 147
    :cond_6
    :goto_2
    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->exceptionTableTop:I

    if-eqz p1, :cond_7

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    array-length v2, v1

    if-eq v2, p1, :cond_7

    .line 150
    new-array v2, p1, [I

    .line 151
    invoke-static {v1, v0, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v2, p1, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    .line 156
    :cond_7
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    move-result v0

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    .line 159
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v0, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    iget v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    add-int/2addr v0, v1

    iget v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    add-int/2addr v0, v1

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxFrameArray:I

    .line 163
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    .line 164
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarConst()[Z

    move-result-object v0

    iput-object v0, p1, Lorg/mozilla/javascript/InterpreterData;->argIsConst:[Z

    .line 165
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v0

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->argCount:I

    .line 167
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getEncodedSourceStart()I

    move-result v0

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->encodedSourceStart:I

    .line 168
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getEncodedSourceEnd()I

    move-result v0

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->encodedSourceEnd:I

    .line 170
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result p1

    if-eqz p1, :cond_8

    .line 171
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjArray;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lorg/mozilla/javascript/InterpreterData;->literalIds:[Ljava/lang/Object;

    :cond_8
    return-void
.end method

.method private generateNestedFunctions()V
    .locals 6

    .line 179
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    new-array v1, v0, [Lorg/mozilla/javascript/InterpreterData;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    .line 184
    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v3

    .line 185
    new-instance v4, Lorg/mozilla/javascript/CodeGenerator;

    invoke-direct {v4}, Lorg/mozilla/javascript/CodeGenerator;-><init>()V

    .line 186
    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    iput-object v5, v4, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 187
    iput-object v3, v4, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 188
    new-instance v3, Lorg/mozilla/javascript/InterpreterData;

    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-direct {v3, v5}, Lorg/mozilla/javascript/InterpreterData;-><init>(Lorg/mozilla/javascript/InterpreterData;)V

    iput-object v3, v4, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    .line 189
    invoke-direct {v4}, Lorg/mozilla/javascript/CodeGenerator;->generateFunctionICode()V

    .line 190
    iget-object v3, v4, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, v0, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    return-void
.end method

.method private generateRegExpLiterals()V
    .locals 7

    .line 197
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    .line 201
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->checkRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v2

    .line 202
    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_0
    if-eq v4, v0, :cond_1

    .line 204
    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v5, v4}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpString(I)Ljava/lang/String;

    move-result-object v5

    .line 205
    iget-object v6, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v6, v4}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpFlags(I)Ljava/lang/String;

    move-result-object v6

    .line 206
    invoke-interface {v2, v1, v5, v6}, Lorg/mozilla/javascript/RegExpProxy;->compileRegExp(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v3, v0, Lorg/mozilla/javascript/InterpreterData;->itsRegExpLiterals:[Ljava/lang/Object;

    return-void
.end method

.method private getDoubleIndex(D)I
    .locals 4

    .line 1296
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->doubleTableTop:I

    if-nez v0, :cond_0

    .line 1298
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    const/16 v2, 0x40

    new-array v2, v2, [D

    iput-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    goto :goto_0

    .line 1299
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    array-length v2, v1

    if-ne v2, v0, :cond_1

    mul-int/lit8 v2, v0, 0x2

    .line 1300
    new-array v2, v2, [D

    const/4 v3, 0x0

    .line 1301
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1302
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    .line 1304
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    aput-wide p1, v1, v0

    add-int/lit8 p1, v0, 0x1

    .line 1305
    iput p1, p0, Lorg/mozilla/javascript/CodeGenerator;->doubleTableTop:I

    return v0
.end method

.method private getLocalBlockRef(Lorg/mozilla/javascript/Node;)I
    .locals 1

    const/4 v0, 0x3

    .line 1129
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Node;

    const/4 v0, 0x2

    .line 1130
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result p1

    return p1
.end method

.method private getTargetLabel(Lorg/mozilla/javascript/Node;)I
    .locals 5

    .line 1135
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->labelId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1139
    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTableTop:I

    .line 1140
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    if-eqz v2, :cond_1

    array-length v2, v2

    if-ne v0, v2, :cond_3

    .line 1141
    :cond_1
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    if-nez v2, :cond_2

    const/16 v2, 0x20

    .line 1142
    new-array v2, v2, [I

    iput-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    goto :goto_0

    .line 1144
    :cond_2
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    .line 1145
    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1146
    iput-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    :cond_3
    :goto_0
    add-int/lit8 v2, v0, 0x1

    .line 1149
    iput v2, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTableTop:I

    .line 1150
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    aput v1, v2, v0

    .line 1152
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->labelId(I)V

    return v0
.end method

.method private increaseICodeCapacity(I)[B
    .locals 3

    .line 1432
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    array-length v0, v0

    .line 1433
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    add-int/2addr p1, v1

    if-le p1, v0, :cond_1

    mul-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1439
    :goto_0
    new-array p1, p1, [B

    .line 1440
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1441
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object p1, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    return-object p1

    .line 1434
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1
.end method

.method private markTargetLabel(Lorg/mozilla/javascript/Node;)V
    .locals 3

    .line 1158
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result p1

    .line 1159
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1163
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    aput v1, v0, p1

    return-void

    .line 1161
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1
.end method

.method private releaseLocal(I)V
    .locals 1

    .line 1470
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    .line 1471
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1
.end method

.method private resolveForwardGoto(I)V
    .locals 2

    .line 1220
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    add-int/lit8 v1, p1, 0x3

    if-lt v0, v1, :cond_0

    .line 1221
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->resolveGoto(II)V

    return-void

    .line 1220
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1
.end method

.method private resolveGoto(II)V
    .locals 2

    sub-int v0, p2, p1

    if-ltz v0, :cond_1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 1228
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    add-int/lit8 p1, p1, 0x1

    int-to-short v1, v0

    if-eq v0, v1, :cond_3

    .line 1231
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v0, Lorg/mozilla/javascript/InterpreterData;->longJumps:Lorg/mozilla/javascript/UintMap;

    if-nez v1, :cond_2

    .line 1232
    new-instance v1, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v1}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iput-object v1, v0, Lorg/mozilla/javascript/InterpreterData;->longJumps:Lorg/mozilla/javascript/UintMap;

    .line 1234
    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->longJumps:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/UintMap;->put(II)V

    const/4 v0, 0x0

    .line 1237
    :cond_3
    iget-object p2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object p2, p2, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    .line 1238
    aput-byte v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    int-to-byte v0, v0

    .line 1239
    aput-byte v0, p2, p1

    return-void
.end method

.method private stackChange(I)V
    .locals 2

    if-gtz p1, :cond_0

    .line 1448
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    goto :goto_0

    .line 1450
    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    add-int/2addr v0, p1

    .line 1451
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    if-le v0, v1, :cond_1

    .line 1452
    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    .line 1454
    :cond_1
    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    :goto_0
    return-void
.end method

.method private updateLineNumber(Lorg/mozilla/javascript/Node;)V
    .locals 2

    .line 213
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result p1

    .line 214
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    if-eq p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 215
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v1, v0, Lorg/mozilla/javascript/InterpreterData;->firstLinePC:I

    if-gez v1, :cond_0

    .line 216
    iput p1, v0, Lorg/mozilla/javascript/InterpreterData;->firstLinePC:I

    .line 218
    :cond_0
    iput p1, p0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    const/16 v0, -0x1a

    .line 219
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    const v0, 0xffff

    and-int/2addr p1, v0

    .line 220
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    :cond_1
    return-void
.end method

.method private visitArrayComprehension(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 0

    .line 1123
    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    const/4 p1, 0x0

    .line 1124
    invoke-direct {p0, p3, p1}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    return-void
.end method

.method private visitExpression(Lorg/mozilla/javascript/Node;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 497
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    .line 498
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 499
    iget v4, v1, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    const/16 v5, 0x59

    const/4 v6, -0x4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v2, v5, :cond_20

    const/16 v5, 0x66

    const/4 v11, 0x7

    if-eq v2, v5, :cond_1f

    const/16 v5, 0x6d

    const/4 v12, 0x2

    if-eq v2, v5, :cond_1d

    const/16 v5, -0x32

    const/16 v13, 0x7e

    if-eq v2, v13, :cond_1b

    const/16 v14, 0x8e

    if-eq v2, v14, :cond_19

    const/16 v15, 0x92

    if-eq v2, v15, :cond_18

    const/16 v15, 0x9f

    if-eq v2, v15, :cond_17

    const v15, 0xffff

    packed-switch v2, :pswitch_data_0

    const/16 v13, 0x37

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    packed-switch v2, :pswitch_data_5

    packed-switch v2, :pswitch_data_6

    .line 965
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    throw v7

    .line 896
    :pswitch_0
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitArrayComprehension(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_b

    .line 859
    :pswitch_1
    iget-object v0, v1, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-nez v0, :cond_0

    .line 860
    iget-object v0, v1, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v0

    .line 861
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 862
    invoke-direct {v1, v2, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, 0x9c

    .line 863
    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    goto/16 :goto_b

    .line 859
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v7

    .line 770
    :pswitch_2
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    .line 771
    invoke-direct {v1, v3, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 772
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 773
    invoke-direct {v1, v2, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, -0x3b

    .line 774
    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 775
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_b

    .line 540
    :pswitch_3
    invoke-direct {v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_b

    .line 784
    :pswitch_4
    iget-boolean v2, v1, Lorg/mozilla/javascript/CodeGenerator;->itsInFunctionFlag:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-nez v2, :cond_1

    .line 785
    iget-object v2, v1, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    if-ne v2, v8, :cond_2

    const/16 v2, -0xe

    .line 787
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 788
    invoke-direct {v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_b

    .line 790
    :cond_2
    invoke-direct {v1, v13, v2}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    .line 791
    invoke-direct {v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    const/16 v0, 0x20

    .line 792
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_b

    .line 806
    :pswitch_5
    invoke-direct {v1, v0, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitIncDec(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_b

    .line 594
    :pswitch_6
    invoke-direct {v1, v3, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 595
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 596
    invoke-direct {v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 597
    iget v0, v1, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    const/16 v5, 0x69

    if-ne v2, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v11, 0x6

    .line 599
    :goto_1
    invoke-direct {v1, v11}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 600
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 601
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 602
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 603
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    and-int/lit8 v3, p2, 0x1

    .line 605
    invoke-direct {v1, v2, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 606
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto/16 :goto_b

    :pswitch_7
    const/16 v5, 0x10

    .line 909
    invoke-virtual {v0, v5, v10}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    const/4 v5, 0x0

    .line 913
    :cond_4
    invoke-direct {v1, v3, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    add-int/2addr v5, v9

    .line 915
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    if-nez v3, :cond_4

    .line 917
    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    rsub-int/lit8 v0, v5, 0x1

    .line 918
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_b

    .line 938
    :pswitch_8
    invoke-direct {v1, v3, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 939
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_b

    :pswitch_9
    if-eqz v3, :cond_5

    .line 944
    invoke-direct {v1, v3, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    goto :goto_2

    .line 946
    :cond_5
    invoke-direct {v1, v5}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 947
    invoke-direct {v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :goto_2
    const/16 v2, 0x48

    .line 949
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 950
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v0

    and-int/2addr v0, v15

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto/16 :goto_b

    .line 900
    :pswitch_a
    invoke-direct {v1, v3, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v3, 0x11

    .line 901
    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    goto/16 :goto_b

    .line 697
    :pswitch_b
    invoke-direct {v1, v3, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 698
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_b

    .line 892
    :pswitch_c
    invoke-direct {v1, v0, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_b

    .line 878
    :pswitch_d
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 879
    invoke-direct {v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_b

    .line 849
    :pswitch_e
    iget-object v0, v1, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-nez v0, :cond_6

    .line 850
    iget-object v0, v1, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v0

    .line 851
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 852
    invoke-direct {v1, v2, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, 0x38

    .line 853
    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    goto/16 :goto_b

    .line 849
    :cond_6
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v7

    .line 840
    :pswitch_f
    iget-object v2, v1, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-nez v2, :cond_7

    .line 841
    iget-object v2, v1, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v0

    .line 842
    invoke-direct {v1, v13, v0}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    .line 843
    invoke-direct {v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_b

    .line 840
    :cond_7
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v7

    .line 517
    :pswitch_10
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v0

    const/16 v2, 0x36

    .line 518
    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 519
    invoke-direct {v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_b

    :pswitch_11
    const/4 v2, 0x4

    .line 884
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v0

    const/16 v2, 0x30

    .line 885
    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 886
    invoke-direct {v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_b

    .line 872
    :pswitch_12
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 873
    invoke-direct {v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_b

    .line 811
    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v2

    double-to-int v0, v2

    int-to-double v5, v0

    cmpl-double v8, v5, v2

    if-nez v8, :cond_b

    if-nez v0, :cond_8

    const/16 v0, -0x33

    .line 815
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v2

    const-wide/16 v2, 0x0

    cmpg-double v0, v5, v2

    if-gez v0, :cond_c

    const/16 v0, 0x1d

    .line 818
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto :goto_3

    :cond_8
    if-ne v0, v9, :cond_9

    const/16 v0, -0x34

    .line 821
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_3

    :cond_9
    int-to-short v2, v0

    if-ne v2, v0, :cond_a

    const/16 v2, -0x1b

    .line 823
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    and-int/2addr v0, v15

    .line 825
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto :goto_3

    :cond_a
    const/16 v2, -0x1c

    .line 827
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 828
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addInt(I)V

    goto :goto_3

    .line 831
    :cond_b
    invoke-direct {v1, v2, v3}, Lorg/mozilla/javascript/CodeGenerator;->getDoubleIndex(D)I

    move-result v0

    const/16 v2, 0x28

    .line 832
    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 834
    :cond_c
    :goto_3
    invoke-direct {v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_b

    .line 800
    :pswitch_14
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 801
    invoke-direct {v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_b

    .line 723
    :pswitch_15
    invoke-direct {v1, v3, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 724
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 725
    invoke-direct {v1, v0, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 726
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    const/16 v3, 0x8c

    const/4 v5, -0x2

    if-ne v2, v3, :cond_d

    .line 728
    invoke-direct {v1, v5}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 729
    invoke-direct {v1, v12}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    const/16 v2, 0x24

    .line 730
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 731
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 733
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 735
    :cond_d
    invoke-direct {v1, v0, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v0, 0x25

    .line 736
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 737
    invoke-direct {v1, v5}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_b

    .line 704
    :pswitch_16
    invoke-direct {v1, v3, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 705
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 706
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v3

    .line 707
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    const/16 v5, 0x8b

    if-ne v2, v5, :cond_e

    .line 709
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 710
    invoke-direct {v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    const/16 v2, 0x21

    .line 711
    invoke-direct {v1, v2, v3}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 713
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 715
    :cond_e
    invoke-direct {v1, v0, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v0, 0x23

    .line 716
    invoke-direct {v1, v0, v3}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 717
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_b

    .line 632
    :pswitch_17
    invoke-direct {v1, v3, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 633
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 634
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    goto/16 :goto_b

    .line 638
    :pswitch_18
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v2, 0x31

    if-ne v0, v2, :cond_f

    const/4 v0, 0x1

    goto :goto_4

    :cond_f
    const/4 v0, 0x0

    .line 639
    :goto_4
    invoke-direct {v1, v3, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 640
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 641
    invoke-direct {v1, v2, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    if-eqz v0, :cond_10

    .line 644
    invoke-direct {v1, v10}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_5

    :cond_10
    const/16 v0, 0x1f

    .line 646
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 648
    :goto_5
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_b

    :pswitch_19
    const/16 v5, 0x1e

    if-ne v2, v5, :cond_11

    .line 548
    invoke-direct {v1, v3, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    goto :goto_6

    .line 550
    :cond_11
    invoke-direct {v1, v3}, Lorg/mozilla/javascript/CodeGenerator;->generateCallFunAndThis(Lorg/mozilla/javascript/Node;)V

    :goto_6
    const/4 v6, 0x0

    .line 553
    :goto_7
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 554
    invoke-direct {v1, v3, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_12
    const/16 v3, 0xa

    .line 557
    invoke-virtual {v0, v3, v10}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    const/16 v3, 0x46

    if-eq v2, v3, :cond_14

    if-eqz v0, :cond_14

    const/16 v3, -0x15

    .line 561
    invoke-direct {v1, v3, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 562
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    if-ne v2, v5, :cond_13

    const/4 v10, 0x1

    .line 563
    :cond_13
    invoke-direct {v1, v10}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    .line 564
    iget v0, v1, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    and-int/2addr v0, v15

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto :goto_8

    :cond_14
    const/16 v0, 0x26

    if-ne v2, v0, :cond_15

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_15

    .line 569
    iget-object v0, v1, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateDebugInfo()Z

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, v1, Lorg/mozilla/javascript/CodeGenerator;->itsInTryFlag:Z

    if-nez v0, :cond_15

    const/16 v0, -0x37

    const/16 v2, -0x37

    .line 574
    :cond_15
    invoke-direct {v1, v2, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    :goto_8
    if-ne v2, v5, :cond_16

    neg-int v0, v6

    .line 579
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_9

    :cond_16
    sub-int/2addr v8, v6

    .line 583
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 585
    :goto_9
    iget-object v0, v1, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v2, v0, Lorg/mozilla/javascript/InterpreterData;->itsMaxCalleeArgs:I

    if-le v6, v2, :cond_22

    .line 586
    iput v6, v0, Lorg/mozilla/javascript/InterpreterData;->itsMaxCalleeArgs:I

    goto/16 :goto_b

    .line 673
    :pswitch_1a
    invoke-direct {v1, v3, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 674
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 675
    invoke-direct {v1, v0, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 676
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 677
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_b

    .line 759
    :pswitch_1b
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    .line 760
    invoke-direct {v1, v3, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 761
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 762
    invoke-direct {v1, v3, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 763
    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 764
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_b

    .line 954
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 955
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 956
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {v1, v0, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 957
    invoke-direct {v1, v12}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 958
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 959
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {v1, v0, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/4 v0, 0x3

    .line 960
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_b

    .line 925
    :cond_18
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 926
    invoke-direct {v1, v3, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v0, -0x35

    .line 927
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 928
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 929
    iget v0, v1, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 930
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, -0x36

    .line 931
    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addBackwardGoto(II)V

    goto/16 :goto_b

    .line 742
    :cond_19
    :pswitch_1c
    invoke-direct {v1, v3, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 743
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    if-ne v2, v14, :cond_1a

    .line 745
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 746
    invoke-direct {v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    const/16 v2, 0x43

    .line 747
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 749
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 751
    :cond_1a
    invoke-direct {v1, v0, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v0, 0x44

    .line 752
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 753
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_b

    .line 686
    :cond_1b
    :pswitch_1d
    invoke-direct {v1, v3, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    if-ne v2, v13, :cond_1c

    .line 688
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 689
    invoke-direct {v1, v5}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_b

    .line 691
    :cond_1c
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto :goto_b

    .line 504
    :cond_1d
    invoke-virtual {v0, v9}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v0

    .line 505
    iget-object v2, v1, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v2

    .line 507
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v2

    if-ne v2, v12, :cond_1e

    const/16 v2, -0x13

    .line 510
    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 511
    invoke-direct {v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_b

    .line 508
    :cond_1e
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v7

    .line 612
    :cond_1f
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 614
    invoke-direct {v1, v3, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 615
    iget v3, v1, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 616
    invoke-direct {v1, v11}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 617
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    and-int/lit8 v5, p2, 0x1

    .line 619
    invoke-direct {v1, v0, v5}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 620
    iget v0, v1, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    const/4 v6, 0x5

    .line 621
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 622
    invoke-direct {v1, v3}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    .line 623
    iput v4, v1, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    .line 625
    invoke-direct {v1, v2, v5}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 626
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto :goto_b

    .line 525
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    :goto_a
    if-eq v3, v0, :cond_21

    .line 527
    invoke-direct {v1, v3, v10}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 528
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 529
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 530
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    goto :goto_a

    :cond_21
    and-int/lit8 v0, p2, 0x1

    .line 533
    :try_start_0
    invoke-direct {v1, v3, v0}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_22
    :goto_b
    add-int/2addr v4, v9

    .line 967
    iget v0, v1, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    if-ne v4, v0, :cond_23

    return-void

    .line 968
    :cond_23
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v7

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 533
    throw v2

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_19
        :pswitch_18
        :pswitch_1d
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_1a
        :pswitch_15
        :pswitch_19
        :pswitch_14
        :pswitch_13
        :pswitch_14
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_1a
        :pswitch_1a
        :pswitch_11
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x34
        :pswitch_1a
        :pswitch_1a
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3d
        :pswitch_d
        :pswitch_d
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x41
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_1c
        :pswitch_b
        :pswitch_19
        :pswitch_a
        :pswitch_9
        :pswitch_1b
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x68
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x89
        :pswitch_4
        :pswitch_3
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x9b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private visitIncDec(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 6

    const/16 v0, 0xd

    .line 1014
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v0

    .line 1015
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    const/16 v2, 0x24

    if-eq v1, v2, :cond_4

    const/16 v2, 0x27

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0x37

    const/4 v5, 0x0

    if-eq v1, v2, :cond_1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_0

    .line 1051
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    .line 1052
    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0xb

    .line 1053
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1054
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    goto :goto_0

    .line 1058
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    throw v5

    .line 1018
    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean p1, p1, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-nez p1, :cond_2

    .line 1019
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result p1

    const/4 p2, -0x7

    .line 1020
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    .line 1021
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    .line 1022
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    .line 1018
    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v5

    .line 1026
    :cond_3
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x8

    .line 1027
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 1028
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    .line 1029
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    .line 1041
    :cond_4
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    .line 1042
    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1043
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    .line 1044
    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0xa

    .line 1045
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1046
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    const/4 p1, -0x1

    .line 1047
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    .line 1033
    :cond_5
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    .line 1034
    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1035
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x9

    .line 1036
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 1037
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    :goto_0
    return-void
.end method

.method private visitLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 9

    .line 1065
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x42

    const/4 v2, 0x0

    const/16 v3, 0x41

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    move-object v5, p2

    const/4 v6, 0x0

    :goto_0
    if-eqz v5, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 1070
    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v5

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_8

    const/16 v2, 0xc

    .line 1074
    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 1075
    array-length v6, v2

    :cond_1
    const/16 v5, -0x1d

    .line 1079
    invoke-direct {p0, v5, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    const/4 v5, 0x2

    .line 1080
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :goto_1
    const/4 v5, -0x1

    if-eqz p2, :cond_5

    .line 1082
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    const/16 v7, 0x97

    if-ne v6, v7, :cond_2

    .line 1084
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v6, -0x39

    .line 1085
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_2

    :cond_2
    const/16 v7, 0x98

    if-ne v6, v7, :cond_3

    .line 1087
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v6, -0x3a

    .line 1088
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_2

    :cond_3
    const/16 v7, 0xa3

    const/16 v8, -0x1e

    if-ne v6, v7, :cond_4

    .line 1090
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1091
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_2

    .line 1093
    :cond_4
    invoke-direct {p0, p2, v4}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1094
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1096
    :goto_2
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 1097
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    goto :goto_1

    :cond_5
    if-ne v0, v3, :cond_7

    const/16 p2, 0xb

    .line 1100
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-nez p1, :cond_6

    .line 1102
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto :goto_3

    .line 1104
    :cond_6
    iget-object p2, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result p2

    .line 1105
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    const/16 p1, -0x1f

    .line 1106
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto :goto_3

    .line 1109
    :cond_7
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result p1

    .line 1110
    iget-object p2, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p2, v2}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    .line 1111
    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 1113
    :goto_3
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    return-void

    .line 1077
    :cond_8
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    throw v2
.end method

.method private visitStatement(Lorg/mozilla/javascript/Node;I)V
    .locals 15

    move-object v7, p0

    move-object/from16 v0, p1

    move/from16 v8, p2

    .line 231
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    .line 232
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v2

    const/16 v3, -0x3e

    const/4 v9, 0x0

    if-eq v1, v3, :cond_17

    const/16 v3, 0x40

    if-eq v1, v3, :cond_16

    const/16 v3, 0x51

    const/16 v10, -0x38

    const/4 v4, 0x1

    if-eq v1, v3, :cond_12

    const/16 v3, 0x6d

    const/4 v5, -0x5

    const/4 v6, 0x3

    const/4 v11, -0x1

    if-eq v1, v3, :cond_f

    const/16 v3, 0x72

    const/4 v12, -0x4

    const/4 v13, 0x0

    if-eq v1, v3, :cond_c

    const/16 v3, 0x7b

    if-eq v1, v3, :cond_b

    const/16 v3, 0x7d

    if-eq v1, v3, :cond_9

    const/16 v3, 0x8d

    const/4 v14, 0x2

    if-eq v1, v3, :cond_7

    const/16 v3, 0xa0

    if-eq v1, v3, :cond_6

    const v3, 0xffff

    const/16 v10, 0x32

    if-eq v1, v10, :cond_5

    const/16 v10, 0x33

    if-eq v1, v10, :cond_4

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 487
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    throw v9

    .line 360
    :pswitch_0
    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    iget-object v0, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    const/16 v1, -0x17

    .line 361
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addGoto(Lorg/mozilla/javascript/Node;I)V

    goto/16 :goto_6

    .line 382
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 383
    invoke-direct {p0, v2, v13}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v0, 0x85

    if-ne v1, v0, :cond_0

    const/4 v5, -0x4

    .line 384
    :cond_0
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 385
    invoke-direct {p0, v11}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_6

    .line 338
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->markTargetLabel(Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_6

    .line 478
    :pswitch_3
    invoke-direct {p0, v2, v13}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 479
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 480
    invoke-direct {p0, v11}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_6

    .line 429
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v1

    const/16 v3, 0xe

    .line 430
    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v0

    .line 431
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v3

    .line 432
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 433
    invoke-direct {p0, v2, v13}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 434
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/CodeGenerator;->addStringPrefix(Ljava/lang/String;)V

    .line 435
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexPrefix(I)V

    const/16 v1, 0x39

    .line 436
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    if-eqz v0, :cond_1

    const/4 v13, 0x1

    .line 437
    :cond_1
    invoke-direct {p0, v13}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    .line 438
    invoke-direct {p0, v11}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_6

    .line 344
    :pswitch_5
    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    iget-object v0, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 345
    invoke-direct {p0, v2, v13}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 346
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addGoto(Lorg/mozilla/javascript/Node;I)V

    .line 347
    invoke-direct {p0, v11}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_6

    .line 353
    :pswitch_6
    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    iget-object v0, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 354
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addGoto(Lorg/mozilla/javascript/Node;I)V

    goto/16 :goto_6

    .line 456
    :pswitch_7
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    const/16 v1, 0x14

    .line 457
    invoke-virtual {v0, v1, v13}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, -0x3f

    .line 459
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 460
    iget v0, v7, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    and-int/2addr v0, v3

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto/16 :goto_6

    :cond_2
    if-eqz v2, :cond_3

    .line 462
    invoke-direct {p0, v2, v4}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/4 v0, 0x4

    .line 463
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 464
    invoke-direct {p0, v11}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_6

    :cond_3
    const/16 v0, -0x16

    .line 466
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto/16 :goto_6

    .line 288
    :pswitch_8
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_6

    .line 282
    :pswitch_9
    invoke-direct {p0, v2, v13}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 283
    invoke-direct {p0, v14}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 284
    invoke-direct {p0, v11}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_6

    .line 451
    :cond_4
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 452
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v0

    invoke-direct {p0, v10, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto/16 :goto_6

    .line 443
    :cond_5
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 444
    invoke-direct {p0, v2, v13}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 445
    invoke-direct {p0, v10}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 446
    iget v0, v7, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    and-int/2addr v0, v3

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    .line 447
    invoke-direct {p0, v11}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_6

    :cond_6
    const/16 v0, -0x40

    .line 306
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto/16 :goto_6

    .line 293
    :cond_7
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->allocLocal()I

    move-result v1

    .line 294
    invoke-virtual {v0, v14, v1}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 295
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    :goto_0
    if-eqz v2, :cond_8

    .line 297
    invoke-direct {p0, v2, v8}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    .line 298
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_0

    .line 300
    :cond_8
    invoke-direct {p0, v10, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 301
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->releaseLocal(I)V

    goto/16 :goto_6

    .line 368
    :cond_9
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 369
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v0

    const/16 v1, -0x18

    .line 370
    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 371
    invoke-direct {p0, v11}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :goto_1
    if-eqz v2, :cond_a

    .line 373
    invoke-direct {p0, v2, v8}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    .line 374
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_1

    :cond_a
    const/16 v1, -0x19

    .line 376
    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto/16 :goto_6

    .line 272
    :cond_b
    :pswitch_a
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    :goto_2
    :pswitch_b
    if-eqz v2, :cond_17

    .line 276
    invoke-direct {p0, v2, v8}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    .line 277
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_2

    .line 310
    :cond_c
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 314
    invoke-direct {p0, v2, v13}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 315
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    :goto_3
    if-eqz v0, :cond_e

    .line 319
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_d

    .line 321
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 322
    invoke-direct {p0, v11}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 323
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 324
    invoke-direct {p0, v1, v13}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v1, 0x2e

    .line 325
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 326
    invoke-direct {p0, v11}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 329
    iget-object v1, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    const/4 v2, -0x6

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addGoto(Lorg/mozilla/javascript/Node;I)V

    .line 330
    invoke-direct {p0, v11}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 317
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    goto :goto_3

    .line 320
    :cond_d
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    throw v9

    .line 332
    :cond_e
    invoke-direct {p0, v12}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 333
    invoke-direct {p0, v11}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_6

    .line 237
    :cond_f
    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v0

    .line 238
    iget-object v1, v7, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v1

    if-ne v1, v6, :cond_10

    const/16 v1, -0x14

    .line 247
    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto :goto_4

    :cond_10
    if-ne v1, v4, :cond_11

    .line 258
    :goto_4
    iget-boolean v1, v7, Lorg/mozilla/javascript/CodeGenerator;->itsInFunctionFlag:Z

    if-nez v1, :cond_17

    const/16 v1, -0x13

    .line 259
    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 260
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 261
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 262
    invoke-direct {p0, v11}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_6

    .line 250
    :cond_11
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v9

    .line 390
    :cond_12
    move-object v11, v0

    check-cast v11, Lorg/mozilla/javascript/ast/Jump;

    .line 391
    invoke-direct {p0, v11}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v12

    .line 392
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->allocLocal()I

    move-result v13

    const/16 v0, -0xd

    .line 394
    invoke-direct {p0, v0, v13}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 396
    iget v14, v7, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 397
    iget-boolean v0, v7, Lorg/mozilla/javascript/CodeGenerator;->itsInTryFlag:Z

    .line 398
    iput-boolean v4, v7, Lorg/mozilla/javascript/CodeGenerator;->itsInTryFlag:Z

    :goto_5
    if-eqz v2, :cond_13

    .line 400
    invoke-direct {p0, v2, v8}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    .line 401
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_5

    .line 403
    :cond_13
    iput-boolean v0, v7, Lorg/mozilla/javascript/CodeGenerator;->itsInTryFlag:Z

    .line 405
    iget-object v0, v11, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_14

    .line 407
    iget-object v1, v7, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result v0

    aget v3, v1, v0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, v14

    move v2, v3

    move v5, v12

    move v6, v13

    .line 409
    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/CodeGenerator;->addExceptionHandler(IIIZII)V

    .line 413
    :cond_14
    invoke-virtual {v11}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 415
    iget-object v1, v7, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result v0

    aget v3, v1, v0

    const/4 v4, 0x1

    move-object v0, p0

    move v1, v14

    move v2, v3

    move v5, v12

    move v6, v13

    .line 417
    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/CodeGenerator;->addExceptionHandler(IIIZII)V

    .line 422
    :cond_15
    invoke-direct {p0, v10, v13}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 423
    invoke-direct {p0, v13}, Lorg/mozilla/javascript/CodeGenerator;->releaseLocal(I)V

    goto :goto_6

    .line 471
    :cond_16
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 472
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 490
    :cond_17
    :goto_6
    iget v0, v7, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    if-ne v0, v8, :cond_18

    return-void

    .line 491
    :cond_18
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v9

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x80
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_2
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Lorg/mozilla/javascript/InterpreterData;
    .locals 2

    .line 55
    iput-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 62
    new-instance v0, Lorg/mozilla/javascript/NodeTransformer;

    invoke-direct {v0}, Lorg/mozilla/javascript/NodeTransformer;-><init>()V

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/NodeTransformer;->transform(Lorg/mozilla/javascript/ast/ScriptNode;)V

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    goto :goto_0

    .line 72
    :cond_0
    iput-object p2, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 74
    :goto_0
    new-instance v0, Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result p1

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lorg/mozilla/javascript/ast/AstRoot;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstRoot;->isInStrictMode()Z

    move-result p2

    invoke-direct {v0, p1, v1, p3, p2}, Lorg/mozilla/javascript/InterpreterData;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    .line 78
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/mozilla/javascript/InterpreterData;->topLevel:Z

    if-eqz p4, :cond_1

    .line 81
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->generateFunctionICode()V

    goto :goto_1

    .line 83
    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->generateICodeFromTree(Lorg/mozilla/javascript/Node;)V

    .line 85
    :goto_1
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    return-object p1
.end method
