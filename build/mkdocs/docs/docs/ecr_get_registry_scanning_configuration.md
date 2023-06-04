<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_get_registry_scanning_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the scanning configuration for a registry

### Description

Retrieves the scanning configuration for a registry.

### Usage

    ecr_get_registry_scanning_configuration()

### Value

A list with the following syntax:

    list(
      registryId = "string",
      scanningConfiguration = list(
        scanType = "BASIC"|"ENHANCED",
        rules = list(
          list(
            scanFrequency = "SCAN_ON_PUSH"|"CONTINUOUS_SCAN"|"MANUAL",
            repositoryFilters = list(
              list(
                filter = "string",
                filterType = "WILDCARD"
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$get_registry_scanning_configuration()
