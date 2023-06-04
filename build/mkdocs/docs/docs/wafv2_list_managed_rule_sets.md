<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_list_managed_rule_sets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the managed rule sets that you own

### Description

Retrieves the managed rule sets that you own.

This is intended for use only by vendors of managed rule sets. Vendors
are Amazon Web Services and Amazon Web Services Marketplace sellers.

Vendors, you can use the managed rule set APIs to provide controlled
rollout of your versioned managed rule group offerings for your
customers. The APIs are `list_managed_rule_sets`,
`get_managed_rule_set`, `put_managed_rule_set_versions`, and
`update_managed_rule_set_version_expiry_date`.

### Usage

    wafv2_list_managed_rule_sets(Scope, NextMarker, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="wafv2_list_managed_rule_sets_:_Scope">Scope</code></td>
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
id="wafv2_list_managed_rule_sets_:_NextMarker">NextMarker</code></td>
<td><p>When you request a list of objects with a <code>Limit</code>
setting, if the number of objects that are still available for retrieval
exceeds the limit, WAF returns a <code>NextMarker</code> value in the
response. To retrieve the next batch of objects, provide the marker from
the prior call in your next request.</p></td>
</tr>
<tr class="odd">
<td><code id="wafv2_list_managed_rule_sets_:_Limit">Limit</code></td>
<td><p>The maximum number of objects that you want WAF to return for
this request. If more objects are available, in the response, WAF
provides a <code>NextMarker</code> value that you can use in a
subsequent call to get the next batch of objects.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextMarker = "string",
      ManagedRuleSets = list(
        list(
          Name = "string",
          Id = "string",
          Description = "string",
          LockToken = "string",
          ARN = "string",
          LabelNamespace = "string"
        )
      )
    )

### Request syntax

    svc$list_managed_rule_sets(
      Scope = "CLOUDFRONT"|"REGIONAL",
      NextMarker = "string",
      Limit = 123
    )
