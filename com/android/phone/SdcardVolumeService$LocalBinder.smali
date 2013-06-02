.class public Lcom/android/phone/SdcardVolumeService$LocalBinder;
.super Landroid/os/Binder;
.source "SdcardVolumeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SdcardVolumeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SdcardVolumeService;


# direct methods
.method public constructor <init>(Lcom/android/phone/SdcardVolumeService;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/phone/SdcardVolumeService$LocalBinder;->this$0:Lcom/android/phone/SdcardVolumeService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public gainSdcardVolumeService()Lcom/android/phone/SdcardVolumeService;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/SdcardVolumeService$LocalBinder;->this$0:Lcom/android/phone/SdcardVolumeService;

    return-object v0
.end method
