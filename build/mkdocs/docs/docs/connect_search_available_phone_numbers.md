<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_search_available_phone_numbers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Searches for available phone numbers that you can claim to your Amazon Connect instance or traffic distribution group

### Description

Searches for available phone numbers that you can claim to your Amazon
Connect instance or traffic distribution group. If the provided
`TargetArn` is a traffic distribution group, you can call this API in
both Amazon Web Services Regions associated with the traffic
distribution group.

### Usage

    connect_search_available_phone_numbers(TargetArn,
      PhoneNumberCountryCode, PhoneNumberType, PhoneNumberPrefix, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_search_available_phone_numbers_:_TargetArn">TargetArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for Amazon Connect
instances or traffic distribution groups that phone numbers are claimed
to.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_search_available_phone_numbers_:_PhoneNumberCountryCode">PhoneNumberCountryCode</code></td>
<td><p>[required] The ISO country code.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_search_available_phone_numbers_:_PhoneNumberType">PhoneNumberType</code></td>
<td><p>[required] The type of phone number.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_search_available_phone_numbers_:_PhoneNumberPrefix">PhoneNumberPrefix</code></td>
<td><p>The prefix of the phone number. If provided, it must contain
<code>+</code> as part of the country code.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_search_available_phone_numbers_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_search_available_phone_numbers_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      AvailableNumbersList = list(
        list(
          PhoneNumber = "string",
          PhoneNumberCountryCode = "AF"|"AL"|"DZ"|"AS"|"AD"|"AO"|"AI"|"AQ"|"AG"|"AR"|"AM"|"AW"|"AU"|"AT"|"AZ"|"BS"|"BH"|"BD"|"BB"|"BY"|"BE"|"BZ"|"BJ"|"BM"|"BT"|"BO"|"BA"|"BW"|"BR"|"IO"|"VG"|"BN"|"BG"|"BF"|"BI"|"KH"|"CM"|"CA"|"CV"|"KY"|"CF"|"TD"|"CL"|"CN"|"CX"|"CC"|"CO"|"KM"|"CK"|"CR"|"HR"|"CU"|"CW"|"CY"|"CZ"|"CD"|"DK"|"DJ"|"DM"|"DO"|"TL"|"EC"|"EG"|"SV"|"GQ"|"ER"|"EE"|"ET"|"FK"|"FO"|"FJ"|"FI"|"FR"|"PF"|"GA"|"GM"|"GE"|"DE"|"GH"|"GI"|"GR"|"GL"|"GD"|"GU"|"GT"|"GG"|"GN"|"GW"|"GY"|"HT"|"HN"|"HK"|"HU"|"IS"|"IN"|"ID"|"IR"|"IQ"|"IE"|"IM"|"IL"|"IT"|"CI"|"JM"|"JP"|"JE"|"JO"|"KZ"|"KE"|"KI"|"KW"|"KG"|"LA"|"LV"|"LB"|"LS"|"LR"|"LY"|"LI"|"LT"|"LU"|"MO"|"MK"|"MG"|"MW"|"MY"|"MV"|"ML"|"MT"|"MH"|"MR"|"MU"|"YT"|"MX"|"FM"|"MD"|"MC"|"MN"|"ME"|"MS"|"MA"|"MZ"|"MM"|"NA"|"NR"|"NP"|"NL"|"AN"|"NC"|"NZ"|"NI"|"NE"|"NG"|"NU"|"KP"|"MP"|"NO"|"OM"|"PK"|"PW"|"PA"|"PG"|"PY"|"PE"|"PH"|"PN"|"PL"|"PT"|"PR"|"QA"|"CG"|"RE"|"RO"|"RU"|"RW"|"BL"|"SH"|"KN"|"LC"|"MF"|"PM"|"VC"|"WS"|"SM"|"ST"|"SA"|"SN"|"RS"|"SC"|"SL"|"SG"|"SX"|"SK"|"SI"|"SB"|"SO"|"ZA"|"KR"|"ES"|"LK"|"SD"|"SR"|"SJ"|"SZ"|"SE"|"CH"|"SY"|"TW"|"TJ"|"TZ"|"TH"|"TG"|"TK"|"TO"|"TT"|"TN"|"TR"|"TM"|"TC"|"TV"|"VI"|"UG"|"UA"|"AE"|"GB"|"US"|"UY"|"UZ"|"VU"|"VA"|"VE"|"VN"|"WF"|"EH"|"YE"|"ZM"|"ZW",
          PhoneNumberType = "TOLL_FREE"|"DID"
        )
      )
    )

