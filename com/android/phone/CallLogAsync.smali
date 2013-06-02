.class public Lcom/android/phone/CallLogAsync;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallLogAsync$1;,
        Lcom/android/phone/CallLogAsync$AddCallTask;,
        Lcom/android/phone/CallLogAsync$AddCallArgs;
    }
.end annotation


# static fields
.field private static final IS_CDMA_GSM:Z

.field private static final IS_DSDA:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 71
    const-string v0, "ro.config.dsds_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_gsm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/CallLogAsync;->IS_CDMA_GSM:Z

    .line 73
    const-string v0, "ro.config.hw_dsda"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/CallLogAsync;->IS_DSDA:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/phone/CallLogAsync;->IS_CDMA_GSM:Z

    return v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/phone/CallLogAsync;->IS_DSDA:Z

    return v0
.end method

.method private assertUiThread()V
    .registers 3

    .prologue
    .line 313
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 314
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not on the UI thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_16
    return-void
.end method


# virtual methods
.method public addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;
    .registers 5
    .parameter "args"

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/phone/CallLogAsync;->assertUiThread()V

    .line 205
    new-instance v0, Lcom/android/phone/CallLogAsync$AddCallTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallLogAsync$AddCallTask;-><init>(Lcom/android/phone/CallLogAsync;Lcom/android/phone/CallLogAsync$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/phone/CallLogAsync$AddCallArgs;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallLogAsync$AddCallTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method
