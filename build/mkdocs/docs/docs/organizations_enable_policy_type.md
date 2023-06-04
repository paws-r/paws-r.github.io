<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_enable_policy_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables a policy type in a root

### Description

Enables a policy type in a root. After you enable a policy type in a
root, you can attach policies of that type to the root, any
organizational unit (OU), or account in that root. You can undo this by
using the `disable_policy_type` operation.

This is an asynchronous request that Amazon Web Services performs in the
background. Amazon Web Services recommends that you first use
`list_roots` to see the status of policy types for a specified root, and
then use this operation.

This operation can be called only from the organization's management
account.

You can enable a policy type in a root only if that policy type is
available in the organization. To view the status of available policy
types in the organization, use `describe_organization`.

### Usage

    organizations_enable_policy_type(RootId, PolicyType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_enable_policy_type_:_RootId">RootId</code></td>
<td><p>[required] The unique identifier (ID) of the root in which you
want to enable a policy type. You can get the ID from the
<code>list_roots</code> operation.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
for a root ID string requires "r-" followed by from 4 to 32 lowercase
letters or digits.</p></td>
</tr>
<tr class="even">
<td><code
id="organizations_enable_policy_type_:_PolicyType">PolicyType</code></td>
<td><p>[required] The policy type that you want to enable. You can
specify one of the following values:</p>
<ul>
<li><p><a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a></p></li>
<li><p><a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a></p></li>
<li><p><a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scps.html">SERVICE_CONTROL_POLICY</a></p></li>
<li><p><a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a></p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Root = list(
        Id = "string",
        Arn = "string",
        Name = "string",
        PolicyTypes = list(
          list(
            Type = "SERVICE_CONTROL_POLICY"|"TAG_POLICY"|"BACKUP_POLICY"|"AISERVICES_OPT_OUT_POLICY",
            Status = "ENABLED"|"PENDING_ENABLE"|"PENDING_DISABLE"
          )
        )
      )
    )

### Request syntax

    svc$enable_policy_type(
      RootId = "string",
      PolicyType = "SERVICE_CONTROL_POLICY"|"TAG_POLICY"|"BACKUP_POLICY"|"AISERVICES_OPT_OUT_POLICY"
    )

### Examples

    ## Not run: 
    # The following example shows how to enable the service control policy
    # (SCP) policy type in a root. The output shows a root object with a
    # PolicyTypes response element showing that SCPs are now enabled:/n/n
    svc$enable_policy_type(
      PolicyType = "SERVICE_CONTROL_POLICY",
      RootId = "r-examplerootid111"
    )

    ## End(Not run)
