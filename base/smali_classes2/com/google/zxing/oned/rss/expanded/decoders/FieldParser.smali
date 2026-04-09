.class final Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;
.super Ljava/lang/Object;
.source "FieldParser.java"


# static fields
.field private static final FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final VARIABLE_LENGTH:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 91

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    const/16 v1, 0x12

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "00"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v2, 0xe

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "01"

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "02"

    .line 46
    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x14

    .line 48
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v6, "10"

    filled-new-array {v6, v0, v15}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x6

    .line 49
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v7, "11"

    filled-new-array {v7, v14}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "12"

    .line 50
    filled-new-array {v8, v14}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "13"

    .line 51
    filled-new-array {v9, v14}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "15"

    .line 52
    filled-new-array {v10, v14}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "17"

    .line 53
    filled-new-array {v11, v14}, [Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x2

    .line 55
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v12, "20"

    filled-new-array {v12, v13}, [Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v16, v13

    const-string v13, "21"

    .line 56
    filled-new-array {v13, v0, v15}, [Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v27, v16

    const/16 v16, 0x1d

    move-object/from16 v17, v14

    .line 57
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v16, v15

    const-string v15, "22"

    filled-new-array {v15, v0, v14}, [Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v15, v17

    const/16 v17, 0x8

    move-object/from16 v28, v2

    .line 59
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v17, v15

    const-string v15, "30"

    filled-new-array {v15, v0, v2}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v29, v1

    move-object/from16 v30, v16

    move-object/from16 v1, v17

    move-object/from16 v31, v1

    const-string v1, "37"

    .line 60
    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v16

    const/16 v1, 0x1e

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "90"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v2, "91"

    .line 64
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v2, "92"

    .line 65
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v2, "93"

    .line 66
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v2, "94"

    .line 67
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v2, "95"

    .line 68
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v2, "96"

    .line 69
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v2, "97"

    .line 70
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v2, "98"

    .line 71
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v2, "99"

    .line 72
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    filled-new-array/range {v3 .. v26}, [[Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 75
    const-string v2, "240"

    .line 78
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v2, "241"

    .line 79
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v2, "242"

    move-object/from16 v15, v31

    .line 80
    filled-new-array {v2, v0, v15}, [Ljava/lang/Object;

    move-result-object v5

    const-string v2, "250"

    .line 81
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v2, "251"

    .line 82
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v2, 0x11

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v8, "253"

    filled-new-array {v8, v0, v2}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "254"

    move-object/from16 v14, v30

    .line 84
    filled-new-array {v9, v0, v14}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "400"

    .line 86
    filled-new-array {v10, v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "401"

    .line 87
    filled-new-array {v11, v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "402"

    .line 88
    filled-new-array {v12, v2}, [Ljava/lang/Object;

    move-result-object v12

    const-string v2, "403"

    .line 89
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const/16 v2, 0xd

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v14, "410"

    filled-new-array {v14, v2}, [Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v26, v1

    move-object/from16 v1, v30

    move-object/from16 v17, v15

    const-string v15, "411"

    .line 91
    filled-new-array {v15, v2}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v32, v17

    move-object/from16 v30, v3

    const-string v3, "412"

    .line 92
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v16

    const-string v3, "413"

    .line 93
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v17

    const-string v3, "414"

    .line 94
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v18

    const-string v3, "420"

    .line 95
    filled-new-array {v3, v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const/16 v3, 0xf

    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v31, v1

    const-string v1, "421"

    filled-new-array {v1, v0, v3}, [Ljava/lang/Object;

    move-result-object v20

    const/4 v1, 0x3

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v33, v2

    const-string v2, "422"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v2, "423"

    .line 98
    filled-new-array {v2, v0, v3}, [Ljava/lang/Object;

    move-result-object v22

    const-string v2, "424"

    .line 99
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v2, "425"

    .line 100
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v2, "426"

    .line 101
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v25

    move-object v1, v3

    move-object/from16 v3, v30

    filled-new-array/range {v3 .. v25}, [[Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 104
    const-string v2, "310"

    move-object/from16 v3, v32

    .line 107
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v34

    const-string v2, "311"

    .line 108
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v35

    const-string v2, "312"

    .line 109
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v36

    const-string v2, "313"

    .line 110
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v37

    const-string v2, "314"

    .line 111
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v38

    const-string v2, "315"

    .line 112
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v39

    const-string v2, "316"

    .line 113
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v40

    const-string v2, "320"

    .line 114
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v41

    const-string v2, "321"

    .line 115
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v42

    const-string v2, "322"

    .line 116
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v43

    const-string v2, "323"

    .line 117
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v44

    const-string v2, "324"

    .line 118
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v45

    const-string v2, "325"

    .line 119
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v46

    const-string v2, "326"

    .line 120
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v47

    const-string v2, "327"

    .line 121
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v48

    const-string v2, "328"

    .line 122
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v49

    const-string v2, "329"

    .line 123
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v50

    const-string v2, "330"

    .line 124
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v51

    const-string v2, "331"

    .line 125
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v52

    const-string v2, "332"

    .line 126
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v53

    const-string v2, "333"

    .line 127
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v54

    const-string v2, "334"

    .line 128
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v55

    const-string v2, "335"

    .line 129
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v56

    const-string v2, "336"

    .line 130
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v57

    const-string v2, "340"

    .line 131
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v58

    const-string v2, "341"

    .line 132
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v59

    const-string v2, "342"

    .line 133
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v60

    const-string v2, "343"

    .line 134
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v61

    const-string v2, "344"

    .line 135
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v62

    const-string v2, "345"

    .line 136
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v63

    const-string v2, "346"

    .line 137
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v64

    const-string v2, "347"

    .line 138
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v65

    const-string v2, "348"

    .line 139
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v66

    const-string v2, "349"

    .line 140
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v67

    const-string v2, "350"

    .line 141
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v68

    const-string v2, "351"

    .line 142
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v69

    const-string v2, "352"

    .line 143
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v70

    const-string v2, "353"

    .line 144
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v71

    const-string v2, "354"

    .line 145
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v72

    const-string v2, "355"

    .line 146
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v73

    const-string v2, "356"

    .line 147
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v74

    const-string v2, "357"

    .line 148
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v75

    const-string v2, "360"

    .line 149
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v76

    const-string v2, "361"

    .line 150
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v77

    const-string v2, "362"

    .line 151
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v78

    const-string v2, "363"

    .line 152
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v79

    const-string v2, "364"

    .line 153
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v80

    const-string v2, "365"

    .line 154
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v81

    const-string v2, "366"

    .line 155
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v82

    const-string v2, "367"

    .line 156
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v83

    const-string v2, "368"

    .line 157
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v84

    const-string v2, "369"

    .line 158
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v85

    const-string v2, "390"

    .line 159
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v86

    const-string v2, "391"

    move-object/from16 v4, v29

    .line 160
    filled-new-array {v2, v0, v4}, [Ljava/lang/Object;

    move-result-object v87

    const-string v2, "392"

    .line 161
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v88

    const-string v1, "393"

    .line 162
    filled-new-array {v1, v0, v4}, [Ljava/lang/Object;

    move-result-object v89

    const-string v1, "703"

    move-object/from16 v2, v26

    .line 163
    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v90

    filled-new-array/range {v34 .. v90}, [[Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 166
    const-string v1, "7001"

    move-object/from16 v5, v33

    .line 169
    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v6

    const-string v1, "7002"

    .line 170
    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v1, 0xa

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "7003"

    filled-new-array {v5, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v5, "8001"

    move-object/from16 v9, v28

    .line 173
    filled-new-array {v5, v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v5, "8002"

    move-object/from16 v10, v31

    .line 174
    filled-new-array {v5, v0, v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v5, "8003"

    .line 175
    filled-new-array {v5, v0, v2}, [Ljava/lang/Object;

    move-result-object v11

    const-string v5, "8004"

    .line 176
    filled-new-array {v5, v0, v2}, [Ljava/lang/Object;

    move-result-object v12

    const-string v5, "8005"

    .line 177
    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v13

    const-string v5, "8006"

    .line 178
    filled-new-array {v5, v4}, [Ljava/lang/Object;

    move-result-object v14

    const-string v5, "8007"

    .line 179
    filled-new-array {v5, v0, v2}, [Ljava/lang/Object;

    move-result-object v15

    const/16 v2, 0xc

    .line 180
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "8008"

    filled-new-array {v5, v0, v2}, [Ljava/lang/Object;

    move-result-object v16

    const-string v2, "8018"

    .line 181
    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v17

    const/16 v2, 0x19

    .line 182
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "8020"

    filled-new-array {v4, v0, v2}, [Ljava/lang/Object;

    move-result-object v18

    const-string v2, "8100"

    .line 183
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v19

    const-string v2, "8101"

    .line 184
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v1, "8102"

    move-object/from16 v2, v27

    .line 185
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v21

    const/16 v1, 0x46

    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "8110"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v2, "8200"

    .line 187
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    filled-new-array/range {v6 .. v23}, [[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 200
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_f

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 206
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v3

    move v5, v0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_3

    aget-object v7, v3, v5

    .line 207
    aget-object v8, v7, v0

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 208
    aget-object v0, v7, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    .line 209
    aget-object v0, v7, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 211
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_e

    .line 219
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 221
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v5, v4

    move v7, v0

    :goto_1
    if-ge v7, v5, :cond_6

    aget-object v8, v4, v7

    .line 222
    aget-object v9, v8, v0

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 223
    aget-object v0, v8, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_4

    .line 224
    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 226
    :cond_4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 231
    :cond_6
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v3

    move v5, v0

    :goto_2
    const/4 v7, 0x4

    if-ge v5, v4, :cond_9

    aget-object v8, v3, v5

    .line 232
    aget-object v9, v8, v0

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 233
    aget-object v0, v8, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_7

    .line 234
    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 236
    :cond_7
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 240
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v7, :cond_d

    .line 244
    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 246
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v3

    move v5, v0

    :goto_3
    if-ge v5, v4, :cond_c

    aget-object v8, v3, v5

    .line 247
    aget-object v9, v8, v0

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 248
    aget-object v0, v8, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_a

    .line 249
    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 251
    :cond_a
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 255
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 241
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 216
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 201
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static processFixedAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 259
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p0, :cond_2

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p1, p0

    if-lt v1, p1, :cond_1

    .line 269
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 271
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 272
    invoke-static {p1}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p0

    .line 273
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 266
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 260
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static processVariableAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 278
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p1, p0

    if-ge v1, p1, :cond_0

    .line 281
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    .line 285
    :cond_0
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 286
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 287
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 288
    invoke-static {p1}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    .line 289
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
