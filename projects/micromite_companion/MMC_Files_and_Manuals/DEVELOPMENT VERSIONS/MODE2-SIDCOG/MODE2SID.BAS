Propeller = &h42
I2C OPEN 400, 100
I2C write Propeller,0,3,1,2,2 'Switch to mode 2
Pause 2000 : 'Give the Propeller time to switch to MODE 2

SIDadsr 0,2,5,9,6
SIDadsr 1,0,8,4,7
SIDadsr 2,7,4,8,9

Start:

Read a,b,c,d
If a = 255 Then Restore
Print "playing ";a;b;c
SIDNoteson a,b,c
Pause 40
If a = 0 Then SIDnoteoff 0
If b = 0 Then SIDnoteoff 1
GoTo start

          Data  50,  0 , 0, 0
          Data  50,  0 , 0, 1
          Data  50,  0 , 0, 2
          Data  0 ,  0 , 0, 3
          Data  50,  0 , 0, 4
          Data  0 ,  0 , 0, 5
          Data  0 ,  0 , 0, 6
          Data  0 ,  0 , 0, 7
          Data  62,  0 , 0, 8
          Data  0 ,  0 , 0, 9
          Data  0 ,  0 , 0, 10
          Data  0 ,  0 , 0, 11
          Data  50,  0 , 0, 12
          Data  50,  0 , 0, 13
          Data  0 ,  0 , 0, 14
          Data  0 ,  0 , 0, 15
          Data  50,  0 , 0, 16
          Data  0 ,  0 , 0, 17
          Data  0 ,  0 , 0, 18
          Data  0 ,  0 , 0, 19
          Data  62,  0 , 0, 20
          Data  0 ,  0 , 0, 21
          Data  0 ,  0 , 0, 22
          Data  0 ,  0 , 0, 23
          Data  50,  0 , 0, 24
          Data  50,  0 , 0, 25
          Data  0 ,  0 , 0, 26
          Data  0 ,  0 , 0, 27
          Data  62,  0 , 0, 28
          Data  0 ,  0 , 0, 29
          Data  62,  0 , 0, 30
          Data  0 ,  0 , 0, 31

          Data  55,  0 , 0, 32
          Data  55,  0 , 0, 33
          Data  55,  0 , 0, 34
          Data  0 ,  0 , 0, 35
          Data  55,  0 , 0, 36
          Data  0 ,  0 , 0, 37
          Data  0 ,  0 , 0, 38
          Data  0 ,  0 , 0, 39
          Data  65,  0 , 0, 40
          Data  0 ,  0 , 0, 41
          Data  0 ,  0 , 0, 42
          Data  0 ,  0 , 0, 43
          Data  55,  0 , 0, 44
          Data  55,  0 , 0, 45
          Data  0 ,  0 , 0, 46
          Data  0 ,  0 , 0, 47
          Data  55,  0 , 0, 48
          Data  0 ,  0 , 0, 49
          Data  0 ,  0 , 0, 50
          Data  0 ,  0 , 0, 51
          Data  65,  0 , 0, 52
          Data  0 ,  0 , 0, 53
          Data  0 ,  0 , 0, 54
          Data  0 ,  0 , 0, 55
          Data  55,  0 , 0, 56
          Data  55,  0 , 0, 57
          Data  0 ,  0 , 0, 58
          Data  0 ,  0 , 0, 59
          Data  62,  0 , 0, 60
          Data  0 ,  0 , 0, 61
          Data  55,  0 , 0, 62
          Data  0 ,  0 , 0, 63

          Data  50,  0 , 0, 64
          Data  0 ,  0 , 0, 65
          Data  50,  0 , 0, 66
          Data  0 ,  0 , 0, 67
          Data  50,  0 , 0, 68
          Data  0 ,  0 , 0, 69
          Data  0 ,  0 , 0, 70
          Data  0 ,  0 , 0, 71
          Data  62,  0 , 0, 72
          Data  0 ,  0 , 0, 73
          Data  0 ,  0 , 0, 74
          Data  0 ,  0 , 0, 75
          Data  50,  0 , 0, 76
          Data  50,  0 , 0, 77
          Data  0 ,  0 , 0, 78
          Data  0 ,  0 , 0, 79
          Data  50,  0 , 0, 80
          Data  0 ,  0 , 0, 81
          Data  0 ,  0 , 0, 82
          Data  0 ,  0 , 0, 83
          Data  62,  0 , 0, 84
          Data  0 ,  0 , 0, 85
          Data  0 ,  0 , 0, 86
          Data  0 ,  0 , 0, 87
          Data  50,  0 , 0, 88
          Data  50,  0 , 0, 89
          Data  0 ,  0 , 0, 90
          Data  0 ,  0 , 0, 91
          Data  62,  0 , 0, 92
          Data  0 ,  0 , 0, 93
          Data  62,  0 , 0, 94
          Data  0 ,  0 , 0, 95

          Data  60,  0 , 0, 96
          Data  60,  0 , 0, 97
          Data  60,  0 , 0, 98
          Data  0 ,  0 , 0, 99
          Data  60,  0 , 0, 100
          Data  0 ,  0 , 0, 101
          Data  0 ,  0 , 0, 102
          Data  0 ,  0 , 0, 103
          Data  67,  0 , 0, 104
          Data  0 ,  0 , 0, 105
          Data  0 ,  0 , 0, 106
          Data  0 ,  0 , 0, 107
          Data  60,  0 , 0, 108
          Data  60,  0 , 0, 109
          Data  0 ,  0 , 0, 110
          Data  0 ,  0 , 0, 111
          Data  55,  0 , 0, 112
          Data  0 ,  0 , 0, 113
          Data  0 ,  0 , 0, 114
          Data  0 ,  0 , 0, 115
          Data  67,  0 , 0, 116
          Data  0 ,  0 , 0, 117
          Data  0 ,  0 , 0, 118
          Data  0 ,  0 , 0, 119
          Data  55,  0 , 0, 120
          Data  55,  0 , 0, 121
          Data  0 ,  0 , 0, 122
          Data  0 ,  0 , 0, 123
          Data  67,  0 , 0, 124
          Data  0 ,  0 , 0, 125
          Data  67,  0 , 0, 126
          Data  0 ,  0 , 0, 127
