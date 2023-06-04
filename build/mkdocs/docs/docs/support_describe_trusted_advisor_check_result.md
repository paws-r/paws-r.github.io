<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>support_describe_trusted_advisor_check_result</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the results of the Trusted Advisor check that has the specified check ID

### Description

Returns the results of the Trusted Advisor check that has the specified
check ID. You can get the check IDs by calling the
`describe_trusted_advisor_checks` operation.

The response contains a TrustedAdvisorCheckResult object, which contains
these three objects:

-   TrustedAdvisorCategorySpecificSummary

-   TrustedAdvisorResourceDetail

-   TrustedAdvisorResourcesSummary

In addition, the response contains these fields:

-   **status** - The alert status of the check can be `ok` (green),
    `warning` (yellow), `error` (red), or `not_available`.

-   **timestamp** - The time of the last refresh of the check.

-   **checkId** - The unique identifier for the check.

-   You must have a Business, Enterprise On-Ramp, or Enterprise Support
    plan to use the Amazon Web Services Support API.

-   If you call the Amazon Web Services Support API from an account that
    doesn't have a Business, Enterprise On-Ramp, or Enterprise Support
    plan, the `SubscriptionRequiredException` error message appears. For
    information about changing your support plan, see [Amazon Web
    Services Support](https://aws.amazon.com/premiumsupport/).

To call the Trusted Advisor operations in the Amazon Web Services
Support API, you must use the US East (N. Virginia) endpoint. Currently,
the US West (Oregon) and Europe (Ireland) endpoints don't support the
Trusted Advisor operations. For more information, see [About the Amazon
Web Services Support
API](https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint)
in the *Amazon Web Services Support User Guide*.

### Usage

    support_describe_trusted_advisor_check_result(checkId, language)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="support_describe_trusted_advisor_check_result_:_checkId">checkId</code></td>
<td><p>[required] The unique identifier for the Trusted Advisor
check.</p></td>
</tr>
<tr class="even">
<td><code
id="support_describe_trusted_advisor_check_result_:_language">language</code></td>
<td><p>The ISO 639-1 code for the language that you want your check
results to appear in.</p>
<p>The Amazon Web Services Support API currently supports the following
languages for Trusted Advisor:</p>
<ul>
<li><p>Chinese, Simplified - <code>zh</code></p></li>
<li><p>Chinese, Traditional - <code>zh_TW</code></p></li>
<li><p>English - <code>en</code></p></li>
<li><p>French - <code>fr</code></p></li>
<li><p>German - <code>de</code></p></li>
<li><p>Indonesian - <code>id</code></p></li>
<li><p>Italian - <code>it</code></p></li>
<li><p>Japanese - <code>ja</code></p></li>
<li><p>Korean - <code>ko</code></p></li>
<li><p>Portuguese, Brazilian - <code>pt_BR</code></p></li>
<li><p>Spanish - <code>es</code></p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      result = list(
        checkId = "string",
        timestamp = "string",
        status = "string",
        resourcesSummary = list(
          resourcesProcessed = 123,
          resourcesFlagged = 123,
          resourcesIgnored = 123,
          resourcesSuppressed = 123
        ),
        categorySpecificSummary = list(
          costOptimizing = list(
            estimatedMonthlySavings = 123.0,
            estimatedPercentMonthlySavings = 123.0
          )
        ),
        flaggedResources = list(
          list(
            status = "string",
            region = "string",
            resourceId = "string",
            isSuppressed = TRUE|FALSE,
            metadata = list(
              "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_trusted_advisor_check_result(
      checkId = "string",
      language = "string"
    )
