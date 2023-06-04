<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_get_labels</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets all labels or a specific label if name is provided

### Description

Gets all labels or a specific label if name is provided. This is a
paginated API. If you provide a null `maxResults`, this action retrieves
a maximum of 50 records per page. If you provide a `maxResults`, the
value must be between 10 and 50. To get the next page results, provide
the pagination token from the `GetGetLabelsResponse` as part of your
request. A null pagination token fetches the records from the beginning.

### Usage

    frauddetector_get_labels(name, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_get_labels_:_name">name</code></td>
<td><p>The name of the label or labels to get.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_get_labels_:_nextToken">nextToken</code></td>
<td><p>The next token for the subsequent request.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_get_labels_:_maxResults">maxResults</code></td>
<td><p>The maximum number of objects to return for the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      labels = list(
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

    svc$get_labels(
      name = "string",
      nextToken = "string",
      maxResults = 123
    )
