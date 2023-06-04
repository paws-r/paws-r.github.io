<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>support_describe_create_case_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of CreateCaseOption types along with the corresponding supported hours and language availability

### Description

Returns a list of CreateCaseOption types along with the corresponding
supported hours and language availability. You can specify the
`language` `categoryCode`, `issueType` and `serviceCode` used to
retrieve the CreateCaseOptions.

-   You must have a Business, Enterprise On-Ramp, or Enterprise Support
    plan to use the Amazon Web Services Support API.

-   If you call the Amazon Web Services Support API from an account that
    doesn't have a Business, Enterprise On-Ramp, or Enterprise Support
    plan, the `SubscriptionRequiredException` error message appears. For
    information about changing your support plan, see [Amazon Web
    Services Support](https://aws.amazon.com/premiumsupport/).

### Usage

    support_describe_create_case_options(issueType, serviceCode, language,
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
id="support_describe_create_case_options_:_issueType">issueType</code></td>
<td><p>[required] The type of issue for the case. You can specify
<code>customer-service</code> or <code>technical</code>. If you don't
specify a value, the default is <code>technical</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="support_describe_create_case_options_:_serviceCode">serviceCode</code></td>
<td><p>[required] The code for the Amazon Web Services service. You can
use the <code>describe_services</code> operation to get the possible
<code>serviceCode</code> values.</p></td>
</tr>
<tr class="odd">
<td><code
id="support_describe_create_case_options_:_language">language</code></td>
<td><p>[required] The language in which Amazon Web Services Support
handles the case. Amazon Web Services Support currently supports Chinese
(“zh”), English ("en"), Japanese ("ja") and Korean (“ko”). You must
specify the ISO 639-1 code for the <code>language</code> parameter if
you want support in that language.</p></td>
</tr>
<tr class="even">
<td><code
id="support_describe_create_case_options_:_categoryCode">categoryCode</code></td>
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
      languageAvailability = "string",
      communicationTypes = list(
        list(
          type = "string",
          supportedHours = list(
            list(
              startTime = "string",
              endTime = "string"
            )
          ),
          datesWithoutSupport = list(
            list(
              startDateTime = "string",
              endDateTime = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_create_case_options(
      issueType = "string",
      serviceCode = "string",
      language = "string",
      categoryCode = "string"
    )
