.class public Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$2;,
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;,
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;,
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;,
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;,
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    }
.end annotation


# static fields
.field private static final ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALPHA_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALPHA_PHONE_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final CAPTURING_EXTN_DIGITS:Ljava/lang/String; = "(\\p{Nd}{1,7})"

.field private static final CC_PATTERN:Ljava/util/regex/Pattern;

.field private static final DEFAULT_EXTN_PREFIX:Ljava/lang/String; = " ext. "

.field private static final DIGITS:Ljava/lang/String; = "\\p{Nd}"

.field private static final EXTN_PATTERN:Ljava/util/regex/Pattern;

.field static final EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

.field private static final EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

.field private static final FG_PATTERN:Ljava/util/regex/Pattern;

.field private static final FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

.field private static final LOGGER:Ljava/util/logging/Logger;

.field static final MAX_LENGTH_COUNTRY_CODE:I = 0x3

.field static final MAX_LENGTH_FOR_NSN:I = 0xf

.field static final META_DATA_FILE_PREFIX:Ljava/lang/String; = "/com/android/i18n/phonenumbers/data/PhoneNumberMetadataProto"

.field private static final MIN_LENGTH_FOR_NSN:I = 0x3

.field private static final NANPA_COUNTRY_CODE:I = 0x1

.field private static final NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

.field private static final NP_PATTERN:Ljava/util/regex/Pattern;

.field static final PLUS_CHARS:Ljava/lang/String; = "+\uff0b"

.field static final PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

.field static final PLUS_SIGN:C = '+'

.field static final REGEX_FLAGS:I = 0x42

.field private static final RFC3966_EXTN_PREFIX:Ljava/lang/String; = ";ext="

.field private static final SECOND_NUMBER_START:Ljava/lang/String; = "[\\\\/] *x"

.field static final SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

.field private static final UNKNOWN_REGION:Ljava/lang/String; = "ZZ"

.field private static final UNWANTED_END_CHARS:Ljava/lang/String; = "[[\\P{N}&&\\P{L}]&&[^#]]+$"

.field static final UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_ALPHA:Ljava/lang/String;

.field private static final VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_PHONE_NUMBER:Ljava/lang/String;

.field private static final VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field static final VALID_PUNCTUATION:Ljava/lang/String; = "-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e"

.field private static final VALID_START_CHAR:Ljava/lang/String; = "[+\uff0b\\p{Nd}]"

.field private static final VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;


# instance fields
.field private countryCallingCodeToRegionCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private currentFilePrefix:Ljava/lang/String;

.field private final nanpaRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

