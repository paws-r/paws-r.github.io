<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_relational_database_parameters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all of the runtime parameters offered by the underlying database software, or engine, for a specific database in Amazon Lightsail

### Description

Returns all of the runtime parameters offered by the underlying database
software, or engine, for a specific database in Amazon Lightsail.

In addition to the parameter names and values, this operation returns
other information about each parameter. This information includes
whether changes require a reboot, whether the parameter is modifiable,
the allowed values, and the data types.

### Usage

    lightsail_get_relational_database_parameters(relationalDatabaseName,
      pageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_relational_database_parameters_:_relationalDatabaseName">relationalDatabaseName</code></td>
<td><p>[required] The name of your database for which to get
parameters.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_get_relational_database_parameters_:_pageToken">pageToken</code></td>
<td><p>The token to advance to the next page of results from your
request.</p>
<p>To get a page token, perform an initial
<code>get_relational_database_parameters</code> request. If your results
are paginated, the response will return a next page token that you can
specify as the page token in a subsequent request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      parameters = list(
        list(
          allowedValues = "string",
          applyMethod = "string",
          applyType = "string",
          dataType = "string",
          description = "string",
          isModifiable = TRUE|FALSE,
          parameterName = "string",
          parameterValue = "string"
        )
      ),
      nextPageToken = "string"
    )

### Request syntax

    svc$get_relational_database_parameters(
      relationalDatabaseName = "string",
      pageToken = "string"
    )
