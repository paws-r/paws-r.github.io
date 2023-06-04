<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_put_managed_rule_set_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Defines the versions of your managed rule set that you are offering to the customers

### Description

Defines the versions of your managed rule set that you are offering to
the customers. Customers see your offerings as managed rule groups with
versioning.

This is intended for use only by vendors of managed rule sets. Vendors
are Amazon Web Services and Amazon Web Services Marketplace sellers.

Vendors, you can use the managed rule set APIs to provide controlled
rollout of your versioned managed rule group offerings for your
customers. The APIs are `list_managed_rule_sets`,
`get_managed_rule_set`, `put_managed_rule_set_versions`, and
`update_managed_rule_set_version_expiry_date`.

Customers retrieve their managed rule group list by calling
`list_available_managed_rule_groups`. The name that you provide here for
your managed rule set is the name the customer sees for the
corresponding managed rule group. Customers can retrieve the available
versions for a managed rule group by calling
`list_available_managed_rule_group_versions`. You provide a rule group
specification for each version. For each managed rule set, you must
specify a version that you recommend using.

To initiate the expiration of a managed rule group version, use
`update_managed_rule_set_version_expiry_date`.

### Usage

    wafv2_put_managed_rule_set_versions(Name, Scope, Id, LockToken,
      RecommendedVersion, VersionsToPublish)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafv2_put_managed_rule_set_versions_:_Name">Name</code></td>
<td><p>[required] The name of the managed rule set. You use this, along
with the rule set ID, to identify the rule set.</p>
<p>This name is assigned to the corresponding managed rule group, which
your customers can access and use.</p></td>
</tr>
<tr class="even">
<td><code
id="wafv2_put_managed_rule_set_versions_:_Scope">Scope</code></td>
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
<tr class="odd">
<td><code id="wafv2_put_managed_rule_set_versions_:_Id">Id</code></td>
<td><p>[required] A unique identifier for the managed rule set. The ID
is returned in the responses to commands like <code>list</code>. You
provide it to operations like <code>get</code> and
<code>update</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="wafv2_put_managed_rule_set_versions_:_LockToken">LockToken</code></td>
<td><p>[required] A token used for optimistic locking. WAF returns a
token to your <code>get</code> and <code>list</code> requests, to mark
the state of the entity at the time of the request. To make changes to
the entity associated with the token, you provide the token to
operations like <code>update</code> and <code>delete</code>. WAF uses
the token to ensure that no changes have been made to the entity since
you last retrieved it. If a change has been made, the update fails with
a <code>WAFOptimisticLockException</code>. If this happens, perform
another <code>get</code>, and use the new token returned by that
operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="wafv2_put_managed_rule_set_versions_:_RecommendedVersion">RecommendedVersion</code></td>
<td><p>The version of the named managed rule group that you'd like your
customers to choose, from among your version offerings.</p></td>
</tr>
<tr class="even">
<td><code
id="wafv2_put_managed_rule_set_versions_:_VersionsToPublish">VersionsToPublish</code></td>
<td><p>The versions of the named managed rule group that you want to
offer to your customers.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextLockToken = "string"
    )

### Request syntax

    svc$put_managed_rule_set_versions(
      Name = "string",
      Scope = "CLOUDFRONT"|"REGIONAL",
      Id = "string",
      LockToken = "string",
      RecommendedVersion = "string",
      VersionsToPublish = list(
        list(
          AssociatedRuleGroupArn = "string",
          ForecastedLifetime = 123
        )
      )
    )