.field private final regionToMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedRegions:Ljava/util/Set;
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
.method static constructor <clinit>()V
    .registers 15

    .prologue
    const/16 v14, 0x33

    const/16 v13, 0x32

    const/16 v12, 0x39

    const/16 v11, 0x37

    const/16 v10, 0x2d

    .line 68
    const-class v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    .line 108
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v2, "asciiDigitMappings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/16 v8, 0x30

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x30

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const/16 v8, 0x31

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x31

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const/16 v8, 0x34

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x34

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const/16 v8, 0x35

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x35

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const/16 v8, 0x36

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x36

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const/16 v8, 0x38

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x38

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v1, Ljava/util/HashMap;

    const/16 v8, 0x28

    invoke-direct {v1, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 121
    .local v1, "alphaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/16 v8, 0x41

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const/16 v8, 0x42

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const/16 v8, 0x43

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const/16 v8, 0x44

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const/16 v8, 0x45

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/16 v8, 0x46

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const/16 v8, 0x47

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x34

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const/16 v8, 0x48

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x34

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const/16 v8, 0x49

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x34

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const/16 v8, 0x4a

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x35

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const/16 v8, 0x4b

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x35

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const/16 v8, 0x4c

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x35

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/16 v8, 0x4d

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x36

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/16 v8, 0x4e

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x36

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/16 v8, 0x4f

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x36

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/16 v8, 0x50

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/16 v8, 0x51

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const/16 v8, 0x52

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const/16 v8, 0x53

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/16 v8, 0x54

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x38

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/16 v8, 0x55

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x38

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const/16 v8, 0x56

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x38

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const/16 v8, 0x57

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const/16 v8, 0x58

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/16 v8, 0x59

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/16 v8, 0x5a

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 149
    new-instance v4, Ljava/util/HashMap;

    const/16 v8, 0x64

    invoke-direct {v4, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 150
    .local v4, "combinedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 151
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 152
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v0, "allPlusNumberGroupings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_23c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_267

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Character;

    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 157
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23c

    .line 160
    .end local v3    # "c":C
    :cond_267
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 162
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const v8, 0xff0d

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const/16 v8, 0x2010

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const/16 v8, 0x2011

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const/16 v8, 0x2012

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const/16 v8, 0x2013

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/16 v8, 0x2014

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const/16 v8, 0x2015

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const/16 v8, 0x2212

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const/16 v8, 0x2f

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const v8, 0xff0f

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const/16 v8, 0x20

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x20

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const/16 v8, 0x3000

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x20

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const/16 v8, 0x2060

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x20

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const/16 v8, 0x2e

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x2e

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const v8, 0xff0e

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v9, 0x2e

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    .line 187
    const-string v8, "[\\d]+(?:[~\u2053\u223c\uff5e][\\d]+)?"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    .line 201
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "[, \\[\\]]"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "[, \\[\\]]"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    .line 205
    const-string v8, "[+\uff0b]+"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 206
    const-string v8, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]+"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 207
    const-string v8, "(\\p{Nd})"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    .line 216
    const-string v8, "[+\uff0b\\p{Nd}]"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 224
    const-string v8, "[\\\\/] *x"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    .line 230
    const-string v8, "[[\\P{N}&&\\P{L}]&&[^#]]+$"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 234
    const-string v8, "(?:.*?[A-Za-z]){3}.*"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    .line 245
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[+\uff0b]*(?:[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\\p{Nd}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER:Ljava/lang/String;

    .line 265
    const-string v6, "x\uff58#\uff03~\uff5e"

    .line 269
    .local v6, "singleExtnSymbolsForMatching":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 271
    .local v7, "singleExtnSymbolsForParsing":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->createExtnPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    .line 272
    invoke-static {v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->createExtnPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    .line 299
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(?:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")$"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x42

    invoke-static {v8, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    .line 304
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "(?:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x42

    invoke-static {v8, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 307
    const-string v8, "(\\D+)"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    .line 313
    const-string v8, "(\\$\\d)"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    .line 314
    const-string v8, "\\$NP"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->NP_PATTERN:Ljava/util/regex/Pattern;

    .line 315
    const-string v8, "\\$FG"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FG_PATTERN:Ljava/util/regex/Pattern;

    .line 316
    const-string v8, "\\$CC"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->CC_PATTERN:Ljava/util/regex/Pattern;

    .line 318
    const/4 v8, 0x0

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, "/com/android/i18n/phonenumbers/data/PhoneNumberMetadataProto"

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->currentFilePrefix:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    .line 321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    .line 327
    new-instance v0, Lcom/android/i18n/phonenumbers/RegexCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/android/i18n/phonenumbers/RegexCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    .line 597
    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/regex/Pattern;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private checkRegionForParsing(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;

    .prologue
    .line 2302
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2304
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2306
    :cond_1a
    const/4 v0, 0x0

    .line 2309
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method private chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .registers 9
    .param p2, "nationalNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;"
        }
    .end annotation

    .prologue
    .line 1457
    .local p1, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1458
    .local v2, "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v3

    .line 1459
    .local v3, "size":I
    if-eqz v3, :cond_2c

    iget-object v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v2, v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1462
    :cond_2c
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1463
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1468
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v3    # "size":I
    :goto_40
    return-object v2

    :cond_41
    const/4 v2, 0x0

    goto :goto_40
.end method

.method private close(Ljava/io/InputStream;)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 626
    if-eqz p1, :cond_5

    .line 628
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 633
    :cond_5
    :goto_5
    return-void

    .line 629
    :catch_6
    move-exception v0

    .line 630
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static convertAlphaCharactersInNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 755
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createExtnPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "singleExtnSymbols"    # Ljava/lang/String;

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ";ext=(\\p{Nd}{1,7})|[ \u00a0\\t,]*(?:ext(?:ensi(?:o\u0301?|\u00f3))?n?|\uff45\uff58\uff54\uff4e?|["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]|int|anexo|\uff49\uff4e\uff54)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[:\\.\uff0e]?[ \u00a0\\t,-]*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\\p{Nd}{1,7})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#?|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[- ]+("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\p{Nd}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{1,5})#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static extractPossibleNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 651
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 652
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 653
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 655
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 656
    .local v2, "trailingCharsMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 657
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 658
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stripped trailing characters: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 661
    :cond_43
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 662
    .local v1, "secondNumber":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 663
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 667
    .end local v1    # "secondNumber":Ljava/util/regex/Matcher;
    .end local v2    # "trailingCharsMatcher":Ljava/util/regex/Matcher;
    .end local p0    # "number":Ljava/lang/String;
    :cond_57
    :goto_57
    return-object p0

    .restart local p0    # "number":Ljava/lang/String;
    :cond_58
    const-string p0, ""

    goto :goto_57
.end method

.method private formatAccordingToFormats(Ljava/lang/String;Ljava/util/List;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .registers 5
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p3, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;",
            "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1475
    .local p2, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatAccordingToFormats(Ljava/lang/String;Ljava/util/List;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatAccordingToFormats(Ljava/lang/String;Ljava/util/List;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p3, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "carrierCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;",
            "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1484
    .local p2, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1485
    .local v5, "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v7

    .line 1486
    .local v7, "size":I
    if-eqz v7, :cond_2c

    iget-object v8, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v5, v9}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1489
    :cond_2c
    iget-object v8, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1490
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1491
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v6

    .line 1492
    .local v6, "numberFormatRule":Ljava/lang/String;
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v8, :cond_77

    if-eqz p4, :cond_77

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_77

    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_77

    .line 1496
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v0

    .line 1497
    .local v0, "carrierCodeFormattingRule":Ljava/lang/String;
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->CC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1501
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1503
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1521
    .end local v0    # "carrierCodeFormattingRule":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v5    # "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v6    # "numberFormatRule":Ljava/lang/String;
    .end local v7    # "size":I
    .end local p1    # "nationalNumber":Ljava/lang/String;
    :cond_76
    :goto_76
    return-object p1

    .line 1506
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    .restart local v5    # "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .restart local v6    # "numberFormatRule":Ljava/lang/String;
    .restart local v7    # "size":I
    .restart local p1    # "nationalNumber":Ljava/lang/String;
    :cond_77
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v4

    .line 1507
    .local v4, "nationalPrefixFormattingRule":Ljava/lang/String;
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v8, :cond_96

    if-eqz v4, :cond_96

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_96

    .line 1510
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1511
    .local v1, "firstGroupMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_76

    .line 1513
    .end local v1    # "firstGroupMatcher":Ljava/util/regex/Matcher;
    :cond_96
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_76
.end method

.method private formatExtension(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 6
    .param p1, "extensionDigits"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;
    .param p3, "extension"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1583
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1584
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1585
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredExtnPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1589
    :goto_15
    return-void

    .line 1587
    :cond_16
    const-string v1, " ext. "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15
.end method

.method private formatNationalNumber(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .registers 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;
    .param p3, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .prologue
    .line 1427
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumber(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatNationalNumber(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;
    .param p3, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "carrierCode"    # Ljava/lang/String;

    .prologue
    .line 1438
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 1439
    .local v3, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v2

    .line 1442
    .local v2, "intlNumberFormats":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_12

    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v4, :cond_2b

    :cond_12
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v0

    .line 1446
    .local v0, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_16
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatAccordingToFormats(Ljava/lang/String;Ljava/util/List;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1448
    .local v1, "formattedNationalNumber":Ljava/lang/String;
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v4, :cond_2a

    .line 1449
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1452
    :cond_2a
    return-object v1

    .line 1442
    .end local v0    # "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    .end local v1    # "formattedNationalNumber":Ljava/lang/String;
    :cond_2b
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v0

    goto :goto_16
.end method

.method private formatNumberByFormat(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .registers 8
    .param p1, "countryCallingCode"    # I
    .param p2, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p3, "formattedNumber"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v3, 0x2b

    const/4 v2, 0x0

    .line 1407
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$android$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat:[I

    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 1419
    :goto_e
    return-void

    .line 1409
    :pswitch_f
    invoke-virtual {p3, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1412
    :pswitch_17
    const-string v0, " "

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1415
    :pswitch_25
    const-string v0, "-"

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1407
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_f
        :pswitch_17
        :pswitch_25
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .registers 3

    .prologue
    .line 949
    const-class v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    if-nez v0, :cond_13

    .line 950
    const-string v0, "/com/android/i18n/phonenumbers/data/PhoneNumberMetadataProto"

    invoke-static {}, Lcom/android/i18n/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance(Ljava/lang/String;Ljava/util/Map;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_16

    move-result-object v0

    .line 953
    :goto_11
    monitor-exit v1

    return-object v0

    :cond_13
    :try_start_13
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_16

    goto :goto_11

    .line 949
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getInstance(Ljava/lang/String;Ljava/util/Map;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .registers 4
    .param p0, "baseFileLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/i18n/phonenumbers/PhoneNumberUtil;"
        }
    .end annotation

    .prologue
    .line 916
    .local p1, "countryCallingCodeToRegionCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    const-class v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    if-nez v0, :cond_17

    .line 917
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;-><init>()V

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 918
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    iput-object p1, v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 919
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-direct {v0, p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->init(Ljava/lang/String;)V

    .line 921
    :cond_17
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v1

    return-object v0

    .line 916
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNumberTypeHelper(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .registers 6
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .prologue
    .line 1633
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 1634
    .local v0, "generalNumberDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-direct {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1636
    :cond_10
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 1676
    :goto_12
    return-object v2

    .line 1639
    :cond_13
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1640
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_12

    .line 1642
    :cond_20
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1643
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_12

    .line 1645
    :cond_2d
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1646
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_12

    .line 1648
    :cond_3a
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1649
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_12

    .line 1651
    :cond_47
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1652
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_12

    .line 1654
    :cond_54
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1655
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_12

    .line 1657
    :cond_61
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1658
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_12

    .line 1661
    :cond_6e
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    .line 1662
    .local v1, "isFixedLine":Z
    if-eqz v1, :cond_91

    .line 1663
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->isSameMobileAndFixedLinePattern()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 1664
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_12

    .line 1665
    :cond_81
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 1666
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_12

    .line 1668
    :cond_8e
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_12

    .line 1672
    :cond_91
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->isSameMobileAndFixedLinePattern()Z

    move-result v2

    if-nez v2, :cond_a5

    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 1674
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto/16 :goto_12

    .line 1676
    :cond_a5
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto/16 :goto_12
.end method

.method private getRegionCodeForNumberFromRegionList(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;
    .registers 9
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1766
    .local p2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 1767
    .local v2, "nationalNumber":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1769
    .local v3, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 1770
    .local v1, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1771
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getLeadingDigits()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1779
    .end local v1    # "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v3    # "regionCode":Ljava/lang/String;
    :goto_32
    return-object v3

    .line 1775
    .restart local v1    # "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v3    # "regionCode":Ljava/lang/String;
    :cond_33
    invoke-direct {p0, v2, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v4

    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v4, v5, :cond_8

    goto :goto_32

    .line 1779
    .end local v1    # "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v3    # "regionCode":Ljava/lang/String;
    :cond_3c
    const/4 v3, 0x0

    goto :goto_32
.end method

.method private hasFormattingPatternForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 8
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v4, 0x0

    .line 1276
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v3

    .line 1277
    .local v3, "phoneNumberRegion":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 1278
    .local v1, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v1, :cond_10

    .line 1284
    :cond_f
    :goto_f
    return v4

    .line 1281
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 1282
    .local v2, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v0

    .line 1284
    .local v0, "formatRule":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-eqz v0, :cond_f

    const/4 v4, 0x1

    goto :goto_f
.end method

.method private hasValidRegionCode(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 8
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "countryCallingCode"    # I
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 970
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 971
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has invalid or missing country calling code ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 974
    const/4 v0, 0x0

    .line 976
    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x1

    goto :goto_31
.end method

.method private init(Ljava/lang/String;)V
    .registers 7
    .param p1, "filePrefix"    # Ljava/lang/String;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->currentFilePrefix:Ljava/lang/String;

    .line 601
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 602
    .local v1, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_c

    .line 604
    .end local v1    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1e
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 605
    return-void
.end method

.method private isNationalNumberSuffixOfTheOther(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 7
    .param p1, "firstNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2588
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 2589
    .local v0, "firstNumberNationalNumber":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 2591
    .local v1, "secondNumberNationalNumber":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1c
    const/4 v2, 0x1

    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method private isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .registers 7
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "numberDesc"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 1692
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1695
    .local v1, "possibleNumberPatternMatcher":Ljava/util/regex/Matcher;
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1698
    .local v0, "nationalNumberPatternMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x1

    :goto_29
    return v2

    :cond_2a
    const/4 v2, 0x0

    goto :goto_29
.end method

.method private isValidRegionCode(Ljava/lang/String;)Z
    .registers 3
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 960
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static isViablePhoneNumber(Ljava/lang/String;)Z
    .registers 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 682
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_9

    .line 683
    const/4 v1, 0x0

    .line 686
    :goto_8
    return v1

    .line 685
    :cond_9
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 686
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_8
.end method

.method private loadMetadataForRegionFromFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "filePrefix"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 608
    const-class v7, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 610
    .local v6, "source":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 612
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_1e
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_63
    .catchall {:try_start_1e .. :try_end_23} :catchall_5b

    .line 613
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .local v3, "in":Ljava/io/ObjectInputStream;
    :try_start_23
    new-instance v5, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    .line 614
    .local v5, "metadataCollection":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    invoke-virtual {v5, v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V

    .line 615
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 616
    .local v4, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    iget-object v7, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    invoke-interface {v7, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_44} :catch_45
    .catchall {:try_start_23 .. :try_end_44} :catchall_60

    goto :goto_33

    .line 618
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v5    # "metadataCollection":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :catch_45
    move-exception v0

    move-object v2, v3

    .line 619
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :goto_47
    :try_start_47
    sget-object v7, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_5b

    .line 621
    invoke-direct {p0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->close(Ljava/io/InputStream;)V

    .line 623
    .end local v0    # "e":Ljava/io/IOException;
    :goto_55
    return-void

    .line 621
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    .restart local v5    # "metadataCollection":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :cond_56
    invoke-direct {p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->close(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 622
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    goto :goto_55

    .line 621
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "metadataCollection":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :catchall_5b
    move-exception v7

    :goto_5c
    invoke-direct {p0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->close(Ljava/io/InputStream;)V

    throw v7

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    :catchall_60
    move-exception v7

    move-object v2, v3

    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    goto :goto_5c

    .line 618
    :catch_63
    move-exception v0

    goto :goto_47
.end method

.method private maybeGetFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .registers 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCode"    # Ljava/lang/String;
    .param p3, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "formattedNumber"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1567
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21

    .line 1568
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v0, :cond_22

    .line 1569
    const-string v0, ";ext="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    :cond_21
    :goto_21
    return-void

    .line 1571
    :cond_22
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatExtension(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_21
.end method

.method static normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 706
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 707
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 708
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    .line 710
    :goto_13
    return-object v1

    :cond_14
    invoke-static {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_13
.end method

.method static normalize(Ljava/lang/StringBuilder;)V
    .registers 4
    .param p0, "number"    # Ljava/lang/StringBuilder;

    .prologue
    .line 722
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "normalizedNumber":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    return-void
.end method

.method private static normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .registers 9
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "keepNonDigits"    # Z

    .prologue
    .line 738
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 739
    .local v5, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_f
    if-ge v3, v4, :cond_28

    aget-char v1, v0, v3

    .line 740
    .local v1, "c":C
    const/16 v6, 0xa

    invoke-static {v1, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 741
    .local v2, "digit":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_22

    .line 742
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 739
    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 743
    :cond_22
    if-eqz p1, :cond_1f

    .line 744
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 747
    .end local v1    # "c":C
    .end local v2    # "digit":I
    :cond_28
    return-object v5
.end method

.method public static normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 734
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 11
    .param p0, "number"    # Ljava/lang/String;
    .param p2, "removeNonMatches"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 899
    .local p1, "normalizationReplacements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/Character;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 900
    .local v5, "normalizedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 901
    .local v6, "numberAsCharArray":[C
    move-object v0, v6

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_10
    if-ge v2, v3, :cond_30

    aget-char v1, v0, v2

    .line 902
    .local v1, "character":C
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    .line 903
    .local v4, "newDigit":Ljava/lang/Character;
    if-eqz v4, :cond_2a

    .line 904
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 901
    :cond_27
    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 905
    :cond_2a
    if-nez p2, :cond_27

    .line 906
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 910
    .end local v1    # "character":C
    .end local v4    # "newDigit":Ljava/lang/Character;
    :cond_30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .registers 20
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "keepRawInput"    # Z
    .param p4, "checkRegion"    # Z
    .param p5, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2430
    if-nez p1, :cond_c

    .line 2431
    new-instance v1, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v2, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v5, "The phone number supplied was null."

    invoke-direct {v1, v2, v5}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v1

    .line 2436
    :cond_c
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extractPossibleNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2437
    .local v12, "number":Ljava/lang/String;
    invoke-static {v12}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 2438
    new-instance v1, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v2, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v5, "The string supplied did not seem to be a phone number."

    invoke-direct {v1, v2, v5}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v1

    .line 2444
    :cond_20
    if-eqz p4, :cond_34

    move-object/from16 v0, p2

    invoke-direct {p0, v12, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->checkRegionForParsing(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 2445
    new-instance v1, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v2, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v5, "Missing or invalid default region."

    invoke-direct {v1, v2, v5}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v1

    .line 2449
    :cond_34
    if-eqz p3, :cond_3b

    .line 2450
    move-object/from16 v0, p5

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setRawInput(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2452
    :cond_3b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2455
    .local v11, "nationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v11}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    .line 2456
    .local v9, "extension":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4f

    .line 2457
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2460
    :cond_4f
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 2463
    .local v3, "regionMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2464
    .local v4, "normalizedNationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move/from16 v5, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v8

    .line 2466
    .local v8, "countryCode":I
    if-eqz v8, :cond_8a

    .line 2467
    invoke-virtual {p0, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v13

    .line 2468
    .local v13, "phoneNumberRegion":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 2469
    invoke-virtual {p0, v13}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 2483
    .end local v13    # "phoneNumberRegion":Ljava/lang/String;
    :cond_79
    :goto_79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_a2

    .line 2484
    new-instance v1, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v2, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v5, "The string supplied is too short to be a phone number."

    invoke-direct {v1, v2, v5}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v1

    .line 2474
    :cond_8a
    invoke-static {v11}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    .line 2475
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2476
    if-eqz p2, :cond_9c

    .line 2477
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v8

    .line 2478
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_79

    .line 2479
    :cond_9c
    if-eqz p3, :cond_79

    .line 2480
    invoke-virtual/range {p5 .. p5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_79

    .line 2487
    :cond_a2
    if-eqz v3, :cond_af

    .line 2488
    invoke-virtual {p0, v4, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/lang/String;

    move-result-object v7

    .line 2490
    .local v7, "carrierCode":Ljava/lang/String;
    if-eqz p3, :cond_af

    .line 2491
    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2494
    .end local v7    # "carrierCode":Ljava/lang/String;
    :cond_af
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 2495
    .local v10, "lengthOfNationalNumber":I
    const/4 v1, 0x3

    if-ge v10, v1, :cond_c0

    .line 2496
    new-instance v1, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v2, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v5, "The string supplied is too short to be a phone number."

    invoke-direct {v1, v2, v5}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v1

    .line 2499
    :cond_c0
    const/16 v1, 0xf

    if-le v10, v1, :cond_ce

    .line 2500
    new-instance v1, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v2, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v5, "The string supplied is too long to be a phone number."

    invoke-direct {v1, v2, v5}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v1

    .line 2503
    :cond_ce
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_dd

    .line 2504
    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2506
    :cond_dd
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2507
    return-void
.end method

.method private parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z
    .registers 11
    .param p1, "iddPattern"    # Ljava/util/regex/Pattern;
    .param p2, "number"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2154
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2155
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 2156
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 2159
    .local v2, "matchEnd":I
    sget-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2160
    .local v0, "digitMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 2161
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2162
    .local v3, "normalizedGroup":Ljava/lang/String;
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 2169
    .end local v0    # "digitMatcher":Ljava/util/regex/Matcher;
    .end local v2    # "matchEnd":I
    .end local v3    # "normalizedGroup":Ljava/lang/String;
    :cond_30
    :goto_30
    return v4

    .line 2166
    .restart local v0    # "digitMatcher":Ljava/util/regex/Matcher;
    .restart local v2    # "matchEnd":I
    :cond_31
    invoke-virtual {p2, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v4, v5

    .line 2167
    goto :goto_30
.end method

.method static declared-synchronized resetInstance()V
    .registers 2

    .prologue
    .line 928
    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    .line 929
    monitor-exit v0

    return-void

    .line 928
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    .registers 5
    .param p1, "numberPattern"    # Ljava/util/regex/Pattern;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 1900
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1901
    .local v0, "numberMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1902
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    .line 1907
    :goto_c
    return-object v1

    .line 1904
    :cond_d
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1905
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_c

    .line 1907
    :cond_16
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_c
.end method


# virtual methods
.method canBeInternationallyDialled(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v3, 0x1

    .line 2693
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 2694
    .local v2, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 2695
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    invoke-direct {p0, v2, v4, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidRegionCode(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 2699
    :cond_13
    :goto_13
    return v3

    .line 2698
    :cond_14
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2699
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNoInternationalDialling()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v3, 0x0

    goto :goto_13
.end method

.method extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .registers 9
    .param p1, "fullNumber"    # Ljava/lang/StringBuilder;
    .param p2, "nationalNumber"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v3, 0x0

    .line 2030
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_11

    :cond_f
    move v2, v3

    .line 2043
    :goto_10
    return v2

    .line 2035
    :cond_11
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 2036
    .local v1, "numberLength":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_16
    const/4 v4, 0x3

    if-gt v0, v4, :cond_3a

    if-gt v0, v1, :cond_3a

    .line 2037
    invoke-virtual {p1, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2038
    .local v2, "potentialCountryCode":I
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 2039
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 2036
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .end local v2    # "potentialCountryCode":I
    :cond_3a
    move v2, v3

    .line 2043
    goto :goto_10
.end method

.method public findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/i18n/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2392
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;
    .registers 13
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "leniency"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .param p4, "maxTries"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;",
            "J)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/i18n/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2413
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$1;-><init>(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V

    return-object v0
.end method

.method public format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .registers 9
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .prologue
    .line 994
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 995
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v1

    .line 996
    .local v1, "rawInput":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b

    .line 1002
    .end local v1    # "rawInput":Ljava/lang/String;
    :goto_1a
    return-object v1

    .line 1000
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1001
    .local v0, "formattedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1002
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1a
.end method

.method public format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .registers 8
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p3, "formattedNumber"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1013
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1014
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1015
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1016
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p2, v3, :cond_19

    .line 1019
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v0, v3, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNumberByFormat(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1036
    :goto_18
    return-void

    .line 1026
    :cond_19
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 1027
    .local v2, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 1028
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 1032
    :cond_27
    invoke-direct {p0, v1, v2, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumber(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeGetFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1035
    invoke-direct {p0, v0, p2, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNumberByFormat(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    goto :goto_18
.end method

.method public formatByPattern(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;
    .registers 16
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1052
    .local p3, "userDefinedFormats":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1053
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v5

    .line 1057
    .local v5, "nationalSignificantNumber":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v8

    .line 1058
    .local v8, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v8, v0, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidRegionCode(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 1096
    .end local v5    # "nationalSignificantNumber":Ljava/lang/String;
    :goto_12
    return-object v5

    .line 1061
    .restart local v5    # "nationalSignificantNumber":Ljava/lang/String;
    :cond_13
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1063
    .local v9, "userDefinedFormatsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1064
    .local v6, "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v4

    .line 1065
    .local v4, "nationalPrefixFormattingRule":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6d

    .line 1069
    new-instance v7, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 1070
    .local v7, "numFormatCopy":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v7, v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1071
    invoke-virtual {p0, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v3

    .line 1072
    .local v3, "nationalPrefix":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_69

    .line 1074
    sget-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->NP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1076
    sget-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const-string v11, "\\$1"

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1078
    invoke-virtual {v7, v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1083
    :goto_65
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1081
    :cond_69
    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->clearNationalPrefixFormattingRule()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    goto :goto_65

    .line 1086
    .end local v3    # "nationalPrefix":Ljava/lang/String;
    .end local v7    # "numFormatCopy":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_6d
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1090
    .end local v4    # "nationalPrefixFormattingRule":Ljava/lang/String;
    .end local v6    # "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5, v9, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatAccordingToFormats(Ljava/lang/String;Ljava/util/List;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v1, "formattedNumber":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1, v8, p2, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeGetFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1095
    invoke-direct {p0, v0, p2, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNumberByFormat(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1096
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_12
.end method

.method public formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .prologue
    .line 1240
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasFormattingPatternForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1245
    :cond_12
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v0

    .line 1269
    :cond_16
    :goto_16
    return-object v0

    .line 1247
    :cond_17
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource()Z

    move-result v2

    if-nez v2, :cond_24

    .line 1248
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 1251
    :cond_24
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$android$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_68

    .line 1263
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    .line 1266
    .local v0, "formattedNumber":Ljava/lang/String;
    :goto_39
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v1

    .line 1269
    .local v1, "rawInput":Ljava/lang/String;
    if-eqz v0, :cond_4d

    invoke-static {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_4d
    move-object v0, v1

    goto :goto_16

    .line 1253
    .end local v0    # "formattedNumber":Ljava/lang/String;
    .end local v1    # "rawInput":Ljava/lang/String;
    :pswitch_4f
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    .line 1254
    .restart local v0    # "formattedNumber":Ljava/lang/String;
    goto :goto_39

    .line 1256
    .end local v0    # "formattedNumber":Ljava/lang/String;
    :pswitch_56
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1257
    .restart local v0    # "formattedNumber":Ljava/lang/String;
    goto :goto_39

    .line 1259
    .end local v0    # "formattedNumber":Ljava/lang/String;
    :pswitch_5b
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1260
    .restart local v0    # "formattedNumber":Ljava/lang/String;
    goto :goto_39

    .line 1251
    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_56
        :pswitch_5b
    .end packed-switch
.end method

.method public formatNationalNumberWithCarrierCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "carrierCode"    # Ljava/lang/String;

    .prologue
    .line 1111
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1112
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 1116
    .local v2, "nationalSignificantNumber":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v3

    .line 1117
    .local v3, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v3, v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidRegionCode(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 1128
    .end local v2    # "nationalSignificantNumber":Ljava/lang/String;
    :goto_12
    return-object v2

    .line 1121
    .restart local v2    # "nationalSignificantNumber":Ljava/lang/String;
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1122
    .local v1, "formattedNumber":Ljava/lang/StringBuilder;
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v2, v3, v4, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumber(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, p1, v3, v4, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeGetFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1127
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v0, v4, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNumberByFormat(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_12
.end method

.method public formatNationalNumberWithPreferredCarrierCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "fallbackCarrierCode"    # Ljava/lang/String;

    .prologue
    .line 1150
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "fallbackCarrierCode":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithCarrierCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatOutOfCountryCallingNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 1174
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 1175
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v6

    .line 1224
    :cond_d
    :goto_d
    return-object v6

    .line 1177
    :cond_e
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1178
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v7

    .line 1179
    .local v7, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v6

    .line 1180
    .local v6, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v7, v0, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidRegionCode(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1183
    const/4 v8, 0x1

    if-ne v0, v8, :cond_47

    .line 1184
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 1187
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    .line 1189
    :cond_47
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v8

    if-ne v0, v8, :cond_54

    .line 1196
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    .line 1198
    :cond_54
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v6, v7, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumber(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 1201
    .local v1, "formattedNationalNumber":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v5

    .line 1202
    .local v5, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v3

    .line 1206
    .local v3, "internationalPrefix":Ljava/lang/String;
    const-string v4, ""

    .line 1207
    .local v4, "internationalPrefixForFormatting":Ljava/lang/String;
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_9a

    .line 1208
    move-object v4, v3

    .line 1213
    :cond_71
    :goto_71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1214
    .local v2, "formattedNumber":Ljava/lang/StringBuilder;
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, p1, v7, v8, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeGetFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1216
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a5

    .line 1217
    const-string v8, " "

    invoke-virtual {v2, v10, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v0}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v10, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    :goto_94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_d

    .line 1209
    .end local v2    # "formattedNumber":Ljava/lang/StringBuilder;
    :cond_9a
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix()Z

    move-result v8

    if-eqz v8, :cond_71

    .line 1210
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    move-result-object v4

    goto :goto_71

    .line 1220
    .restart local v2    # "formattedNumber":Ljava/lang/StringBuilder;
    :cond_a5
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v0, v8, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNumberByFormat(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    goto :goto_94
.end method

.method public formatOutOfCountryKeepingAlphaChars(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .registers 21
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .prologue
    .line 1313
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v13

    .line 1316
    .local v13, "rawInput":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_f

    .line 1317
    invoke-virtual/range {p0 .. p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1384
    :goto_e
    return-object v15

    .line 1319
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    .line 1320
    .local v3, "countryCode":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v14

    .line 1321
    .local v14, "regionCode":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3, v13}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidRegionCode(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_23

    move-object v15, v13

    .line 1322
    goto :goto_e

    .line 1328
    :cond_23
    sget-object v15, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v13

    .line 1333
    invoke-virtual/range {p0 .. p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v11

    .line 1334
    .local v11, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-le v15, v0, :cond_4f

    .line 1335
    const/4 v15, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1336
    .local v4, "firstNationalNumberDigit":I
    const/4 v15, -0x1

    if-eq v4, v15, :cond_4f

    .line 1337
    invoke-virtual {v13, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1340
    .end local v4    # "firstNationalNumberDigit":I
    :cond_4f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v10

    .line 1341
    .local v10, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const/4 v15, 0x1

    if-ne v3, v15, :cond_7c

    .line 1342
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c3

    .line 1343
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_e

    .line 1345
    :cond_7c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v15

    if-ne v3, v15, :cond_c3

    .line 1347
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v10}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormatSize()I

    move-result v15

    invoke-direct {v2, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 1349
    .local v2, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-virtual {v10}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_97
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1350
    .local v5, "format":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    new-instance v12, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v12}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 1351
    .local v12, "newFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v12, v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1353
    const-string v15, "(\\d+)(.*)"

    invoke-virtual {v12, v15}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1355
    const-string v15, "$1$2"

    invoke-virtual {v12, v15}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setFormat(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1356
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_97

    .line 1364
    .end local v5    # "format":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v12    # "newFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_b9
    sget-object v15, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v15}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatAccordingToFormats(Ljava/lang/String;Ljava/util/List;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_e

    .line 1366
    .end local v2    # "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_c3
    invoke-virtual {v10}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v8

    .line 1369
    .local v8, "internationalPrefix":Ljava/lang/String;
    sget-object v15, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_10e

    move-object v9, v8

    .line 1373
    .local v9, "internationalPrefixForFormatting":Ljava/lang/String;
    :goto_d4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1374
    .local v6, "formattedNumber":Ljava/lang/StringBuilder;
    sget-object v15, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeGetFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1376
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_113

    .line 1377
    const/4 v15, 0x0

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v3}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    const-string v17, " "

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1384
    :goto_108
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_e

    .line 1369
    .end local v6    # "formattedNumber":Ljava/lang/StringBuilder;
    .end local v9    # "internationalPrefixForFormatting":Ljava/lang/String;
    :cond_10e
    invoke-virtual {v10}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    move-result-object v9

    goto :goto_d4

    .line 1380
    .restart local v6    # "formattedNumber":Ljava/lang/StringBuilder;
    .restart local v9    # "internationalPrefixForFormatting":Ljava/lang/String;
    :cond_113
    sget-object v15, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNumberByFormat(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    goto :goto_108
.end method

.method public getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;
    .registers 3
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2022
    new-instance v0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-direct {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCountryCodeForRegion(Ljava/lang/String;)I
    .registers 4
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 1800
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1801
    const/4 v1, 0x0

    .line 1804
    :goto_7
    return v1

    .line 1803
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1804
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v1

    goto :goto_7
.end method

.method public getExampleNumber(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 1532
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getExampleNumberForType(Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getExampleNumberForType(Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 9
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .prologue
    const/4 v2, 0x0

    .line 1545
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1546
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Invalid or unknown region code provided."

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1557
    :cond_10
    :goto_10
    return-object v2

    .line 1549
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 1551
    .local v0, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :try_start_19
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1552
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_26
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_19 .. :try_end_26} :catch_28

    move-result-object v2

    goto :goto_10

    .line 1554
    :catch_28
    move-exception v1

    .line 1555
    .local v1, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public getLengthOfGeographicalAreaCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    .registers 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v3, 0x0

    .line 798
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 799
    .local v1, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 814
    :cond_b
    :goto_b
    return v3

    .line 802
    :cond_c
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 803
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 807
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v2

    .line 810
    .local v2, "type":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v2, v4, :cond_26

    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v2, v4, :cond_b

    .line 814
    :cond_26
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getLengthOfNationalDestinationCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v3

    goto :goto_b
.end method

.method public getLengthOfNationalDestinationCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    .registers 8
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v5, 0x3

    .line 850
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 853
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 854
    .local v0, "copiedProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 855
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 860
    :goto_12
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 862
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 866
    .local v2, "numberGroups":[Ljava/lang/String;
    array-length v3, v2

    if-gt v3, v5, :cond_25

    .line 867
    const/4 v3, 0x0

    .line 880
    :goto_22
    return v3

    .line 857
    .end local v0    # "copiedProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v1    # "nationalSignificantNumber":Ljava/lang/String;
    .end local v2    # "numberGroups":[Ljava/lang/String;
    :cond_23
    move-object v0, p1

    .restart local v0    # "copiedProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    goto :goto_12

    .line 870
    .restart local v1    # "nationalSignificantNumber":Ljava/lang/String;
    .restart local v2    # "numberGroups":[Ljava/lang/String;
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v3

    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v3, v4, :cond_42

    .line 878
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 880
    :cond_42
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_22
.end method

.method getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 4
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 1680
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1681
    const/4 v0, 0x0

    .line 1688
    :goto_7
    return-object v0

    .line 1683
    :cond_8
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    monitor-enter v1

    .line 1684
    :try_start_b
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1685
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->currentFilePrefix:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->loadMetadataForRegionFromFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    :cond_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_22

    .line 1688
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_7

    .line 1687
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .registers 5
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "0"

    :goto_a
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1397
    .local v0, "nationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1398
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1396
    .end local v0    # "nationalNumber":Ljava/lang/StringBuilder;
    :cond_19
    const-string v1, ""

    goto :goto_a
.end method

.method public getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "stripNonDigits"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1822
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1823
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Invalid or missing region code provided."

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object v1, v2

    .line 1837
    :cond_11
    :goto_11
    return-object v1

    .line 1826
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1827
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v1

    .line 1829
    .local v1, "nationalPrefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_22

    move-object v1, v2

    .line 1830
    goto :goto_11

    .line 1832
    :cond_22
    if-eqz p2, :cond_11

    .line 1835
    const-string v2, "~"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11
.end method

.method getNumberDescByType(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 5
    .param p1, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p2, "type"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .prologue
    .line 1592
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$android$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    .line 1613
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    :goto_f
    return-object v0

    .line 1594
    :pswitch_10
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_f

    .line 1596
    :pswitch_15
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_f

    .line 1598
    :pswitch_1a
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_f

    .line 1601
    :pswitch_1f
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_f

    .line 1603
    :pswitch_24
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_f

    .line 1605
    :pswitch_29
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_f

    .line 1607
    :pswitch_2e
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_f

    .line 1609
    :pswitch_33
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_f

    .line 1611
    :pswitch_38
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_f

    .line 1592
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_10
        :pswitch_15
        :pswitch_1a
        :pswitch_1f
        :pswitch_1f
        :pswitch_24
        :pswitch_29
        :pswitch_2e
        :pswitch_33
        :pswitch_38
    .end packed-switch
.end method

.method public getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .registers 5
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1624
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1625
    .local v1, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1626
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 1629
    :goto_c
    return-object v2

    .line 1628
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 1629
    .local v0, "nationalSignificantNumber":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v2

    goto :goto_c
.end method

.method public getRegionCodeForCountryCode(I)Ljava/lang/String;
    .registers 5
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 1788
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1789
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_11

    const-string v1, "ZZ"

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_10
.end method

.method public getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .registers 6
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1752
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1753
    .local v0, "countryCode":I
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1754
    .local v1, "regions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_14

    .line 1755
    const/4 v2, 0x0

    .line 1760
    :goto_13
    return-object v2

    .line 1757
    :cond_14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    .line 1758
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_13

    .line 1760
    :cond_23
    invoke-direct {p0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumberFromRegionList(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    goto :goto_13
.end method

.method public getSupportedRegions()Ljava/util/Set;
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
    .line 935
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    return-object v0
.end method

.method public isAlphaNumber(Ljava/lang/String;)Z
    .registers 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1874
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1876
    const/4 v1, 0x0

    .line 1880
    :goto_7
    return v1

    .line 1878
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1879
    .local v0, "strippedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1880
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_7
.end method

.method isLeadingZeroPossible(I)Z
    .registers 4
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 1855
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1857
    .local v0, "mainMetadataForCallingCode":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_c

    .line 1858
    const/4 v1, 0x0

    .line 1860
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->isLeadingZeroPossible()Z

    move-result v1

    goto :goto_b
.end method

.method public isNANPACountry(Ljava/lang/String;)Z
    .registers 3
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .registers 9
    .param p1, "firstNumberIn"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumberIn"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2531
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2532
    .local v0, "firstNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2533
    new-instance v2, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2534
    .local v2, "secondNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, p2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2537
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2538
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2539
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2540
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2541
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2542
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2543
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_35

    .line 2545
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2547
    :cond_35
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_48

    .line 2549
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2552
    :cond_48
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 2554
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    .line 2582
    :goto_64
    return-object v4

    .line 2556
    :cond_65
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    .line 2557
    .local v1, "firstNumberCountryCode":I
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    .line 2559
    .local v3, "secondNumberCountryCode":I
    if-eqz v1, :cond_88

    if-eqz v3, :cond_88

    .line 2560
    invoke-virtual {v0, v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 2561
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_64

    .line 2562
    :cond_7a
    if-ne v1, v3, :cond_85

    invoke-direct {p0, v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2567
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_64

    .line 2570
    :cond_85
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_64

    .line 2574
    :cond_88
    invoke-virtual {v0, v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2576
    invoke-virtual {v0, v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 2577
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_64

    .line 2579
    :cond_94
    invoke-direct {p0, v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 2580
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_64

    .line 2582
    :cond_9d
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_64
.end method

.method public isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .registers 14
    .param p1, "firstNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumber"    # Ljava/lang/String;

    .prologue
    .line 2650
    :try_start_0
    const-string v0, "ZZ"

    invoke-virtual {p0, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v9

    .line 2651
    .local v9, "secondNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_9
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v8

    .line 2679
    .end local v9    # "secondNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_a
    :goto_a
    return-object v8

    .line 2652
    :catch_b
    move-exception v6

    .line 2653
    .local v6, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    if-ne v0, v1, :cond_46

    .line 2657
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v7

    .line 2659
    .local v7, "firstNumberRegion":Ljava/lang/String;
    :try_start_1c
    const-string v0, "ZZ"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 2660
    invoke-virtual {p0, p2, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v10

    .line 2661
    .local v10, "secondNumberWithFirstNumberRegion":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, v10}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v8

    .line 2662
    .local v8, "match":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-ne v8, v0, :cond_a

    .line 2663
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_a

    .line 2669
    .end local v8    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .end local v10    # "secondNumberWithFirstNumberRegion":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_33
    new-instance v5, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2670
    .local v5, "secondNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2671
    invoke-virtual {p0, p1, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_43
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_1c .. :try_end_43} :catch_45

    move-result-object v8

    goto :goto_a

    .line 2673
    .end local v5    # "secondNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_45
    move-exception v0

    .line 2679
    .end local v7    # "firstNumberRegion":Ljava/lang/String;
    :cond_46
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_a
.end method

.method public isNumberMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .registers 22
    .param p1, "firstNumber"    # Ljava/lang/String;
    .param p2, "secondNumber"    # Ljava/lang/String;

    .prologue
    .line 2609
    :try_start_0
    const-string v3, "ZZ"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v17

    .line 2610
    .local v17, "firstNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_13
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v3

    .line 2632
    .end local v17    # "firstNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_14
    return-object v3

    .line 2611
    :catch_15
    move-exception v15

    .line 2612
    .local v15, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v15}, Lcom/android/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v3

    sget-object v4, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    if-ne v3, v4, :cond_62

    .line 2614
    :try_start_1e
    const-string v3, "ZZ"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v18

    .line 2615
    .local v18, "secondNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_31
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_1e .. :try_end_31} :catch_33

    move-result-object v3

    goto :goto_14

    .line 2616
    .end local v18    # "secondNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_33
    move-exception v16

    .line 2617
    .local v16, "e2":Lcom/android/i18n/phonenumbers/NumberParseException;
    invoke-virtual/range {v16 .. v16}, Lcom/android/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v3

    sget-object v4, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    if-ne v3, v4, :cond_62

    .line 2619
    :try_start_3c
    new-instance v8, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v8}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2620
    .local v8, "firstNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    new-instance v14, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v14}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2621
    .local v14, "secondNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2622
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    invoke-direct/range {v9 .. v14}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2623
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_5f
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_3c .. :try_end_5f} :catch_61

    move-result-object v3

    goto :goto_14

    .line 2624
    .end local v8    # "firstNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v14    # "secondNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_61
    move-exception v3

    .line 2632
    .end local v16    # "e2":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_62
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_14
.end method

.method public isPossibleNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 4
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1890
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isPossibleNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .prologue
    .line 1982
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    :try_end_7
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 1984
    :goto_8
    return v1

    .line 1983
    :catch_9
    move-exception v0

    .line 1984
    .local v0, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isPossibleNumberWithReason(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    .registers 11
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1933
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 1934
    .local v2, "nationalNumber":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1939
    .local v0, "countryCode":I
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v5

    .line 1940
    .local v5, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 1941
    sget-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    .line 1958
    :goto_14
    return-object v6

    .line 1943
    :cond_15
    invoke-virtual {p0, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    .line 1945
    .local v1, "generalNumDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v6

    if-nez v6, :cond_40

    .line 1946
    sget-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v8, "Checking if number is possible with incomplete metadata."

    invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1947
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1948
    .local v3, "numberLength":I
    const/4 v6, 0x3

    if-ge v3, v6, :cond_36

    .line 1949
    sget-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_14

    .line 1950
    :cond_36
    const/16 v6, 0xf

    if-le v3, v6, :cond_3d

    .line 1951
    sget-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_14

    .line 1953
    :cond_3d
    sget-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_14

    .line 1956
    .end local v3    # "numberLength":I
    :cond_40
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1958
    .local v4, "possibleNumberPattern":Ljava/util/regex/Pattern;
    invoke-direct {p0, v4, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v6

    goto :goto_14
.end method

.method public isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 4
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1709
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 1710
    .local v0, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public isValidNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 11
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1726
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v6

    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v7

    if-eq v6, v7, :cond_e

    move v4, v5

    .line 1740
    :cond_d
    :goto_d
    return v4

    .line 1729
    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 1730
    .local v1, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 1731
    .local v0, "generalNumDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 1736
    .local v2, "nationalSignificantNumber":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v6

    if-nez v6, :cond_2d

    .line 1737
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1738
    .local v3, "numberLength":I
    const/4 v6, 0x3

    if-le v3, v6, :cond_2b

    const/16 v6, 0xf

    if-le v3, v6, :cond_d

    :cond_2b
    move v4, v5

    goto :goto_d

    .line 1740
    .end local v3    # "numberLength":I
    :cond_2d
    invoke-direct {p0, v2, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v6

    sget-object v7, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v6, v7, :cond_d

    move v4, v5

    goto :goto_d
.end method

.method maybeExtractCountryCode(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    .registers 21
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultRegionMetadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "nationalNumber"    # Ljava/lang/StringBuilder;
    .param p4, "keepRawInput"    # Z
    .param p5, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2081
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_8

    .line 2082
    const/4 v9, 0x0

    .line 2146
    :goto_7
    return v9

    .line 2084
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2086
    .local v4, "fullNumber":Ljava/lang/StringBuilder;
    const-string v7, "NonMatch"

    .line 2087
    .local v7, "possibleCountryIddPrefix":Ljava/lang/String;
    if-eqz p2, :cond_17

    .line 2088
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v7

    .line 2091
    :cond_17
    invoke-virtual {p0, v4, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v1

    .line 2093
    .local v1, "countryCodeSource":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    if-eqz p4, :cond_22

    .line 2094
    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2096
    :cond_22
    sget-object v12, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v1, v12, :cond_4f

    .line 2097
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    const/4 v13, 0x3

    if-ge v12, v13, :cond_37

    .line 2098
    new-instance v12, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v13, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v14, "Phone number had an IDD, but after this was not long enough to be a viable phone number."

    invoke-direct {v12, v13, v14}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v12

    .line 2102
    :cond_37
    move-object/from16 v0, p3

    invoke-virtual {p0, v4, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v9

    .line 2103
    .local v9, "potentialCountryCode":I
    if-eqz v9, :cond_45

    .line 2104
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_7

    .line 2110
    :cond_45
    new-instance v12, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v13, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v14, "Country calling code supplied was not recognised."

    invoke-direct {v12, v13, v14}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v12

    .line 2112
    .end local v9    # "potentialCountryCode":I
    :cond_4f
    if-eqz p2, :cond_c3

    .line 2116
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v2

    .line 2117
    .local v2, "defaultCountryCode":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 2118
    .local v3, "defaultCountryCodeString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2119
    .local v6, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c3

    .line 2120
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2122
    .local v10, "potentialNationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    .line 2123
    .local v5, "generalDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    iget-object v12, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 2125
    .local v11, "validNumberPattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, p2

    invoke-virtual {p0, v10, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/lang/String;

    .line 2126
    iget-object v12, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 2131
    .local v8, "possibleNumberPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v11, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-nez v12, :cond_a1

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-nez v12, :cond_ad

    :cond_a1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v8, v12}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v12

    sget-object v13, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v12, v13, :cond_c3

    .line 2135
    :cond_ad
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2136
    if-eqz p4, :cond_bb

    .line 2137
    sget-object v12, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2139
    :cond_bb
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move v9, v2

    .line 2140
    goto/16 :goto_7

    .line 2145
    .end local v2    # "defaultCountryCode":I
    .end local v3    # "defaultCountryCodeString":Ljava/lang/String;
    .end local v5    # "generalDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v6    # "normalizedNumber":Ljava/lang/String;
    .end local v8    # "possibleNumberPattern":Ljava/util/regex/Pattern;
    .end local v10    # "potentialNationalNumber":Ljava/lang/StringBuilder;
    .end local v11    # "validNumberPattern":Ljava/util/regex/Pattern;
    :cond_c3
    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2146
    const/4 v9, 0x0

    goto/16 :goto_7
.end method

.method maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 8
    .param p1, "number"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2278
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 2281
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3b

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 2283
    const/4 v1, 0x1

    .local v1, "i":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .local v2, "length":I
    :goto_20
    if-gt v1, v2, :cond_3b

    .line 2284
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_38

    .line 2287
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 2288
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2293
    .end local v0    # "extension":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "length":I
    :goto_37
    return-object v0

    .line 2283
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 2293
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_3b
    const-string v0, ""

    goto :goto_37
.end method

.method maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    .registers 7
    .param p1, "number"    # Ljava/lang/StringBuilder;
    .param p2, "possibleIddPrefix"    # Ljava/lang/String;

    .prologue
    .line 2187
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 2188
    sget-object v2, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 2208
    :goto_8
    return-object v2

    .line 2191
    :cond_9
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2192
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2193
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2195
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    .line 2196
    sget-object v2, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_8

    .line 2199
    :cond_23
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    invoke-virtual {v2, p2}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2200
    .local v0, "iddPattern":Ljava/util/regex/Pattern;
    invoke-direct {p0, v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2201
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    .line 2202
    sget-object v2, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_8

    .line 2207
    :cond_35
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    .line 2208
    invoke-direct {p0, v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_41

    sget-object v2, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_8

    :cond_41
    sget-object v2, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_8
.end method

.method maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/lang/String;
    .registers 16
    .param p1, "number"    # Ljava/lang/StringBuilder;
    .param p2, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2222
    const-string v0, ""

    .line 2223
    .local v0, "carrierCode":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 2224
    .local v4, "numberLength":I
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v5

    .line 2225
    .local v5, "possibleNationalPrefix":Ljava/lang/String;
    if-eqz v4, :cond_14

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_17

    .line 2227
    :cond_14
    const-string v9, ""

    .line 2267
    :goto_16
    return-object v9

    .line 2230
    :cond_17
    iget-object v9, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    invoke-virtual {v9, v5}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 2231
    .local v6, "prefixMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 2232
    iget-object v9, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 2235
    .local v2, "nationalNumberRule":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 2239
    .local v1, "isViableOriginalNumber":Z
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    .line 2240
    .local v3, "numOfGroups":I
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixTransformRule()Ljava/lang/String;

    move-result-object v7

    .line 2241
    .local v7, "transformRule":Ljava/lang/String;
    if-eqz v7, :cond_53

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_53

    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7f

    .line 2244
    :cond_53
    if-eqz v1, :cond_6a

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_6a

    .line 2246
    const-string v9, ""

    goto :goto_16

    .line 2248
    :cond_6a
    if-lez v3, :cond_76

    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_76

    .line 2249
    invoke-virtual {v6, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 2251
    :cond_76
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {p1, v11, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .end local v1    # "isViableOriginalNumber":Z
    .end local v2    # "nationalNumberRule":Ljava/util/regex/Pattern;
    .end local v3    # "numOfGroups":I
    .end local v7    # "transformRule":Ljava/lang/String;
    :cond_7d
    :goto_7d
    move-object v9, v0

    .line 2267
    goto :goto_16

    .line 2255
    .restart local v1    # "isViableOriginalNumber":Z
    .restart local v2    # "nationalNumberRule":Ljava/util/regex/Pattern;
    .restart local v3    # "numOfGroups":I
    .restart local v7    # "transformRule":Ljava/lang/String;
    :cond_7f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2256
    .local v8, "transformedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v4, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2257
    if-eqz v1, :cond_9f

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_9f

    .line 2259
    const-string v9, ""

    goto/16 :goto_16

    .line 2261
    :cond_9f
    if-le v3, v12, :cond_a5

    .line 2262
    invoke-virtual {v6, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 2264
    :cond_a5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v11, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 4
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2333
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2334
    .local v0, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2335
    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .registers 10
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2344
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2345
    return-void
.end method

.method public parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 4
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2364
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2365
    .local v0, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2366
    return-object v0
.end method

.method public parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .registers 10
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2376
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2377
    return-void
.end method

.method public truncateTooLongNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 8
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v3, 0x1

    .line 1996
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2011
    :goto_7
    return v3

    .line 1999
    :cond_8
    new-instance v2, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2000
    .local v2, "numberCopy":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2001
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v0

    .line 2003
    .local v0, "nationalNumber":J
    :cond_14
    const-wide/16 v4, 0xa

    div-long/2addr v0, v4

    .line 2004
    invoke-virtual {v2, v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2005
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v4

    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v4, v5, :cond_28

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_2a

    .line 2007
    :cond_28
    const/4 v3, 0x0

    goto :goto_7

    .line 2009
    :cond_2a
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2010
    invoke-virtual {p1, v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_7
.end method
