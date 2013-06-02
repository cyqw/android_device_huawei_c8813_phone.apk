.class public Lcom/android/phone/EmergencyCallHelper_DSDA;
.super Lcom/android/phone/EmergencyCallHelper;
.source "EmergencyCallHelper_DSDA.java"


# instance fields
.field private mSubscription:I


# direct methods
.method public constructor <init>(Lcom/android/phone/CallController;I)V
    .registers 3
    .parameter "callController"
    .parameter "sub"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;-><init>(Lcom/android/phone/CallController;)V

    .line 13
    iput p2, p0, Lcom/android/phone/EmergencyCallHelper_DSDA;->mSubscription:I

    .line 14
    return-void
.end method


# virtual methods
.method protected clearProgressIndication()V
    .registers 3

    .prologue
    .line 22
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 23
    .local v0, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget v1, p0, Lcom/android/phone/EmergencyCallHelper_DSDA;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/phone/MSimInCallUiState;->clearProgressIndication(I)V

    .line 24
    return-void
.end method

.method protected setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V
    .registers 5
    .parameter "status"

    .prologue
    .line 27
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 28
    .local v0, mUIState:Lcom/android/phone/MSimInCallUiState;
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    iget v2, p0, Lcom/android/phone/EmergencyCallHelper_DSDA;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/MSimInCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;I)V

    .line 29
    return-void
.end method
