<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_get_account_limit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the specified limit for the current account, for example, the maximum number of health checks that you can create using the account

### Description

Gets the specified limit for the current account, for example, the
maximum number of health checks that you can create using the account.

For the default limit, see
[Limits](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html)
in the *Amazon Route 53 Developer Guide*. To request a higher limit,
open a case.

You can also view account limits in Amazon Web Services Trusted Advisor.
Sign in to the Amazon Web Services Management Console and open the
Trusted Advisor console at
https://console.aws.amazon.com/trustedadvisor/. Then choose **Service
limits** in the navigation pane.

### Usage

    route53_get_account_limit(Type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_get_account_limit_:_Type">Type</code></td>
<td><p>[required] The limit that you want to get. Valid values include
the following:</p>
<ul>
<li><p><strong>MAX_HEALTH_CHECKS_BY_OWNER</strong>: The maximum number
of health checks that you can create using the current account.</p></li>
<li><p><strong>MAX_HOSTED_ZONES_BY_OWNER</strong>: The maximum number of
hosted zones that you can create using the current account.</p></li>
<li><p><strong>MAX_REUSABLE_DELEGATION_SETS_BY_OWNER</strong>: The
maximum number of reusable delegation sets that you can create using the
current account.</p></li>
<li><p><strong>MAX_TRAFFIC_POLICIES_BY_OWNER</strong>: The maximum
number of traffic policies that you can create using the current
account.</p></li>
<li><p><strong>MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER</strong>: The
maximum number of traffic policy instances that you can create using the
current account. (Traffic policy instances are referred to as traffic
flow policy records in the Amazon Route 53 console.)</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Limit = list(
        Type = "MAX_HEALTH_CHECKS_BY_OWNER"|"MAX_HOSTED_ZONES_BY_OWNER"|"MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER"|"MAX_REUSABLE_DELEGATION_SETS_BY_OWNER"|"MAX_TRAFFIC_POLICIES_BY_OWNER",
        Value = 123
      ),
      Count = 123
    )

### Request syntax

    svc$get_account_limit(
      Type = "MAX_HEALTH_CHECKS_BY_OWNER"|"MAX_HOSTED_ZONES_BY_OWNER"|"MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER"|"MAX_REUSABLE_DELEGATION_SETS_BY_OWNER"|"MAX_TRAFFIC_POLICIES_BY_OWNER"
    )
