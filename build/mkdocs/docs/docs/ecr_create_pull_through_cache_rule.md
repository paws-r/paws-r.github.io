<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_create_pull_through_cache_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a pull through cache rule

### Description

Creates a pull through cache rule. A pull through cache rule provides a
way to cache images from an external public registry in your Amazon ECR
private registry.

### Usage

    ecr_create_pull_through_cache_rule(ecrRepositoryPrefix,
      upstreamRegistryUrl, registryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_create_pull_through_cache_rule_:_ecrRepositoryPrefix">ecrRepositoryPrefix</code></td>
<td><p>[required] The repository name prefix to use when caching images
from the source registry.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_create_pull_through_cache_rule_:_upstreamRegistryUrl">upstreamRegistryUrl</code></td>
<td><p>[required] The registry URL of the upstream public registry to
use as the source for the pull through cache rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecr_create_pull_through_cache_rule_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
to create the pull through cache rule for. If you do not specify a
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

    svc$create_pull_through_cache_rule(
      ecrRepositoryPrefix = "string",
      upstreamRegistryUrl = "string",
      registryId = "string"
    )
