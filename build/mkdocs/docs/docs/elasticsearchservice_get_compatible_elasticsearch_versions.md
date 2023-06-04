<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_get_compatible_elasticsearch_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of upgrade compatible Elastisearch versions

### Description

Returns a list of upgrade compatible Elastisearch versions. You can
optionally pass a `DomainName` to get all upgrade compatible
Elasticsearch versions for that specific domain.

### Usage

    elasticsearchservice_get_compatible_elasticsearch_versions(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_get_compatible_elasticsearch_versions_:_DomainName">DomainName</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CompatibleElasticsearchVersions = list(
        list(
          SourceVersion = "string",
          TargetVersions = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$get_compatible_elasticsearch_versions(
      DomainName = "string"
    )