'------------------------------------
          Data  50,  60, 0, 128
          Data  50,  60, 0, 129
          Data  50,  0 , 0, 130
          Data  0 ,  0 , 0, 131
          Data  50,  0 , 0, 132
          Data  0 ,  0 , 0, 133
          Data  0 ,  0 , 0, 134
          Data  0 ,  0 , 0, 135
          Data  62,  80, 0, 136
          Data  0 ,  0 , 0, 137
          Data  0 ,  0 , 0, 138
          Data  0 ,  0 , 0, 139
          Data  50,  0 , 0, 140
          Data  50,  0 , 0, 141
          Data  0 ,  0 , 0, 142
          Data  0 ,  0 , 0, 143
          Data  50,  60, 0, 144
          Data  0 ,  60, 0, 145
          Data  0 ,  0 , 0, 146
          Data  0 ,  0 , 0, 147
          Data  62,  60, 0, 148
          Data  0 ,  60, 0, 149
          Data  0 ,  0 , 0, 150
          Data  0 ,  0 , 0, 151
          Data  50,  80, 0, 152
          Data  50,  0 , 0, 153
          Data  0 ,  0 , 0, 154
          Data  0 ,  0 , 0, 155
          Data  62,  0 , 0, 156
          Data  0 ,  0 , 0, 157
          Data  62,  0 , 0, 158
          Data  0 ,  0 , 0, 159

          Data  55,  60, 0, 160
          Data  55,  60, 0, 161
          Data  55,  0 , 0, 162
          Data  0 ,  0 , 0, 163
          Data  55,  0 , 0, 164
          Data  0 ,  0 , 0, 165
          Data  0 ,  0 , 0, 166
          Data  0 ,  0 , 0, 167
          Data  65,  80, 0, 168
          Data  0 ,  0 , 0, 169
          Data  0 ,  0 , 0, 170
          Data  0 ,  0 , 0, 171
          Data  55,  0 , 0, 172
          Data  55,  0 , 0, 173
          Data  0 ,  0 , 0, 174
          Data  0 ,  0 , 0, 175
          Data  55,  60, 0, 176
          Data  0 ,  60, 0, 177
          Data  0 ,  0 , 0, 178
          Data  0 ,  0 , 0, 179
          Data  65,  60, 0, 180
          Data  0 ,  60, 0, 181
          Data  0 ,  0 , 0, 182
          Data  0 ,  0 , 0, 183
          Data  55,  80, 0, 184
          Data  55,  0 , 0, 185
          Data  0 ,  0 , 0, 186
          Data  0 ,  0 , 0, 187
          Data  62,  80, 0, 188
          Data  0 ,  0 , 0, 189
          Data  55,  80, 0, 190
          Data  0 ,  0 , 0, 191

          Data  50,  60, 0, 192
          Data  0 ,  60, 0, 193
          Data  50,  0 , 0, 194
          Data  0 ,  0 , 0, 195
          Data  50,  0 , 0, 196
          Data  0 ,  0 , 0, 197
          Data  0 ,  0 , 0, 198
          Data  0 ,  0 , 0, 199
          Data  62,  80, 0, 200
          Data  0 ,  0 , 0, 201
          Data  0 ,  0 , 0, 202
          Data  0 ,  0 , 0, 203
          Data  50,  0 , 0, 204
          Data  50,  0 , 0, 205
          Data  0 ,  0 , 0, 206
          Data  0 ,  0 , 0, 207
          Data  50,  60, 0, 208
          Data  0 ,  60, 0, 209
          Data  0 ,  0 , 0, 210
          Data  0 ,  0 , 0, 211
          Data  62,  60, 0, 212
          Data  0 ,  60, 0, 213
          Data  0 ,  0 , 0, 214
          Data  0 ,  0 , 0, 215
          Data  50,  80, 0, 216
          Data  50,  0 , 0, 217
          Data  0 ,  0 , 0, 218
          Data  0 ,  0 , 0, 219
          Data  62,  0 , 0, 220
          Data  0 ,  0 , 0, 221
          Data  62,  0 , 0, 222
          Data  0 ,  0 , 0, 223

          Data  60,  60, 0, 224
          Data  60,  60, 0, 225
          Data  60,  0 , 0, 226
          Data  0 ,  0 , 0, 227
          Data  60,  0 , 0, 228
          Data  0 ,  0 , 0, 229
          Data  0 ,  0 , 0, 230
          Data  0 ,  0 , 0, 231
          Data  67,  80, 0, 232
          Data  0 ,  0 , 0, 233
          Data  0 ,  0 , 0, 234
          Data  0 ,  0 , 0, 235
          Data  60,  0 , 0, 236
          Data  60,  0 , 0, 237
          Data  0 ,  0 , 0, 238
          Data  0 ,  0 , 0, 239
          Data  55,  60, 0, 240
          Data  0 ,  60, 0, 241
          Data  0 ,  0 , 0, 242
          Data  0 ,  0 , 0, 243
          Data  67,  0 , 0, 244
          Data  0 ,  0 , 0, 245
          Data  0 ,  60, 0, 246
          Data  0 ,  0 , 0, 247
          Data  55,  80, 0, 248
          Data  55,  0 , 0, 249
          Data  0 ,  60, 0, 250
          Data  0 ,  0 , 0, 251
          Data  67,  80, 0, 252
          Data  0 ,  0 , 0, 253
          Data  67,  80, 0, 254
          Data  0 ,  0 , 0, 255
