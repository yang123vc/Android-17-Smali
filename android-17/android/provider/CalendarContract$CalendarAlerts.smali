.class public final Landroid/provider/CalendarContract$CalendarAlerts;
.super Ljava/lang/Object;
.source "CalendarContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/CalendarContract$CalendarAlertsColumns;
.implements Landroid/provider/CalendarContract$CalendarColumns;
.implements Landroid/provider/CalendarContract$EventsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalendarAlerts"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

.field private static final DEBUG:Z = false

.field private static final SORT_ORDER_ALARMTIME_ASC:Ljava/lang/String; = "alarmTime ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "CalendarAlerts"

.field private static final WHERE_ALARM_EXISTS:Ljava/lang/String; = "event_id=? AND begin=? AND alarmTime=?"

.field private static final WHERE_FINDNEXTALARMTIME:Ljava/lang/String; = "alarmTime>=?"

.field private static final WHERE_RESCHEDULE_MISSED_ALARMS:Ljava/lang/String; = "state=0 AND alarmTime<? AND alarmTime>? AND end>=?"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2091
    const-string v0, "content://com.android.calendar/calendar_alerts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    .line 2117
    const-string v0, "content://com.android.calendar/calendar_alerts/by_instance"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final alarmExists(Landroid/content/ContentResolver;JJJ)Z
    .registers 16
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "eventId"    # J
    .param p3, "begin"    # J
    .param p5, "alarmTime"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 2282
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "alarmTime"

    aput-object v0, v2, v5

    .line 2283
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "event_id=? AND begin=? AND alarmTime=?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const/4 v0, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2287
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 2289
    .local v7, "found":Z
    if-eqz v6, :cond_32

    :try_start_2b
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_38

    move-result v0

    if-lez v0, :cond_32

    .line 2290
    const/4 v7, 0x1

    .line 2293
    :cond_32
    if-eqz v6, :cond_37

    .line 2294
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2297
    :cond_37
    return v7

    .line 2293
    :catchall_38
    move-exception v0

    if-eqz v6, :cond_3e

    .line 2294
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3e
    throw v0
.end method

.method public static final findNextAlarmTime(Landroid/content/ContentResolver;J)J
    .registers 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "millis"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alarmTime>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2160
    .local v9, "selection":Ljava/lang/String;
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "alarmTime"

    aput-object v0, v2, v5

    .line 2161
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "alarmTime>=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v5, "alarmTime ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2165
    .local v8, "cursor":Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 2167
    .local v6, "alarmTime":J
    if-eqz v8, :cond_3d

    :try_start_32
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2168
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_43

    move-result-wide v6

    .line 2171
    :cond_3d
    if-eqz v8, :cond_42

    .line 2172
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2175
    :cond_42
    return-wide v6

    .line 2171
    :catchall_43
    move-exception v0

    if-eqz v8, :cond_49

    .line 2172
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_49
    throw v0
.end method

.method public static final insert(Landroid/content/ContentResolver;JJJJI)Landroid/net/Uri;
    .registers 16
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "eventId"    # J
    .param p3, "begin"    # J
    .param p5, "end"    # J
    .param p7, "alarmTime"    # J
    .param p9, "minutes"    # I

    .prologue
    const/4 v5, 0x0

    .line 2130
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2131
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2132
    const-string v3, "begin"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2133
    const-string v3, "end"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2134
    const-string v3, "alarmTime"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2136
    .local v0, "currentTime":J
    const-string v3, "creationTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2137
    const-string/jumbo v3, "receivedTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2138
    const-string/jumbo v3, "notifyTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2139
    const-string/jumbo v3, "state"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2140
    const-string/jumbo v3, "minutes"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2141
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static final rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V
    .registers 20
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/app/AlarmManager;

    .prologue
    .line 2193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 2194
    .local v15, "now":J
    const-wide/32 v2, 0x5265c00

    sub-long v10, v15, v2

    .line 2195
    .local v10, "ancient":J
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "alarmTime"

    aput-object v3, v4, v2

    .line 2201
    .local v4, "projection":[Ljava/lang/String;
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "state=0 AND alarmTime<? AND alarmTime>? AND end>=?"

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "alarmTime ASC"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2205
    .local v12, "cursor":Landroid/database/Cursor;
    if-nez v12, :cond_39

    .line 2229
    :goto_38
    return-void

    .line 2214
    :cond_39
    const-wide/16 v8, -0x1

    .line 2216
    .local v8, "alarmTime":J
    :cond_3b
    :goto_3b
    :try_start_3b
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 2217
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2218
    .local v13, "newAlarmTime":J
    cmp-long v2, v8, v13

    if-eqz v2, :cond_3b

    .line 2222
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v13, v14}, Landroid/provider/CalendarContract$CalendarAlerts;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_57

    .line 2223
    move-wide v8, v13

    goto :goto_3b

    .line 2227
    .end local v13    # "newAlarmTime":J
    :cond_53
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_38

    :catchall_57
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manager"    # Landroid/app/AlarmManager;
    .param p2, "alarmTime"    # J

    .prologue
    const/4 v3, 0x0

    .line 2253
    if-nez p1, :cond_b

    .line 2254
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "manager":Landroid/app/AlarmManager;
    check-cast p1, Landroid/app/AlarmManager;

    .line 2257
    .restart local p1    # "manager":Landroid/app/AlarmManager;
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EVENT_REMINDER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2258
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2259
    const-string v2, "alarmTime"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2260
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2261
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p1, v3, p2, p3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2262
    return-void
.end method
