<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_detach_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detaches a policy from a target root, organizational unit (OU), or account

### Description

Detaches a policy from a target root, organizational unit (OU), or
account.

If the policy being detached is a service control policy (SCP), the
changes to permissions for Identity and Access Management (IAM) users
and roles in affected accounts are immediate.

Every root, OU, and account must have at least one SCP attached. If you
want to replace the default `FullAWSAccess` policy with an SCP that
limits the permissions that can be delegated, you must attach the
replacement SCP before you can remove the default SCP. This is the
authorization strategy of an "[allow
list](https://docs.aws.amazon.com/organizations/latest/userguide/#orgs_policies_allowlist)".
If you instead attach a second SCP and leave the `FullAWSAccess` SCP
still attached, and specify `"Effect": "Deny"` in the second SCP to
override the `"Effect": "Allow"` in the `FullAWSAccess` policy (or any
other attached SCP), you're using the authorization strategy of a "[deny
list](https://docs.aws.amazon.com/organizations/latest/userguide/#orgs_policies_denylist)".

This operation can be called only from the organization's management
account.

### Usage

    organizations_detach_policy(PolicyId, TargetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_detach_policy_:_PolicyId">PolicyId</code></td>
<td><p>[required] The unique identifier (ID) of the policy you want to
detach. You can get the ID from the <code>list_policies</code> or
<code>list_policies_for_target</code> operations.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
for a policy ID string requires "p-" followed by from 8 to 128 lowercase
or uppercase letters, digits, or the underscore character (_).</p></td>
</tr>
<tr class="even">
<td><code
id="organizations_detach_policy_:_TargetId">TargetId</code></td>
<td><p>[required] The unique identifier (ID) of the root, OU, or account
that you want to detach the policy from. You can get the ID from the
<code>list_roots</code>,
<code>list_organizational_units_for_parent</code>, or
<code>list_accounts</code> operations.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
for a target ID string requires one of the following:</p>
<ul>
<li><p><strong>Root</strong> - A string that begins with "r-" followed
by from 4 to 32 lowercase letters or digits.</p></li>
<li><p><strong>Account</strong> - A string that consists of exactly 12
digits.</p></li>
<li><p><strong>Organizational unit (OU)</strong> - A string that begins
with "ou-" followed by from 4 to 32 lowercase letters or digits (the ID
of the root that the OU is in). This string is followed by a second "-"
dash and from 8 to 32 additional lowercase letters or digits.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$detach_policy(
      PolicyId = "string",
      TargetId = "string"
    )

### Examples

    ## Not run: 
    # The following example shows how to detach a policy from an OU:/n/n
    svc$detach_policy(
      PolicyId = "p-examplepolicyid111",
      TargetId = "ou-examplerootid111-exampleouid111"
    )

    ## End(Not run)
