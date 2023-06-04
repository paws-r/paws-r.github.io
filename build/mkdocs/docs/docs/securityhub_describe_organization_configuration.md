<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_describe_organization_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the Organizations configuration for Security Hub

### Description

Returns information about the Organizations configuration for Security
Hub. Can only be called from a Security Hub administrator account.

### Usage

    securityhub_describe_organization_configuration()

### Value

A list with the following syntax:

    list(
      AutoEnable = TRUE|FALSE,
      MemberAccountLimitReached = TRUE|FALSE,
      AutoEnableStandards = "NONE"|"DEFAULT"
    )

### Request syntax

    svc$describe_organization_configuration()

### Examples

    ## Not run: 
    # The following example returns details about the way in which AWS
    # Organizations is configured for a Security Hub account that belongs to
    # an organization. Only a Security Hub administrator account can call this
    # operation.
    svc$describe_organization_configuration()

    ## End(Not run)
