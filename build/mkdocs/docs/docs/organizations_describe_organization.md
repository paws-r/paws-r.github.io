<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_describe_organization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the organization that the user's account belongs to

### Description

Retrieves information about the organization that the user's account
belongs to.

This operation can be called from any account in the organization.

Even if a policy type is shown as available in the organization, you can
disable it separately at the root level with `disable_policy_type`. Use
`list_roots` to see the status of policy types for a specified root.

### Usage

    organizations_describe_organization()

### Value

A list with the following syntax:

    list(
      Organization = list(
        Id = "string",
        Arn = "string",
        FeatureSet = "ALL"|"CONSOLIDATED_BILLING",
        MasterAccountArn = "string",
        MasterAccountId = "string",
        MasterAccountEmail = "string",
        AvailablePolicyTypes = list(
          list(
            Type = "SERVICE_CONTROL_POLICY"|"TAG_POLICY"|"BACKUP_POLICY"|"AISERVICES_OPT_OUT_POLICY",
            Status = "ENABLED"|"PENDING_ENABLE"|"PENDING_DISABLE"
          )
        )
      )
    )

### Examples

    ## Not run: 
    # The following example shows how to request information about the current
    # user's organization:/n/n
    svc$describe_organization()

    ## End(Not run)
