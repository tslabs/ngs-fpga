﻿
GSRomBaseL	EQU h'0000
GSRomBaseH	EQU h'C000

BTICK		EQU 750

DAC0		EQU h'6000
DAC1		EQU h'6100
DAC2		EQU h'6200
DAC3		EQU h'6300

;VOL0    EQU h'06
;VOL1    EQU h'07
;VOL2    EQU h'08
;VOL3    EQU h'09
;FLAGS   EQU h'04
;OUTRG   EQU h'03
;DATRG   EQU h'02
;COMRG   EQU h'01
;RSCOM   EQU h'05
;PAGE    EQU h'00

CHSTAT		EQU h'00
CHFLAGS		EQU h'01
CHCURL		EQU h'02
CHCURH		EQU h'03
CHCURP		EQU h'04
CHENDL		EQU h'05
CHENDH		EQU h'06
CHENDP		EQU h'07
CHLPBL		EQU h'08
CHLPBH		EQU h'09
CHLPBP		EQU h'0A
CHLPEL		EQU h'0B
CHLPEH		EQU h'0C
CHLPEP		EQU h'0D
CHCNTL		EQU h'0E
CHCNTH		EQU h'0F
CHFRQL		EQU h'10
CHFRQH		EQU h'11
CHPERL		EQU h'12
CHPERH		EQU h'13
CHREAL		EQU h'14
CHFINE		EQU h'15
CHRLNT		EQU h'16
CHPAN		EQU h'17
CHEPAN		EQU h'18
CHVOL		EQU h'19
CHMVOL		EQU h'1A
CHEVOL		EQU h'1B
CHFVOL		EQU h'1C
CHDELVL		EQU h'1D
CHDELVH		EQU h'1E
CHDELSL		EQU h'1F
CHDELSH		EQU h'20
CHFADVL		EQU h'21
CHFADVH		EQU h'22
CHFADSL		EQU h'23
CHFADSH		EQU h'24
CHRDR		EQU h'25
CHRDRI		EQU h'26
CHRDN		EQU h'27
CHNOTE		EQU h'28
CHINS		EQU h'29
CHSMP		EQU h'2A
CHCOM		EQU h'2B
CHPARM		EQU h'2C
CHVCMD		EQU h'2D
CHPORT		EQU h'2E
CHWNT		EQU h'2F
CHVIBCM		EQU h'30
CHVIBPS		EQU h'31
CHTRMCM		EQU h'32
CHTRMPS		EQU h'33
CHPATPS		EQU h'34
CHLPCNT		EQU h'35
CHOFFST		EQU h'36
CHSLUP		EQU h'37
CHSLDN		EQU h'38
CHPRIOR		EQU h'39
CHSQZ		EQU h'3A

;CH      EQU h'3B
;CH      EQU h'3C
;CH      EQU h'3D
;CH      EQU h'3E

CHOLDV		EQU h'3F

CHANLEN		EQU h'40

CHNS		EQU h'04
SMPBEG		EQU h'00			;+00 SAMPLE START ADRESS
SMPEND		EQU h'03			;+03 SAMPLE END ADRESS
SMPFT		EQU h'06			;+06 SAMPLE FINETUNE
SMPVOL		EQU h'07			;+07 SAMPLE VOLUME
SMPLPB		EQU h'08			;+08 SAMPLE LOOP START
SMPLPE		EQU h'0B			;+0B SAMPLE LOOP END

SMPTYPE		EQU h'00
SMPBEGL		EQU h'01
SMPBEGM		EQU h'02
SMPBEGH		EQU h'03
SMPENDL		EQU h'04
SMPENDM		EQU h'05
SMPENDH		EQU h'06
SMPFINE		EQU h'08
SMPLPBL		EQU h'09
SMPLPBM		EQU h'0A
SMPLPBH		EQU h'0B
SMPLPEL		EQU h'0C
SMPLPEM		EQU h'0D
SMPLPEH		EQU h'0E
SMPREL		EQU h'0F
SMPPAN		EQU h'10
SMPCNT		EQU h'11
SMPSQZ		EQU h'12
SMPFRQL		EQU h'13
SMPFRQH		EQU h'14
SMPPERL		EQU h'15
SMPPERH		EQU h'16
SMPCHAN		EQU h'17

