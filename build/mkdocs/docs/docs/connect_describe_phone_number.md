<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_describe_phone_number</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets details and status of a phone number that’s claimed to your Amazon Connect instance or traffic distribution group

### Description

Gets details and status of a phone number that’s claimed to your Amazon
Connect instance or traffic distribution group.

If the number is claimed to a traffic distribution group, and you are
calling in the Amazon Web Services Region where the traffic distribution
group was created, you can use either a phone number ARN or UUID value
for the `PhoneNumberId` URI request parameter. However, if the number is
claimed to a traffic distribution group and you are calling this API in
the alternate Amazon Web Services Region associated with the traffic
distribution group, you must provide a full phone number ARN. If a UUID
is provided in this scenario, you will receive a
`ResourceNotFoundException`.

### Usage

    connect_describe_phone_number(PhoneNumberId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_describe_phone_number_:_PhoneNumberId">PhoneNumberId</code></td>
<td><p>[required] A unique identifier for the phone number.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClaimedPhoneNumberSummary = list(
        PhoneNumberId = "string",
        PhoneNumberArn = "string",
        PhoneNumber = "string",
        PhoneNumberCountryCode = "AF"|"AL"|"DZ"|"AS"|"AD"|"AO"|"AI"|"AQ"|"AG"|"AR"|"AM"|"AW"|"AU"|"AT"|"AZ"|"BS"|"BH"|"BD"|"BB"|"BY"|"BE"|"BZ"|"BJ"|"BM"|"BT"|"BO"|"BA"|"BW"|"BR"|"IO"|"VG"|"BN"|"BG"|"BF"|"BI"|"KH"|"CM"|"CA"|"CV"|"KY"|"CF"|"TD"|"CL"|"CN"|"CX"|"CC"|"CO"|"KM"|"CK"|"CR"|"HR"|"CU"|"CW"|"CY"|"CZ"|"CD"|"DK"|"DJ"|"DM"|"DO"|"TL"|"EC"|"EG"|"SV"|"GQ"|"ER"|"EE"|"ET"|"FK"|"FO"|"FJ"|"FI"|"FR"|"PF"|"GA"|"GM"|"GE"|"DE"|"GH"|"GI"|"GR"|"GL"|"GD"|"GU"|"GT"|"GG"|"GN"|"GW"|"GY"|"HT"|"HN"|"HK"|"HU"|"IS"|"IN"|"ID"|"IR"|"IQ"|"IE"|"IM"|"IL"|"IT"|"CI"|"JM"|"JP"|"JE"|"JO"|"KZ"|"KE"|"KI"|"KW"|"KG"|"LA"|"LV"|"LB"|"LS"|"LR"|"LY"|"LI"|"LT"|"LU"|"MO"|"MK"|"MG"|"MW"|"MY"|"MV"|"ML"|"MT"|"MH"|"MR"|"MU"|"YT"|"MX"|"FM"|"MD"|"MC"|"MN"|"ME"|"MS"|"MA"|"MZ"|"MM"|"NA"|"NR"|"NP"|"NL"|"AN"|"NC"|"NZ"|"NI"|"NE"|"NG"|"NU"|"KP"|"MP"|"NO"|"OM"|"PK"|"PW"|"PA"|"PG"|"PY"|"PE"|"PH"|"PN"|"PL"|"PT"|"PR"|"QA"|"CG"|"RE"|"RO"|"RU"|"RW"|"BL"|"SH"|"KN"|"LC"|"MF"|"PM"|"VC"|"WS"|"SM"|"ST"|"SA"|"SN"|"RS"|"SC"|"SL"|"SG"|"SX"|"SK"|"SI"|"SB"|"SO"|"ZA"|"KR"|"ES"|"LK"|"SD"|"SR"|"SJ"|"SZ"|"SE"|"CH"|"SY"|"TW"|"TJ"|"TZ"|"TH"|"TG"|"TK"|"TO"|"TT"|"TN"|"TR"|"TM"|"TC"|"TV"|"VI"|"UG"|"UA"|"AE"|"GB"|"US"|"UY"|"UZ"|"VU"|"VA"|"VE"|"VN"|"WF"|"EH"|"YE"|"ZM"|"ZW",
        PhoneNumberType = "TOLL_FREE"|"DID",
        PhoneNumberDescription = "string",
        TargetArn = "string",
        Tags = list(
          "string"
        ),
        PhoneNumberStatus = list(
          Status = "CLAIMED"|"IN_PROGRESS"|"FAILED",
          Message = "string"
        )
      )
    )

### Request syntax

    svc$describe_phone_number(
      PhoneNumberId = "string"
    )
