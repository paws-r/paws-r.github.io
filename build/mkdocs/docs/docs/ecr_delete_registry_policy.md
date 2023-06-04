<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_delete_registry_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the registry permissions policy

### Description

Deletes the registry permissions policy.

### Usage

    ecr_delete_registry_policy()

### Value

A list with the following syntax:

    list(
      registryId = "string",
      policyText = "string"
    )

### Request syntax

    svc$delete_registry_policy()
