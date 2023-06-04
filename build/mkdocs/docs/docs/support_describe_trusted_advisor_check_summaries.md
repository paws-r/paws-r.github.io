<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>support_describe_trusted_advisor_check_summaries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the results for the Trusted Advisor check summaries for the check IDs that you specified

### Description

Returns the results for the Trusted Advisor check summaries for the
check IDs that you specified. You can get the check IDs by calling the
`describe_trusted_advisor_checks` operation.

The response contains an array of TrustedAdvisorCheckSummary objects.

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

    support_describe_trusted_advisor_check_summaries(checkIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="support_describe_trusted_advisor_check_summaries_:_checkIds">checkIds</code></td>
<td><p>[required] The IDs of the Trusted Advisor checks.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      summaries = list(
        list(
          checkId = "string",
          timestamp = "string",
          status = "string",
          hasFlaggedResources = TRUE|FALSE,
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
          )
        )
      )
    )

### Request syntax

    svc$describe_trusted_advisor_check_summaries(
      checkIds = list(
        "string"
      )
    )
