<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>support_refresh_trusted_advisor_check</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Refreshes the Trusted Advisor check that you specify using the check ID

### Description

Refreshes the Trusted Advisor check that you specify using the check ID.
You can get the check IDs by calling the
`describe_trusted_advisor_checks` operation.

Some checks are refreshed automatically. If you call the
`refresh_trusted_advisor_check` operation to refresh them, you might see
the `InvalidParameterValue` error.

The response contains a TrustedAdvisorCheckRefreshStatus object.

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

    support_refresh_trusted_advisor_check(checkId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="support_refresh_trusted_advisor_check_:_checkId">checkId</code></td>
<td><p>[required] The unique identifier for the Trusted Advisor check to
refresh.</p>
<p>Specifying the check ID of a check that is automatically refreshed
causes an <code>InvalidParameterValue</code> error.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      status = list(
        checkId = "string",
        status = "string",
        millisUntilNextRefreshable = 123
      )
    )

### Request syntax

    svc$refresh_trusted_advisor_check(
      checkId = "string"
    )
