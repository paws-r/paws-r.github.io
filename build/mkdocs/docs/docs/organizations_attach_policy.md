<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_attach_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches a policy to a root, an organizational unit (OU), or an individual account

### Description

Attaches a policy to a root, an organizational unit (OU), or an
individual account. How the policy affects accounts depends on the type
of policy. Refer to the *Organizations User Guide* for information about
each policy type:

-   [AISERVICES\_OPT\_OUT\_POLICY](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html)

-   [BACKUP\_POLICY](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html)

-   [SERVICE\_CONTROL\_POLICY](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scps.html)

-   [TAG\_POLICY](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html)

This operation can be called only from the organization's management
account.

### Usage

    organizations_attach_policy(PolicyId, TargetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_attach_policy_:_PolicyId">PolicyId</code></td>
<td><p>[required] The unique identifier (ID) of the policy that you want
to attach to the target. You can get the ID for the policy by calling
the <code>list_policies</code> operation.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
for a policy ID string requires "p-" followed by from 8 to 128 lowercase
or uppercase letters, digits, or the underscore character (_).</p></td>
</tr>
<tr class="even">
<td><code
id="organizations_attach_policy_:_TargetId">TargetId</code></td>
<td><p>[required] The unique identifier (ID) of the root, OU, or account
that you want to attach the policy to. You can get the ID by calling the
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

    svc$attach_policy(
      PolicyId = "string",
      TargetId = "string"
    )

### Examples

    ## Not run: 
    # The following example shows how to attach a service control policy (SCP)
    # to an OU:
    # 
    svc$attach_policy(
      PolicyId = "p-examplepolicyid111",
      TargetId = "ou-examplerootid111-exampleouid111"
    )

    # The following example shows how to attach a service control policy (SCP)
    # to an account:
    # 
    svc$attach_policy(
      PolicyId = "p-examplepolicyid111",
      TargetId = "333333333333"
    )

    ## End(Not run)
