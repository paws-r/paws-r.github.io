<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>support_describe_trusted_advisor_check_refresh_statuses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the refresh status of the Trusted Advisor checks that have the specified check IDs

### Description

Returns the refresh status of the Trusted Advisor checks that have the
specified check IDs. You can get the check IDs by calling the
`describe_trusted_advisor_checks` operation.

Some checks are refreshed automatically, and you can't return their
refresh statuses by using the
`describe_trusted_advisor_check_refresh_statuses` operation. If you call
this operation for these checks, you might see an
`InvalidParameterValue` error.

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

    support_describe_trusted_advisor_check_refresh_statuses(checkIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="support_describe_trusted_advisor_check_refresh_statuses_:_checkIds">checkIds</code></td>
<td><p>[required] The IDs of the Trusted Advisor checks to get the
status.</p>
<p>If you specify the check ID of a check that is automatically
refreshed, you might see an <code>InvalidParameterValue</code>
error.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      statuses = list(
        list(
          checkId = "string",
          status = "string",
          millisUntilNextRefreshable = 123
        )
      )
    )

### Request syntax

    svc$describe_trusted_advisor_check_refresh_statuses(
      checkIds = list(
        "string"
      )
    )
