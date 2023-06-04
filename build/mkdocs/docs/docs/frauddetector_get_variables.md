<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_get_variables</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets all of the variables or the specific variable

### Description

Gets all of the variables or the specific variable. This is a paginated
API. Providing null `maxSizePerPage` results in retrieving maximum of
100 records per page. If you provide `maxSizePerPage` the value must be
between 50 and 100. To get the next page result, a provide a pagination
token from `GetVariablesResult` as part of your request. Null pagination
token fetches the records from the beginning.

### Usage

    frauddetector_get_variables(name, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_get_variables_:_name">name</code></td>
<td><p>The name of the variable.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_get_variables_:_nextToken">nextToken</code></td>
<td><p>The next page token of the get variable request.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_get_variables_:_maxResults">maxResults</code></td>
<td><p>The max size per page determined for the get variable
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      variables = list(
        list(
          name = "string",
          dataType = "STRING"|"INTEGER"|"FLOAT"|"BOOLEAN",
          dataSource = "EVENT"|"MODEL_SCORE"|"EXTERNAL_MODEL_SCORE",
          defaultValue = "string",
          description = "string",
          variableType = "string",
          lastUpdatedTime = "string",
          createdTime = "string",
          arn = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_variables(
      name = "string",
      nextToken = "string",
      maxResults = 123
    )