;STACK   EQU h'4400

;FXHEAD  EQU h'41C0
;TBUFFER EQU h'4200
ISTACK		EQU h'4400
CHANSFX		EQU h'4400
CHANS		EQU h'4600
SMPADR		EQU h'4800
;FXADR   EQU h'4C00
;INSTAB  EQU h'4E00
;SMPTAB  EQU h'4F00
;PATDC0  EQU h'5000
;PATDC1  EQU h'5200
;PATDC2  EQU h'5400
;PATDC3  EQU h'5600
BUFFER		EQU h'5800

INTAREA		EQU h'4242 ;#4040			;адрес таблицы прерываний

BAS4000		EQU h'4000

RAMPG		EQU BAS4000			;DS h'3F таблица страниц ОЗУ
ROMPG		EQU RAMPG + h'7F			;DS 1 страница ПЗУ

NUMPG		EQU BAS4000 + h'80		;4080	DS 1 адрес последней страницы
CPAGE		EQU NUMPG + 1			;4081	DS 1 значение записанное в порт MPAG
SYSTEM		EQU CPAGE + 1			;4082	DS 1
SDPAGE		EQU SYSTEM + 1			;4083	DS 1

PROCESS		EQU SDPAGE + 1			;4084	DEFS h'01
PLAYING		EQU PROCESS + 1			;4085	DEFS h'01
BUSY		EQU PLAYING + 1			;4086	DEFS h'01
INGEN		EQU BUSY + 1			;4087	DEFS h'01
INT		EQU INGEN + 1			;4088	DEFS h'01
INTYPE		EQU INT + 1			;4089	DEFS h'01
INTADR		EQU INTYPE + 1			;408A	DEFS h'02

QTFREE		EQU INTADR + 2			;408C	DEFS h'02
QTBUSY		EQU QTFREE + 2			;408E	DEFS h'02

CNTMOD		EQU QTBUSY + 2			;4090	DEFS h'01
CNTSMP		EQU CNTMOD + 1			;4091	DEFS h'01
CNTFX		EQU CNTSMP + 1			;4092	DEFS h'01
CNTTRK		EQU CNTFX + 1			;4093	DEFS h'02
CNTCHN		EQU CNTTRK + 2			;4095	DEFS h'01

CURMOD		EQU CNTCHN + 1			;4096	DEFS h'01
CURSMP		EQU CURMOD + 1			;4097	DEFS h'01
CURFX		EQU CURSMP + 1			;4098	DEFS h'01
CURTRK		EQU CURFX + 1			;4099	DEFS h'02
CURCHN		EQU CURTRK + 2			;409B	DEFS h'01

CURCHAN		EQU CURCHN + 1			;409C	DEFS h'02
MODUL		EQU CURCHAN + 2			;409E	DEFS h'01

GSCHNS		EQU MODUL + 1			;409F	DEFS h'01
FXCHNS		EQU GSCHNS + 1			;40A0	DEFS h'01
PLCHNS		EQU FXCHNS + 1			;40A1	DEFS h'01 ; << PAIR
MDCHNS		EQU PLCHNS + 1			;40A2	DEFS h'01 ; <<
MTCHNS		EQU MDCHNS + 1			;40A3	DEFS h'01

MODVOL		EQU MTCHNS + 1			;40A4	DEFS h'01
FXVOL		EQU MODVOL + 1			;40A5	DEFS h'01
FXMVOL		EQU FXVOL + 1			;40A6	DEFS h'01
MODFADE		EQU FXMVOL + 1			;40A7	DEFS h'01
FXFADE		EQU MODFADE + 1			;40A8	DEFS h'01

