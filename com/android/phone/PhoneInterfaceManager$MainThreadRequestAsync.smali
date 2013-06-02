.class final Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainThreadRequestAsync"
.end annotation


# instance fields
.field public arg1:Ljava/lang/Object;

.field public arg2:Ljava/lang/Object;

.field public result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;->arg1:Ljava/lang/Object;

    .line 183
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;->arg2:Ljava/lang/Object;

    .line 184
    return-void
.end method
