<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_get_entity_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets all entity types or a specific entity type if a name is specified

### Description

Gets all entity types or a specific entity type if a name is specified.
This is a paginated API. If you provide a null `maxResults`, this action
retrieves a maximum of 10 records per page. If you provide a
`maxResults`, the value must be between 5 and 10. To get the next page
results, provide the pagination token from the `GetEntityTypesResponse`
as part of your request. A null pagination token fetches the records
from the beginning.

### Usage

    frauddetector_get_entity_types(name, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_get_entity_types_:_name">name</code></td>
<td><p>The name.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_get_entity_types_:_nextToken">nextToken</code></td>
<td><p>The next token for the subsequent request.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_get_entity_types_:_maxResults">maxResults</code></td>
<td><p>The maximum number of objects to return for the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      entityTypes = list(
        list(
          name = "string",
          description = "string",
          lastUpdatedTime = "string",
          createdTime = "string",
          arn = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_entity_types(
      name = "string",
      nextToken = "string",
      maxResults = 123
    )
