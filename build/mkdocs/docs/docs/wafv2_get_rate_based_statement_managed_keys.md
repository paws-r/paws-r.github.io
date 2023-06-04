<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_get_rate_based_statement_managed_keys</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the IP addresses that are currently blocked by a rate-based rule instance

### Description

Retrieves the IP addresses that are currently blocked by a rate-based
rule instance. This is only available for rate-based rules that
aggregate solely on the IP address or on the forwarded IP address.

The maximum number of addresses that can be blocked for a single
rate-based rule instance is 10,000. If more than 10,000 addresses exceed
the rate limit, those with the highest rates are blocked.

For a rate-based rule that you've defined inside a rule group, provide
the name of the rule group reference statement in your request, in
addition to the rate-based rule name and the web ACL name.

WAF monitors web requests and manages keys independently for each unique
combination of web ACL, optional rule group, and rate-based rule. For
example, if you define a rate-based rule inside a rule group, and then
use the rule group in a web ACL, WAF monitors web requests and manages
keys for that web ACL, rule group reference statement, and rate-based
rule instance. If you use the same rule group in a second web ACL, WAF
monitors web requests and manages keys for this second usage completely
independent of your first.

### Usage

    wafv2_get_rate_based_statement_managed_keys(Scope, WebACLName, WebACLId,
      RuleGroupRuleName, RuleName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafv2_get_rate_based_statement_managed_keys_:_Scope">Scope</code></td>
<td><p>[required] Specifies whether this is for an Amazon CloudFront
distribution or for a regional application. A regional application can
be an Application Load Balancer (ALB), an Amazon API Gateway REST API,
an AppSync GraphQL API, an Amazon Cognito user pool, an App Runner
service, or an Amazon Web Services Verified Access instance.</p>
<p>To work with CloudFront, you must also specify the Region US East (N.
Virginia) as follows:</p>
<ul>
<li><p>CLI - Specify the Region when you use the CloudFront scope:
<code>--scope=CLOUDFRONT --region=us-east-1</code>.</p></li>
<li><p>API and SDKs - For all calls, use the Region endpoint
us-east-1.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="wafv2_get_rate_based_statement_managed_keys_:_WebACLName">WebACLName</code></td>
<td><p>[required] The name of the web ACL. You cannot change the name of
a web ACL after you create it.</p></td>
</tr>
<tr class="odd">
<td><code
id="wafv2_get_rate_based_statement_managed_keys_:_WebACLId">WebACLId</code></td>
<td><p>[required] The unique identifier for the web ACL. This ID is
returned in the responses to create and list commands. You provide it to
operations like update and delete.</p></td>
</tr>
<tr class="even">
<td><code
id="wafv2_get_rate_based_statement_managed_keys_:_RuleGroupRuleName">RuleGroupRuleName</code></td>
<td><p>The name of the rule group reference statement in your web ACL.
This is required only when you have the rate-based rule nested inside a
rule group.</p></td>
</tr>
<tr class="odd">
<td><code
id="wafv2_get_rate_based_statement_managed_keys_:_RuleName">RuleName</code></td>
<td><p>[required] The name of the rate-based rule to get the keys for.
If you have the rule defined inside a rule group that you're using in
your web ACL, also provide the name of the rule group reference
statement in the request parameter
<code>RuleGroupRuleName</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ManagedKeysIPV4 = list(
        IPAddressVersion = "IPV4"|"IPV6",
        Addresses = list(
          "string"
        )
      ),
      ManagedKeysIPV6 = list(
        IPAddressVersion = "IPV4"|"IPV6",
        Addresses = list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_rate_based_statement_managed_keys(
      Scope = "CLOUDFRONT"|"REGIONAL",
      WebACLName = "string",
      WebACLId = "string",
      RuleGroupRuleName = "string",
      RuleName = "string"
    )
