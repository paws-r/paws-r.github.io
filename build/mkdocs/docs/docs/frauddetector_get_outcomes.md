<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_get_outcomes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets one or more outcomes

### Description

Gets one or more outcomes. This is a paginated API. If you provide a
null `maxResults`, this actions retrieves a maximum of 100 records per
page. If you provide a `maxResults`, the value must be between 50 and
100. To get the next page results, provide the pagination token from the
`GetOutcomesResult` as part of your request. A null pagination token
fetches the records from the beginning.

### Usage

    frauddetector_get_outcomes(name, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_get_outcomes_:_name">name</code></td>
<td><p>The name of the outcome or outcomes to get.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_get_outcomes_:_nextToken">nextToken</code></td>
<td><p>The next page token for the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_get_outcomes_:_maxResults">maxResults</code></td>
<td><p>The maximum number of objects to return for the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      outcomes = list(
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

    svc$get_outcomes(
      name = "string",
      nextToken = "string",
      maxResults = 123
    )