MODSWCH		EQU FXFADE + 1			;40A9	DEFS h'01
FILLALL		EQU MODSWCH + 1			;40AA	DEFS h'01

INFO		EQU FILLALL + 1			;40AB	DEFS h'01

MODSLEN		EQU INFO + 1			;40AC	DEFS h'03
FXSLEN		EQU MODSLEN + 3			;40AF	DEFS h'03

ERRCODE		EQU FXSLEN + 3			;40B2	DEFS h'01
SGENOFF		EQU ERRCODE + 1			;40B3	DEFS h'01
CHANNEL		EQU SGENOFF + 1			;40B4	DEFS h'01

MODPLT		EQU CHANNEL + 1			;40B5	DEFS h'01
MODSPLT		EQU MODPLT + 1			;40B6	DEFS h'01

CONVERT		EQU MODSPLT + 1			;40B7	DEFS h'01

LSTCHN		EQU CONVERT + 1			;40B8	DEFS h'01
LSTFX		EQU LSTCHN + 1			;40B9	DEFS h'01
LSTMOD		EQU LSTFX + 1			;40BA	DEFS h'01
LSTTRC		EQU LSTMOD + 1			;40BB	DEFS h'02

FXTICK		EQU LSTTRC + 2			;40BD	DEFS h'02
FXTCLEN		EQU FXTICK + 2			;40BF	DEFS h'02

;TADR		EQU FXTCLEN+2			;40C1	DEFS 2
;TLEN		EQU TADR+2			;40C3	DEFS 2
;TBUFLEN	EQU TLEN+2			;40C5	DEFS 2
;TBUFBEG	EQU TBUFLEN+2			;40C7	DEFS 2
;TBUFLN2	EQU TBUFBEG+2			;40C9	DEFS 2
;TBUFBG2	EQU TBUFLN2+2			;40CB	DEFS 2
;TBUFOLD	EQU TBUFBG2+2			;40CD	DEFS 1
;TERROR		EQU TBUFOLD+1			;40CE	DEFS 1
;TGLBL		EQU TERROR+1			;40CF	DEFS 2
;TGLBH		EQU TGLBL+2			;40D1	DEFS 1
;TLDDL		EQU TGLBH+1			;40D2	DEFS 2
;TLDDH		EQU TLDDL+2			;40D4	DEFS 1
;TRQLENL	EQU TLDDH+1			;40D5	DEFS 2
;TRQLENH	EQU TRQLENL+2			;40D7	DEFS 1
;TSIZE		EQU TRQLENH+1			;40D8	DEFS 2
;TCRC		EQU TSIZE+2			;40DA	DEFS 1
;TBURST		EQU TCRC+1			;40DB	DEFS 1
;TMODE		EQU TBURST+1			;40DC	DEFS 1  ;h'00-MODULE,h'FF-SAMPLE
;TMODL		EQU TMODE+1			;40DD	DEFS 2
;TMODH		EQU TMODL+2			;40DF	DEFS 1
;TSMPL		EQU TMODH+1			;40E0	DEFS 2
;TSMPH		EQU TSMPL+2			;40E2	DEFS 1

;LBCOUNT	EQU TSMPH+1			;40E3	DEFS 1

RAMBOT		EQU BAS4000 + h'D0		;40D0	DEFS h'03
PTR1		EQU RAMBOT + 3			;40D3	DEFS h'03
PTR2		EQU PTR1 + 3			;40D6	DEFS h'03
MEMBOT		EQU PTR2 + 3			;40D9	DEFS h'03
PTR3		EQU MEMBOT + 3			;40DC	DEFS h'03
PTR4		EQU PTR3 + 3			;40DF	DEFS h'03
MEMTOP		EQU PTR4 + 3			;40E2	DEFS h'03
PTR5		EQU MEMTOP + 3			;40E5	DEFS h'03
PTR6		EQU PTR5 + 3			;40E8	DEFS h'03
PTR7		EQU PTR6 + 3			;40EB	DEFS h'03
PTR8		EQU PTR7 + 3			;40EE	DEFS h'03
PTR9		EQU PTR8 + 3			;40F1	DEFS h'03
PTRA		EQU PTR9 + 3			;40F4	DEFS h'03
PTRB		EQU PTRA + 3			;40F7	DEFS h'03
PTRC		EQU PTRB + 3			;40FA	DEFS h'03
RAMTOP		EQU PTRC + 3			;40FD	DEFS h'03

