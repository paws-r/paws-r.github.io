<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_put_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the resource policy to grant one or more Amazon Web Services services and accounts permissions to access X-Ray

### Description

Sets the resource policy to grant one or more Amazon Web Services
services and accounts permissions to access X-Ray. Each resource policy
will be associated with a specific Amazon Web Services account. Each
Amazon Web Services account can have a maximum of 5 resource policies,
and each policy name must be unique within that account. The maximum
size of each resource policy is 5KB.

### Usage

    xray_put_resource_policy(PolicyName, PolicyDocument, PolicyRevisionId,
      BypassPolicyLockoutCheck)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="xray_put_resource_policy_:_PolicyName">PolicyName</code></td>
<td><p>[required] The name of the resource policy. Must be unique within
a specific Amazon Web Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="xray_put_resource_policy_:_PolicyDocument">PolicyDocument</code></td>
<td><p>[required] The resource policy document, which can be up to 5kb
in size.</p></td>
</tr>
<tr class="odd">
<td><code
id="xray_put_resource_policy_:_PolicyRevisionId">PolicyRevisionId</code></td>
<td><p>Specifies a specific policy revision, to ensure an atomic create
operation. By default the resource policy is created if it does not
exist, or updated with an incremented revision id. The revision id is
unique to each policy in the account.</p>
<p>If the policy revision id does not match the latest revision id, the
operation will fail with an
<code>InvalidPolicyRevisionIdException</code> exception. You can also
provide a <code>PolicyRevisionId</code> of 0. In this case, the
operation will fail with an
<code>InvalidPolicyRevisionIdException</code> exception if a resource
policy with the same name already exists.</p></td>
</tr>
<tr class="even">
<td><code
id="xray_put_resource_policy_:_BypassPolicyLockoutCheck">BypassPolicyLockoutCheck</code></td>
<td><p>A flag to indicate whether to bypass the resource policy lockout
safety check.</p>
<p>Setting this value to true increases the risk that the policy becomes
unmanageable. Do not set this value to true indiscriminately.</p>
<p>Use this parameter only when you include a policy in the request and
you intend to prevent the principal that is making the request from
making a subsequent <code>put_resource_policy</code> request.</p>
<p>The default value is false.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourcePolicy = list(
        PolicyName = "string",
        PolicyDocument = "string",
        PolicyRevisionId = "string",
        LastUpdatedTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$put_resource_policy(
      PolicyName = "string",
      PolicyDocument = "string",
      PolicyRevisionId = "string",
      BypassPolicyLockoutCheck = TRUE|FALSE
    )
