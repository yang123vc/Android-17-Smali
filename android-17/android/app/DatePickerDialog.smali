.class public Landroid/app/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Landroid/widget/DatePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 92
    iput-object p3, p0, Landroid/app/DatePickerDialog;->mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 94
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 95
    .local v1, "themeContext":Landroid/content/Context;
    const/4 v3, -0x1

    const v5, 0x10403f3

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v3, v5, p0}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 96
    const/4 v5, -0x2

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v3, v4

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v6, v3}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 97
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/app/DatePickerDialog;->setIcon(I)V

    .line 98
    const v3, 0x10403f2

    invoke-virtual {p0, v3}, Landroid/app/DatePickerDialog;->setTitle(I)V

    .line 100
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 102
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x1090035

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 103
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/app/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 104
    const v3, 0x1020261

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/DatePicker;

    iput-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    .line 105
    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3, p4, p5, p6, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 73
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 74
    return-void
.end method


# virtual methods
.method public getDatePicker()Landroid/widget/DatePicker;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 109
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_22

    .line 110
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->clearFocus()V

    .line 111
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/DatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    .line 114
    :cond_22
    return-void
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .registers 7
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 118
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 119
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 153
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 154
    .local v2, "year":I
    const-string/jumbo v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 155
    .local v1, "month":I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, "day":I
    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 157
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 144
    .local v0, "state":Landroid/os/Bundle;
    const-string/jumbo v1, "year"

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    const-string/jumbo v1, "month"

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    const-string v1, "day"

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    return-object v0
.end method

.method public updateDate(III)V
    .registers 5
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 138
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 139
    return-void
.end method
