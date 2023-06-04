<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_describe_registry</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the settings for a registry

### Description

Describes the settings for a registry. The replication configuration for
a repository can be created or updated with the
`put_replication_configuration` API action.

### Usage

    ecr_describe_registry()

### Value

A list with the following syntax:

    list(
      registryId = "string",
      replicationConfiguration = list(
        rules = list(
          list(
            destinations = list(
              list(
                region = "string",
                registryId = "string"
              )
            ),
            repositoryFilters = list(
              list(
                filter = "string",
                filterType = "PREFIX_MATCH"
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_registry()
