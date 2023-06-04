<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>support_describe_severity_levels</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the list of severity levels that you can assign to a support case

### Description

Returns the list of severity levels that you can assign to a support
case. The severity level for a case is also a field in the CaseDetails
data type that you include for a `create_case` request.

-   You must have a Business, Enterprise On-Ramp, or Enterprise Support
    plan to use the Amazon Web Services Support API.

-   If you call the Amazon Web Services Support API from an account that
    doesn't have a Business, Enterprise On-Ramp, or Enterprise Support
    plan, the `SubscriptionRequiredException` error message appears. For
    information about changing your support plan, see [Amazon Web
    Services Support](https://aws.amazon.com/premiumsupport/).

### Usage

    support_describe_severity_levels(language)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="support_describe_severity_levels_:_language">language</code></td>
<td><p>The language in which Amazon Web Services Support handles the
case. Amazon Web Services Support currently supports Chinese (“zh”),
English ("en"), Japanese ("ja") and Korean (“ko”). You must specify the
ISO 639-1 code for the <code>language</code> parameter if you want
support in that language.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      severityLevels = list(
        list(
          code = "string",
          name = "string"
        )
      )
    )

### Request syntax

    svc$describe_severity_levels(
      language = "string"
    )
