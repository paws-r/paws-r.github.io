<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_delete_pull_through_cache_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a pull through cache rule

### Description

Deletes a pull through cache rule.

### Usage

    ecr_delete_pull_through_cache_rule(ecrRepositoryPrefix, registryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_delete_pull_through_cache_rule_:_ecrRepositoryPrefix">ecrRepositoryPrefix</code></td>
<td><p>[required] The Amazon ECR repository prefix associated with the
pull through cache rule to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_delete_pull_through_cache_rule_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
that contains the pull through cache rule. If you do not specify a
registry, the default registry is assumed.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ecrRepositoryPrefix = "string",
      upstreamRegistryUrl = "string",
      createdAt = as.POSIXct(
        "2015-01-01"
      ),
      registryId = "string"
    )

### Request syntax

    svc$delete_pull_through_cache_rule(
      ecrRepositoryPrefix = "string",
      registryId = "string"
    )
