.class public Landroid/preference/MultiSelectListPreference;
.super Landroid/preference/DialogPreference;
.source "MultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/MultiSelectListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChanged:Z

.field private mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 45
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 51
    sget-object v1, Lcom/android/internal/R$styleable;->MultiSelectListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 54
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    return-void
.end method

.method static synthetic access$076(Landroid/preference/MultiSelectListPreference;I)Z
    .registers 3
    .param p0, "x0"    # Landroid/preference/MultiSelectListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iget-boolean v0, p0, Landroid/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Landroid/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    return v0
.end method

.method static synthetic access$100(Landroid/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Landroid/preference/MultiSelectListPreference;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Landroid/preference/MultiSelectListPreference;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Landroid/preference/MultiSelectListPreference;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    return-object v0
.end method

.method private getSelectedItems()[Z
    .registers 7

    .prologue
    .line 183
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 184
    .local v0, "entries":[Ljava/lang/CharSequence;
    array-length v1, v0

    .line 185
    .local v1, "entryCount":I
    iget-object v4, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 186
    .local v4, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-array v3, v1, [Z

    .line 188
    .local v3, "result":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_19

    .line 189
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v3, v2

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 192
    :cond_19
    return-object v3
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 147
    if-eqz p1, :cond_1b

    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1b

    .line 148
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1b

    .line 149
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 154
    .end local v0    # "i":I
    :goto_17
    return v0

    .line 148
    .restart local v0    # "i":I
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 154
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    goto :goto_17
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValues()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .registers 4
    .param p1, "positiveResult"    # Z

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 199
    if-eqz p1, :cond_14

    iget-boolean v1, p0, Landroid/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    if-eqz v1, :cond_14

    .line 200
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 201
    .local v0, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Landroid/preference/MultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 202
    invoke-virtual {p0, v0}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 205
    .end local v0    # "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_14
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    .line 206
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 8
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 210
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 211
    .local v0, "defaultValues":[Ljava/lang/CharSequence;
    array-length v3, v0

    .line 212
    .local v3, "valueCount":I
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 214
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v3, :cond_19

    .line 215
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 218
    :cond_19
    return-object v2
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 5
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 161
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v1, :cond_13

    .line 162
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_13
    invoke-direct {p0}, Landroid/preference/MultiSelectListPreference;->getSelectedItems()[Z

    move-result-object v0

    .line 168
    .local v0, "checkedItems":[Z
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    new-instance v2, Landroid/preference/MultiSelectListPreference$1;

    invoke-direct {v2, p0}, Landroid/preference/MultiSelectListPreference$1;-><init>(Landroid/preference/MultiSelectListPreference;)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 178
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 179
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    iget-object v2, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 180
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 228
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 229
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 236
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_a
    return-object v1

    .line 234
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_b
    new-instance v0, Landroid/preference/MultiSelectListPreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/MultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 235
    .local v0, "myState":Landroid/preference/MultiSelectListPreference$SavedState;
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Landroid/preference/MultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    move-object v1, v0

    .line 236
    goto :goto_a
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 223
    if-eqz p1, :cond_c

    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-virtual {p0, v0}, Landroid/preference/MultiSelectListPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_8
    invoke-virtual {p0, p2}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 224
    return-void

    .line 223
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_c
    check-cast p2, Ljava/util/Set;

    goto :goto_8
.end method

.method public setEntries(I)V
    .registers 3
    .param p1, "entriesResId"    # I

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 73
    iput-object p1, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 74
    return-void
.end method

.method public setEntryValues(I)V
    .registers 3
    .param p1, "entryValuesResId"    # I

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .prologue
    .line 101
    iput-object p1, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 102
    return-void
.end method

.method public setValues(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 130
    invoke-virtual {p0, p1}, Landroid/preference/MultiSelectListPreference;->persistStringSet(Ljava/util/Set;)Z

    .line 131
    return-void
.end method
