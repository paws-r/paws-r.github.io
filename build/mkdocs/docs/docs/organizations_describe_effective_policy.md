<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_describe_effective_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the contents of the effective policy for specified policy type and account

### Description

Returns the contents of the effective policy for specified policy type
and account. The effective policy is the aggregation of any policies of
the specified type that the account inherits, plus any policy of that
type that is directly attached to the account.

This operation applies only to policy types *other* than service control
policies (SCPs).

For more information about policy inheritance, see [How Policy
Inheritance
Works](https://docs.aws.amazon.com/organizations/latest/userguide/) in
the *Organizations User Guide*.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
Amazon Web Services service.

### Usage

    organizations_describe_effective_policy(PolicyType, TargetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_describe_effective_policy_:_PolicyType">PolicyType</code></td>
<td><p>[required] The type of policy that you want information about.
You can specify one of the following values:</p>
<ul>
<li><p><a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a></p></li>
<li><p><a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a></p></li>
<li><p><a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="organizations_describe_effective_policy_:_TargetId">TargetId</code></td>
<td><p>When you're signed in as the management account, specify the ID
of the account that you want details about. Specifying an organization
root or organizational unit (OU) as the target is not
supported.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EffectivePolicy = list(
        PolicyContent = "string",
        LastUpdatedTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        TargetId = "string",
        PolicyType = "TAG_POLICY"|"BACKUP_POLICY"|"AISERVICES_OPT_OUT_POLICY"
      )
    )

### Request syntax

    svc$describe_effective_policy(
      PolicyType = "TAG_POLICY"|"BACKUP_POLICY"|"AISERVICES_OPT_OUT_POLICY",
      TargetId = "string"
    )
