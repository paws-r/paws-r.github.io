<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_delete_web_acl</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified WebACL

### Description

Deletes the specified WebACL.

You can only use this if `ManagedByFirewallManager` is false in the
specified WebACL.

Before deleting any web ACL, first disassociate it from all resources.

-   To retrieve a list of the resources that are associated with a web
    ACL, use the following calls:

    -   For regional resources, call `list_resources_for_web_acl`.

    -   For Amazon CloudFront distributions, use the CloudFront call
        `ListDistributionsByWebACLId`. For information, see
        [ListDistributionsByWebACLId](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ListDistributionsByWebACLId.html)
        in the *Amazon CloudFront API Reference*.

-   To disassociate a resource from a web ACL, use the following calls:

    -   For regional resources, call `disassociate_web_acl`.

    -   For Amazon CloudFront distributions, provide an empty web ACL ID
        in the CloudFront call `UpdateDistribution`. For information,
        see
        [UpdateDistribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html)
        in the *Amazon CloudFront API Reference*.

### Usage

    wafv2_delete_web_acl(Name, Scope, Id, LockToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="wafv2_delete_web_acl_:_Name">Name</code></td>
<td><p>[required] The name of the web ACL. You cannot change the name of
a web ACL after you create it.</p></td>
</tr>
<tr class="even">
<td><code id="wafv2_delete_web_acl_:_Scope">Scope</code></td>
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
<td><code id="wafv2_delete_web_acl_:_Id">Id</code></td>
<td><p>[required] The unique identifier for the web ACL. This ID is
returned in the responses to create and list commands. You provide it to
operations like update and delete.</p></td>
</tr>
<tr class="even">
<td><code id="wafv2_delete_web_acl_:_LockToken">LockToken</code></td>
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
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_web_acl(
      Name = "string",
      Scope = "CLOUDFRONT"|"REGIONAL",
      Id = "string",
      LockToken = "string"
    )