BAS4100		EQU BAS4000 + h'100

QTMAP		EQU BAS4100			;4100	DEFS h'20
VOLTAB		EQU QTMAP + h'20			;4120	DEFS h'20
CHNVOL		EQU VOLTAB + h'20			;4140	DEFS h'08
VOLRQTB		EQU CHNVOL + 8			;4148	DEFS h'08

MTTYPE		EQU VOLRQTB + 8			;4150	DEFS h'01
MTSTAT		EQU MTTYPE + 1			;4151	DEFS h'01
MTFLAGS		EQU MTSTAT + 1			;4152	DEFS h'01
TICKLEN		EQU MTFLAGS + 1			;4153	DEFS h'02
TCKLEFT		EQU TICKLEN + 2			;4155	DEFS h'02
MTBPM		EQU TCKLEFT + 2			;4157	DEFS h'01
MTSPEED		EQU MTBPM + 1			;4158	DEFS h'01
MTCOUNT		EQU MTSPEED + 1			;4159	DEFS h'01
MTPATPS		EQU MTCOUNT + 1			;415A	DEFS h'01 нота
MTSNGPS		EQU MTPATPS + 1			;415B	DEFS h'01 позиция
MTSNGSZ		EQU MTSNGPS + 1			;415C	DEFS h'01 количество паттернов
MTSNGLP		EQU MTSNGSZ + 1			;415D	DEFS h'01 позиция зацикливания ??
MTPDT2		EQU MTSNGLP + 1			;415E	DEFS h'01
MTPDT		EQU MTPDT2 + 1			;415F	DEFS h'01

MTBRKFL		EQU MTPDT + 1			;4160	DEFS h'01
MTBRKPS		EQU MTBRKFL + 1			;4161	DEFS h'01
MTJMPFL		EQU MTBRKPS + 1			;4162	DEFS h'01
MTFILTR		EQU MTJMPFL + 1			;4163	DEFS h'01
MTROWS		EQU MTFILTR + 1			;4164	DEFS h'01
MTVOL		EQU MTROWS + 1			;4165	DEFS h'01

;4166	DEFS h'01
;4167	DEFS h'01

;MODDIR		EQU MTVOL+3			;4168	DEFS 8*6
CURADR		EQU MTVOL + h'33		;MODDIR + h'30	;4198	DEFS 3

SMPS		EQU CURADR + 3			;419B	DEFS h'03
PATTS		EQU SMPS + 3			;419E	DEFS h'01
MODTP		EQU PATTS + 1			;419F	DEFS h'01
PlMode		EQU MODTP + 1			;41A0	DEFS h'01 new var4new command
MODLLEN		EQU PlMode + 1			;41A1	DEFS h'01 minimal loop len

MODSMPS		EQU h'5000
MODPTST		EQU h'5001
ChipSP_		EQU h'5005
CHIP246		EQU h'5007
TOcip_		EQU h'5009
CHIPLN		EQU h'5010			; НА4АЛО СЕМПЛОВ (pointer)
CHIPPP		EQU h'5013			; ДЛИНА МОДУЛЯ
CIP1		EQU h'5016			; ОТКУДА ПЕРЕНОСИТЬ
CIP2		EQU h'5019			; КУДА ПЕРЕНОСИТЬ
CIP3		EQU h'501C			; КОНЕЦ БЛОКА