'------------------------------------
          Data  50,  60, 0 , 255
          Data  50,  60, 0 , 128
          Data  50,  0 , 0 , 64
          Data  0 ,  0 , 0 , 32
          Data  50,  0 , 0 , 255
          Data  0 ,  0 , 0 , 128
          Data  0 ,  0 , 0 , 64
          Data  0 ,  0 , 0 , 32
          Data  62,  80, 86, 255
          Data  0 ,  0 , 86, 128
          Data  0 ,  0 , 86, 64
          Data  0 ,  0 , 86, 32
          Data  50,  0 , 0 , 255
          Data  50,  0 , 0 , 128
          Data  0 ,  0 , 0 , 64
          Data  0 ,  0 , 0 , 32
          Data  50,  60, 86, 255
          Data  0 ,  60, 86, 128
          Data  0 ,  0 , 0 , 64
          Data  0 ,  0 , 0 , 32
          Data  62,  60, 93, 255
          Data  0 ,  60, 93, 128
          Data  0 ,  0 , 93, 64
          Data  0 ,  0 , 93, 32
          Data  50,  80, 93, 255
          Data  50,  0 , 93, 128
          Data  0 ,  0 , 93, 64
          Data  0 ,  0 , 93, 32
          Data  62,  0 , 93, 255
          Data  0 ,  0 , 93, 128
          Data  62,  0 , 0 , 255
          Data  0 ,  0 , 0 , 128

          Data  55,  60, 79, 255
          Data  55,  60, 79, 128
          Data  55,  0 , 79, 64
          Data  0 ,  0 , 79, 32
          Data  55,  0 , 79, 255
          Data  0 ,  0 , 79, 128
          Data  0 ,  0 , 79, 64
          Data  0 ,  0 , 79, 32
          Data  65,  80, 0 , 255
          Data  0 ,  0 , 0 , 128
          Data  0 ,  0 , 0 , 64
          Data  0 ,  0 , 0 , 32
          Data  55,  0 , 0 , 255
          Data  55,  0 , 0 , 128
          Data  0 ,  0 , 0 , 64
          Data  0 ,  0 , 0 , 32
          Data  55,  60, 77, 255
          Data  0 ,  60, 77, 128
          Data  0 ,  0 , 77, 64
          Data  0 ,  0 , 77, 32
          Data  65,  60, 77, 255
          Data  0 ,  60, 77, 128
          Data  0 ,  0 , 0 , 64
          Data  0 ,  0 , 0 , 32
          Data  55,  80, 83, 255
          Data  55,  0 , 83, 128
          Data  0 ,  0 , 83, 64
          Data  0 ,  0 , 83, 32
          Data  62,  80, 0 , 255
          Data  0 ,  0 , 0 , 128
          Data  55,  80, 0 , 255
          Data  0 ,  0 , 0 , 128

          Data  50,  60, 81, 255
          Data  0 ,  60, 81, 128
          Data  50,  0 , 81, 255
          Data  0 ,  0 , 81, 128
          Data  50,  0 , 81, 255
          Data  0 ,  0 , 81, 128
          Data  0 ,  0 , 81, 64
          Data  0 ,  0 , 81, 32
          Data  62,  80, 81, 255
          Data  0 ,  0 , 0 , 128
          Data  0 ,  0 , 0 , 64
          Data  0 ,  0 , 0 , 32
          Data  50,  0 , 79, 255
          Data  50,  0 , 79, 128
          Data  0 ,  0 , 79, 64
          Data  0 ,  0 , 79, 32
          Data  50,  60, 0 , 255
          Data  0 ,  60, 0 , 128
          Data  0 ,  0 , 0 , 64
          Data  0 ,  0 , 0 , 32
          Data  62,  60, 77, 255
          Data  0 ,  60, 77, 128
          Data  0 ,  0 , 77, 64
          Data  0 ,  0 , 77, 32
          Data  50,  80, 0 , 255
          Data  50,  0 , 0 , 128
          Data  0 ,  0 , 0 , 64
          Data  0 ,  0 , 0 , 32
          Data  62,  0 , 84, 255
          Data  0 ,  0 , 84, 128
          Data  62,  0 , 0 , 255
          Data  0 ,  0 , 0 , 128

          Data  60,  60, 86, 255
          Data  60,  60, 86, 128
          Data  60,  0 , 86, 64
          Data  0 ,  0 , 86, 32
          Data  60,  60, 86, 255
          Data  0 ,  60, 86, 128
          Data  0 ,  0 , 0 , 64
          Data  0 ,  0 , 0 , 32
          Data  67,  80, 86, 128
          Data  0 ,  0 , 86, 64
          Data  0 ,  0 , 0 , 32
          Data  0 ,  0 , 0 , 16
          Data  60,  0 , 0 , 255
          Data  60,  0 , 0 , 128
          Data  0 ,  0 , 0 , 64
          Data  0 ,  0 , 0 , 32
          Data  55,  60, 89, 255
          Data  0 ,  60, 89, 128
          Data  0 ,  0 , 89, 64
          Data  0 ,  0 , 89, 32
          Data  67,  0 , 0 , 255
          Data  0 ,  0 , 0 , 128
          Data  0 ,  0 , 0 , 64
          Data  0 ,  0 , 0 , 32
          Data  55,  80, 88, 255
          Data  55,  0 , 88, 128
          Data  0 ,  60, 88, 64
          Data  0 ,  0 , 88, 32
          Data  67,  80, 88, 255
          Data  0 ,  0 , 88, 128
          Data  67,  80, 88, 255
          Data  0 ,  0 , 88, 128