### Request syntax

    svc$search_available_phone_numbers(
      TargetArn = "string",
      PhoneNumberCountryCode = "AF"|"AL"|"DZ"|"AS"|"AD"|"AO"|"AI"|"AQ"|"AG"|"AR"|"AM"|"AW"|"AU"|"AT"|"AZ"|"BS"|"BH"|"BD"|"BB"|"BY"|"BE"|"BZ"|"BJ"|"BM"|"BT"|"BO"|"BA"|"BW"|"BR"|"IO"|"VG"|"BN"|"BG"|"BF"|"BI"|"KH"|"CM"|"CA"|"CV"|"KY"|"CF"|"TD"|"CL"|"CN"|"CX"|"CC"|"CO"|"KM"|"CK"|"CR"|"HR"|"CU"|"CW"|"CY"|"CZ"|"CD"|"DK"|"DJ"|"DM"|"DO"|"TL"|"EC"|"EG"|"SV"|"GQ"|"ER"|"EE"|"ET"|"FK"|"FO"|"FJ"|"FI"|"FR"|"PF"|"GA"|"GM"|"GE"|"DE"|"GH"|"GI"|"GR"|"GL"|"GD"|"GU"|"GT"|"GG"|"GN"|"GW"|"GY"|"HT"|"HN"|"HK"|"HU"|"IS"|"IN"|"ID"|"IR"|"IQ"|"IE"|"IM"|"IL"|"IT"|"CI"|"JM"|"JP"|"JE"|"JO"|"KZ"|"KE"|"KI"|"KW"|"KG"|"LA"|"LV"|"LB"|"LS"|"LR"|"LY"|"LI"|"LT"|"LU"|"MO"|"MK"|"MG"|"MW"|"MY"|"MV"|"ML"|"MT"|"MH"|"MR"|"MU"|"YT"|"MX"|"FM"|"MD"|"MC"|"MN"|"ME"|"MS"|"MA"|"MZ"|"MM"|"NA"|"NR"|"NP"|"NL"|"AN"|"NC"|"NZ"|"NI"|"NE"|"NG"|"NU"|"KP"|"MP"|"NO"|"OM"|"PK"|"PW"|"PA"|"PG"|"PY"|"PE"|"PH"|"PN"|"PL"|"PT"|"PR"|"QA"|"CG"|"RE"|"RO"|"RU"|"RW"|"BL"|"SH"|"KN"|"LC"|"MF"|"PM"|"VC"|"WS"|"SM"|"ST"|"SA"|"SN"|"RS"|"SC"|"SL"|"SG"|"SX"|"SK"|"SI"|"SB"|"SO"|"ZA"|"KR"|"ES"|"LK"|"SD"|"SR"|"SJ"|"SZ"|"SE"|"CH"|"SY"|"TW"|"TJ"|"TZ"|"TH"|"TG"|"TK"|"TO"|"TT"|"TN"|"TR"|"TM"|"TC"|"TV"|"VI"|"UG"|"UA"|"AE"|"GB"|"US"|"UY"|"UZ"|"VU"|"VA"|"VE"|"VN"|"WF"|"EH"|"YE"|"ZM"|"ZW",
      PhoneNumberType = "TOLL_FREE"|"DID",
      PhoneNumberPrefix = "string",
      MaxResults = 123,
      NextToken = "string"
    )
