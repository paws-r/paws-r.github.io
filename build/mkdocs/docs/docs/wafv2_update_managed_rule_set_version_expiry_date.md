<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_update_managed_rule_set_version_expiry_date</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the expiration information for your managed rule set

### Description

Updates the expiration information for your managed rule set. Use this
to initiate the expiration of a managed rule group version. After you
initiate expiration for a version, WAF excludes it from the response to
`list_available_managed_rule_group_versions` for the managed rule group.

This is intended for use only by vendors of managed rule sets. Vendors
are Amazon Web Services and Amazon Web Services Marketplace sellers.

Vendors, you can use the managed rule set APIs to provide controlled
rollout of your versioned managed rule group offerings for your
customers. The APIs are `list_managed_rule_sets`,
`get_managed_rule_set`, `put_managed_rule_set_versions`, and
`update_managed_rule_set_version_expiry_date`.

### Usage

    wafv2_update_managed_rule_set_version_expiry_date(Name, Scope, Id,
      LockToken, VersionToExpire, ExpiryTimestamp)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafv2_update_managed_rule_set_version_expiry_date_:_Name">Name</code></td>
<td><p>[required] The name of the managed rule set. You use this, along
with the rule set ID, to identify the rule set.</p>
<p>This name is assigned to the corresponding managed rule group, which
your customers can access and use.</p></td>
</tr>
<tr class="even">
<td><code
id="wafv2_update_managed_rule_set_version_expiry_date_:_Scope">Scope</code></td>
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
<td><code
id="wafv2_update_managed_rule_set_version_expiry_date_:_Id">Id</code></td>
<td><p>[required] A unique identifier for the managed rule set. The ID
is returned in the responses to commands like <code>list</code>. You
provide it to operations like <code>get</code> and
<code>update</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="wafv2_update_managed_rule_set_version_expiry_date_:_LockToken">LockToken</code></td>
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
id="wafv2_update_managed_rule_set_version_expiry_date_:_VersionToExpire">VersionToExpire</code></td>
<td><p>[required] The version that you want to remove from your list of
offerings for the named managed rule group.</p></td>
</tr>
<tr class="even">
<td><code
id="wafv2_update_managed_rule_set_version_expiry_date_:_ExpiryTimestamp">ExpiryTimestamp</code></td>
<td><p>[required] The time that you want the version to expire.</p>
<p>Times are in Coordinated Universal Time (UTC) format. UTC format
includes the special designator, Z. For example,
"2016-09-27T14:50Z".</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExpiringVersion = "string",
      ExpiryTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      NextLockToken = "string"
    )

### Request syntax

    svc$update_managed_rule_set_version_expiry_date(
      Name = "string",
      Scope = "CLOUDFRONT"|"REGIONAL",
      Id = "string",
      LockToken = "string",
      VersionToExpire = "string",
      ExpiryTimestamp = as.POSIXct(
        "2015-01-01"
      )
    )
