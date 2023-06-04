<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_get_compatible_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a map of OpenSearch or Elasticsearch versions and the versions you can upgrade them to

### Description

Returns a map of OpenSearch or Elasticsearch versions and the versions
you can upgrade them to.

### Usage

    opensearchservice_get_compatible_versions(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_get_compatible_versions_:_DomainName">DomainName</code></td>
<td><p>The name of an existing domain. Provide this parameter to limit
the results to a single domain.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CompatibleVersions = list(
        list(
          SourceVersion = "string",
          TargetVersions = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$get_compatible_versions(
      DomainName = "string"
    )
