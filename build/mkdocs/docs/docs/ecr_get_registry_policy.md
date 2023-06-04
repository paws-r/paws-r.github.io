<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_get_registry_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the permissions policy for a registry

### Description

Retrieves the permissions policy for a registry.

### Usage

    ecr_get_registry_policy()

### Value

A list with the following syntax:

    list(
      registryId = "string",
      policyText = "string"
    )

### Request syntax

    svc$get_registry_policy()
