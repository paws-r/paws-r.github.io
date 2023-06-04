<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_list_domain_names</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the name of all Elasticsearch domains owned by the current user's account

### Description

Returns the name of all Elasticsearch domains owned by the current
user's account.

### Usage

    elasticsearchservice_list_domain_names(EngineType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_list_domain_names_:_EngineType">EngineType</code></td>
<td><p>Optional parameter to filter the output by domain engine type.
Acceptable values are 'Elasticsearch' and 'OpenSearch'.</p></td>
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