'------------------------------------------
          Data  50,  60, 88, 128
          Data  50,  60, 88, 64
          Data  50,  0 , 0 , 32
          Data  0 ,  0 , 0 , 16
          Data  50,  0 , 81, 128
          Data  0 ,  0 , 81, 64
          Data  0 ,  0 , 81, 32
          Data  0 ,  0 , 81, 16
          Data  62,  80, 90, 128
          Data  0 ,  0 , 89, 64
          Data  0 ,  0 , 0 , 32
          Data  0 ,  0 , 0 , 16
          Data  50,  0 , 81, 128
          Data  50,  0 , 81, 64
          Data  0 ,  0 , 0 , 32
          Data  0 ,  0 , 0 , 16
          Data  50,  60, 89, 128
          Data  0 ,  60, 88, 64
          Data  0 ,  0 , 0 , 32
          Data  0 ,  0 , 0 , 16
          Data  62,  60, 89, 128
          Data  0 ,  60, 89, 64
          Data  0 ,  0 , 0 , 32
          Data  0 ,  0 , 0 , 16
          Data  50,  80, 81, 128
          Data  50,  0 , 81, 64
          Data  0 ,  0 , 81, 32
          Data  0 ,  0 , 81, 16
          Data  62,  0 , 81, 128
          Data  0 ,  0 , 81, 64
          Data  62,  0 , 0 , 32
          Data  0 ,  0 , 0 , 16

          Data  55,  60, 84, 128
          Data  55,  60, 84, 64
          Data  55,  0 , 84, 32
          Data  0 ,  0 , 84, 16
          Data  55,  0 , 84, 128
          Data  0 ,  0 , 84, 64
          Data  0 ,  0 , 84, 32
          Data  0 ,  0 , 84, 16
          Data  65,  80, 84, 128
          Data  0 ,  0 , 0 , 64
          Data  0 ,  0 , 0 , 32
          Data  0 ,  0 , 0 , 16
          Data  55,  0 , 0 , 128
          Data  55,  0 , 0 , 64
          Data  0 ,  0 , 0 , 32
          Data  0 ,  0 , 0 , 16
          Data  55,  60, 83, 128
          Data  0 ,  60, 83, 64
          Data  0 ,  0 , 0 , 32
          Data  0 ,  0 , 0 , 16
          Data  65,  60, 0 , 128
          Data  0 ,  60, 0 , 64
          Data  0 ,  0 , 0 , 32
          Data  0 ,  0 , 0 , 16
          Data  55,  80, 79, 128
          Data  55,  0 , 79, 64
          Data  0 ,  0 , 0 , 32
          Data  0 ,  0 , 0 , 16
          Data  62,  80, 0 , 128
          Data  0 ,  0 , 0 , 64
          Data  55,  80, 0 , 128
          Data  0 ,  0 , 0 , 64

          Data  50,  60, 86, 255
          Data  0 ,  60, 86, 64                                                                                    '
          Data  50,  0 , 86, 255
          Data  0 ,  0 , 86, 64
          Data  50,  0 , 86, 255
          Data  0 ,  0 , 86, 128
          Data  0 ,  0 , 86, 64
          Data  0 ,  0 , 86, 32
          Data  62,  80, 86, 16
          Data  0 ,  0 , 86, 8
          Data  0 ,  0 , 86, 4
          Data  0 ,  0 , 86, 2
          Data  50,  0 , 0 , 2
          Data  50,  0 , 0 , 4
          Data  0 ,  0 , 0 , 16
          Data  0 ,  0 , 0 , 32
          Data  50,  60, 0 , 64
          Data  0 ,  60, 0 , 128
          Data  0 ,  0 , 0 , 192
          Data  0 ,  0 , 0 , 255
          Data  62,  60, 82, 255
          Data  0 ,  60, 81, 192
          Data  0 ,  0 , 81, 150
          Data  0 ,  0 , 81, 120
          Data  50,  80, 0 , 100
          Data  50,  0 , 0 , 80
          Data  0 ,  0 , 80, 100
          Data  0 ,  0 , 79, 120
          Data  62,  0 , 79, 150
          Data  0 ,  0 , 79, 192
          Data  62,  0 , 0 , 230
          Data  0 ,  0 , 0 , 255

          Data  60,  60, 82, 255
          Data  60,  60, 81, 248
          Data  60,  0 , 81, 240
          Data  0 ,  0 , 81, 232
          Data  60,  60, 81, 224
          Data  0 ,  60, 0 , 216
          Data  0 ,  0 , 0 , 208
          Data  0 ,  0 , 0 , 200
          Data  67,  80, 84, 192
          Data  0 ,  0 , 84, 184
          Data  0 ,  0 , 0 , 176
          Data  0 ,  0 , 0 , 168
          Data  60,  0 , 80, 160
          Data  60,  0 , 79, 152
          Data  0 ,  0 , 79, 144
          Data  0 ,  0 , 79, 136
          Data  55,  60, 0 , 128
          Data  0 ,  60, 0 , 120
          Data  0 ,  0 , 0 , 112
          Data  0 ,  0 , 0 , 104
          Data  67,  0 , 79, 96
          Data  0 ,  0 , 79, 88
          Data  0 ,  0 , 0 , 80
          Data  0 ,  0 , 0 , 72
          Data  55,  80, 77, 64
          Data  55,  0 , 77, 56
          Data  0 ,  60, 0 , 48
          Data  0 ,  0 , 0 , 40
          Data  67,  80, 72, 32
          Data  0 ,  0 , 72, 24
          Data  67,  80, 72, 16
          Data  0 ,  0 , 72, 8

          Data  255,255,255,255' Song end

End

Sub SIDstart
  I2C WRITE Propeller,0,2,1,220
  Pause 5000
End Sub

Sub SIDplay channel, freq, waveform, attack, decay, sustain, release
  I2C WRITE Propeller,0,8,1,221,freq,waveform,attack,decay,sustain,release
End Sub

Sub SIDstop
  I2C WRITE Propeller,0,2,1,222
End Sub

Sub SIDVolume channel
 I2C WRITE Propeller,0,3,1,223,channel
End Sub

Sub SIDadsr channel, attack, decay, sustain, release
 I2C WRITE Propeller,0,7,1,224,channel,attack,decay,sustain,release
End Sub

Sub SIDAlloff
 I2C WRITE Propeller,0,2,1,229
End Sub

Sub SIDNoteOn channel, freq
 I2C WRITE Propeller,0,4,1,225,channel,freq
End Sub

Sub SIDNoteOff channel
 I2C WRITE Propeller,0,3,1,226,channel
End Sub

Sub SIDNoteson a, b, c
 I2C WRITE Propeller,0,5,1,227,a,b,c
End Sub

Sub SIDSetWaveForm channel, waveform
 I2C WRITE Propeller,0,4,1,228,channel,waveform
End Sub                                                                                                          
