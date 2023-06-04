<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_put_replication_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates the replication configuration for a registry

### Description

Creates or updates the replication configuration for a registry. The
existing replication configuration for a repository can be retrieved
with the `describe_registry` API action. The first time the
PutReplicationConfiguration API is called, a service-linked IAM role is
created in your account for the replication process. For more
information, see [Using service-linked roles for Amazon
ECR](https://docs.aws.amazon.com/AmazonECR/latest/userguide/using-service-linked-roles.html)
in the *Amazon Elastic Container Registry User Guide*.

When configuring cross-account replication, the destination account must
grant the source account permission to replicate. This permission is
controlled using a registry permissions policy. For more information,
see `put_registry_policy`.

### Usage

    ecr_put_replication_configuration(replicationConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_put_replication_configuration_:_replicationConfiguration">replicationConfiguration</code></td>
<td><p>[required] An object representing the replication configuration
for a registry.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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

    svc$put_replication_configuration(
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
