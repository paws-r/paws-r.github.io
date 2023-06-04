<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_update_regex_pattern_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified RegexPatternSet

### Description

Updates the specified RegexPatternSet.

This operation completely replaces the mutable specifications that you
already have for the regex pattern set with the ones that you provide to
this call.

To modify a regex pattern set, do the following:

1.  Retrieve it by calling `get_regex_pattern_set`

2.  Update its settings as needed

3.  Provide the complete regex pattern set specification to this call

When you make changes to web ACLs or web ACL components, like rules and
rule groups, WAF propagates the changes everywhere that the web ACL and
its components are stored and used. Your changes are applied within
seconds, but there might be a brief period of inconsistency when the
changes have arrived in some places and not in others. So, for example,
if you change a rule action setting, the action might be the old action
in one area and the new action in another area. Or if you add an IP
address to an IP set used in a blocking rule, the new address might
briefly be blocked in one area while still allowed in another. This
temporary inconsistency can occur when you first associate a web ACL
with an Amazon Web Services resource and when you change a web ACL that
is already associated with a resource. Generally, any inconsistencies of
this type last only a few seconds.

### Usage

    wafv2_update_regex_pattern_set(Name, Scope, Id, Description,
      RegularExpressionList, LockToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="wafv2_update_regex_pattern_set_:_Name">Name</code></td>
<td><p>[required] The name of the set. You cannot change the name after
you create the set.</p></td>
</tr>
<tr class="even">
<td><code id="wafv2_update_regex_pattern_set_:_Scope">Scope</code></td>
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
<td><code id="wafv2_update_regex_pattern_set_:_Id">Id</code></td>
<td><p>[required] A unique identifier for the set. This ID is returned
in the responses to create and list commands. You provide it to
operations like update and delete.</p></td>
</tr>
<tr class="even">
<td><code
id="wafv2_update_regex_pattern_set_:_Description">Description</code></td>
<td><p>A description of the set that helps with identification.</p></td>
</tr>
<tr class="odd">
<td><code
id="wafv2_update_regex_pattern_set_:_RegularExpressionList">RegularExpressionList</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wafv2_update_regex_pattern_set_:_LockToken">LockToken</code></td>
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

A list with the following syntax:

    list(
      NextLockToken = "string"
    )

### Request syntax

    svc$update_regex_pattern_set(
      Name = "string",
      Scope = "CLOUDFRONT"|"REGIONAL",
      Id = "string",
      Description = "string",
      RegularExpressionList = list(
        list(
          RegexString = "string"
        )
      ),
      LockToken = "string"
    )
