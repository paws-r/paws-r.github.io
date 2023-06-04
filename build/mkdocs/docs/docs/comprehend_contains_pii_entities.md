<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_contains_pii_entities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Analyzes input text for the presence of personally identifiable information (PII) and returns the labels of identified PII entity types such as name, address, bank account number, or phone number

### Description

Analyzes input text for the presence of personally identifiable
information (PII) and returns the labels of identified PII entity types
such as name, address, bank account number, or phone number.

### Usage

    comprehend_contains_pii_entities(Text, LanguageCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="comprehend_contains_pii_entities_:_Text">Text</code></td>
<td><p>[required] A UTF-8 text string. The maximum string size is 100
KB.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_contains_pii_entities_:_LanguageCode">LanguageCode</code></td>
<td><p>[required] The language of the input documents. Currently,
English is the only valid language.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Labels = list(
        list(
          Name = "BANK_ACCOUNT_NUMBER"|"BANK_ROUTING"|"CREDIT_DEBIT_NUMBER"|"CREDIT_DEBIT_CVV"|"CREDIT_DEBIT_EXPIRY"|"PIN"|"EMAIL"|"ADDRESS"|"NAME"|"PHONE"|"SSN"|"DATE_TIME"|"PASSPORT_NUMBER"|"DRIVER_ID"|"URL"|"AGE"|"USERNAME"|"PASSWORD"|"AWS_ACCESS_KEY"|"AWS_SECRET_KEY"|"IP_ADDRESS"|"MAC_ADDRESS"|"ALL"|"LICENSE_PLATE"|"VEHICLE_IDENTIFICATION_NUMBER"|"UK_NATIONAL_INSURANCE_NUMBER"|"CA_SOCIAL_INSURANCE_NUMBER"|"US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER"|"UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"|"IN_PERMANENT_ACCOUNT_NUMBER"|"IN_NREGA"|"INTERNATIONAL_BANK_ACCOUNT_NUMBER"|"SWIFT_CODE"|"UK_NATIONAL_HEALTH_SERVICE_NUMBER"|"CA_HEALTH_NUMBER"|"IN_AADHAAR"|"IN_VOTER_NUMBER",
          Score = 123.0
        )
      )
    )

### Request syntax

    svc$contains_pii_entities(
      Text = "string",
      LanguageCode = "en"|"es"|"fr"|"de"|"it"|"pt"|"ar"|"hi"|"ja"|"ko"|"zh"|"zh-TW"
    )
