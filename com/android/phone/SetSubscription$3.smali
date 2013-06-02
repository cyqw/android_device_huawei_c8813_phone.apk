.class Lcom/android/phone/SetSubscription$3;
.super Ljava/lang/Object;
.source "SetSubscription.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SetSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SetSubscription;


# direct methods
.method constructor <init>(Lcom/android/phone/SetSubscription;)V
    .registers 2
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 8
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 280
    move-object v1, p1

    check-cast v1, Lcom/android/phone/SubscriptionCheckBoxPreference;

    .line 281
    .local v1, subPref:Lcom/android/phone/SubscriptionCheckBoxPreference;
    invoke-virtual {v1}, Lcom/android/phone/SubscriptionCheckBoxPreference;->getSelectedSubscription()Lcom/android/phone/SubscriptionID;

    move-result-object v0

    .line 283
    .local v0, checked:Lcom/android/phone/SubscriptionID;
    sget-object v2, Lcom/android/phone/SubscriptionID;->SUB_0:Lcom/android/phone/SubscriptionID;

    if-ne v0, v2, :cond_34

    .line 285
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v2, v2, v4

    if-eqz v2, :cond_1f

    .line 286
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/phone/SubscriptionCheckBoxPreference;->markAllUnChecked()V

    .line 290
    :cond_1f
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aput-object v1, v2, v4

    .line 294
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v2, v2, v3

    if-ne v1, v2, :cond_33

    .line 295
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aput-object v5, v2, v3

    .line 318
    :cond_33
    :goto_33
    return v3

    .line 297
    :cond_34
    sget-object v2, Lcom/android/phone/SubscriptionID;->SUB_1:Lcom/android/phone/SubscriptionID;

    if-ne v0, v2, :cond_5e

    .line 299
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v2, v2, v3

    if-eqz v2, :cond_49

    .line 300
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/phone/SubscriptionCheckBoxPreference;->markAllUnChecked()V

    .line 302
    :cond_49
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aput-object v1, v2, v3

    .line 306
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v2, v2, v4

    if-ne v1, v2, :cond_33

    .line 307
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aput-object v5, v2, v4

    goto :goto_33

    .line 311
    :cond_5e
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v2, v2, v4

    if-ne v1, v2, :cond_6c

    .line 312
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aput-object v5, v2, v4

    .line 314
    :cond_6c
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v2, v2, v3

    if-ne v1, v2, :cond_33

    .line 315
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aput-object v5, v2, v3

    goto :goto_33
.end method
