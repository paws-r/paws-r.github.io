<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_disable_policy_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables an organizational policy type in a root

### Description

Disables an organizational policy type in a root. A policy of a certain
type can be attached to entities in a root only if that type is enabled
in the root. After you perform this operation, you no longer can attach
policies of the specified type to that root or to any organizational
unit (OU) or account in that root. You can undo this by using the
`enable_policy_type` operation.

This is an asynchronous request that Amazon Web Services performs in the
background. If you disable a policy type for a root, it still appears
enabled for the organization if [all
features](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html)
are enabled for the organization. Amazon Web Services recommends that
you first use `list_roots` to see the status of policy types for a
specified root, and then use this operation.

This operation can be called only from the organization's management
account.

To view the status of available policy types in the organization, use
`describe_organization`.

### Usage

    organizations_disable_policy_type(RootId, PolicyType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_disable_policy_type_:_RootId">RootId</code></td>
<td><p>[required] The unique identifier (ID) of the root in which you
want to disable a policy type. You can get the ID from the
<code>list_roots</code> operation.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
for a root ID string requires "r-" followed by from 4 to 32 lowercase
letters or digits.</p></td>
</tr>
<tr class="even">
<td><code
id="organizations_disable_policy_type_:_PolicyType">PolicyType</code></td>
<td><p>[required] The policy type that you want to disable in this root.
You can specify one of the following values:</p>
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

    svc$disable_policy_type(
      RootId = "string",
      PolicyType = "SERVICE_CONTROL_POLICY"|"TAG_POLICY"|"BACKUP_POLICY"|"AISERVICES_OPT_OUT_POLICY"
    )

### Examples

    ## Not run: 
    # The following example shows how to disable the service control policy
    # (SCP) policy type in a root. The response shows that the PolicyTypes
    # response element no longer includes SERVICE_CONTROL_POLICY:/n/n
    svc$disable_policy_type(
      PolicyType = "SERVICE_CONTROL_POLICY",
      RootId = "r-examplerootid111"
    )

    ## End(Not run)
