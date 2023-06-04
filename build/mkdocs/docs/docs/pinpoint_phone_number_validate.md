<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_phone_number_validate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about a phone number

### Description

Retrieves information about a phone number.

### Usage

    pinpoint_phone_number_validate(NumberValidateRequest)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_phone_number_validate_:_NumberValidateRequest">NumberValidateRequest</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NumberValidateResponse = list(
        Carrier = "string",
        City = "string",
        CleansedPhoneNumberE164 = "string",
        CleansedPhoneNumberNational = "string",
        Country = "string",
        CountryCodeIso2 = "string",
        CountryCodeNumeric = "string",
        County = "string",
        OriginalCountryCodeIso2 = "string",
        OriginalPhoneNumber = "string",
        PhoneType = "string",
        PhoneTypeCode = 123,
        Timezone = "string",
        ZipCode = "string"
      )
    )

### Request syntax

    svc$phone_number_validate(
      NumberValidateRequest = list(
        IsoCountryCode = "string",
        PhoneNumber = "string"
      )
    )
