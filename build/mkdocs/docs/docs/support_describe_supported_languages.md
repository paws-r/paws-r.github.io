<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>support_describe_supported_languages</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of supported languages for a specified categoryCode, issueType and serviceCode

### Description

Returns a list of supported languages for a specified `categoryCode`,
`issueType` and `serviceCode`. The returned supported languages will
include a ISO 639-1 code for the `language`, and the language display
name.

-   You must have a Business, Enterprise On-Ramp, or Enterprise Support
    plan to use the Amazon Web Services Support API.

-   If you call the Amazon Web Services Support API from an account that
    doesn't have a Business, Enterprise On-Ramp, or Enterprise Support
    plan, the `SubscriptionRequiredException` error message appears. For
    information about changing your support plan, see [Amazon Web
    Services Support](https://aws.amazon.com/premiumsupport/).

### Usage

    support_describe_supported_languages(issueType, serviceCode,
      categoryCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="support_describe_supported_languages_:_issueType">issueType</code></td>
<td><p>[required] The type of issue for the case. You can specify
<code>customer-service</code> or <code>technical</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="support_describe_supported_languages_:_serviceCode">serviceCode</code></td>
<td><p>[required] The code for the Amazon Web Services service. You can
use the <code>describe_services</code> operation to get the possible
<code>serviceCode</code> values.</p></td>
</tr>
<tr class="odd">
<td><code
id="support_describe_supported_languages_:_categoryCode">categoryCode</code></td>
<td><p>[required] The category of problem for the support case. You also
use the <code>describe_services</code> operation to get the category
code for a service. Each Amazon Web Services service defines its own set
of category codes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      supportedLanguages = list(
        list(
          code = "string",
          language = "string",
          display = "string"
        )
      )
    )

### Request syntax

    svc$describe_supported_languages(
      issueType = "string",
      serviceCode = "string",
      categoryCode = "string"
    )
