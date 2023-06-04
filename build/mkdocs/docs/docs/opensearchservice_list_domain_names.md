<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_list_domain_names</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the names of all Amazon OpenSearch Service domains owned by the current user in the active Region

### Description

Returns the names of all Amazon OpenSearch Service domains owned by the
current user in the active Region.

### Usage

    opensearchservice_list_domain_names(EngineType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_list_domain_names_:_EngineType">EngineType</code></td>
<td><p>Filters the output by domain engine type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainNames = list(
        list(
          DomainName = "string",
          EngineType = "OpenSearch"|"Elasticsearch"
        )
      )
    )

### Request syntax

    svc$list_domain_names(
      EngineType = "OpenSearch"|"Elasticsearch"
    )
