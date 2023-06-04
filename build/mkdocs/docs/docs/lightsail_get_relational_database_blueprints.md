<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_relational_database_blueprints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of available database blueprints in Amazon Lightsail

### Description

Returns a list of available database blueprints in Amazon Lightsail. A
blueprint describes the major engine version of a database.

You can use a blueprint ID to create a new database that runs a specific
database engine.

### Usage

    lightsail_get_relational_database_blueprints(pageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_relational_database_blueprints_:_pageToken">pageToken</code></td>
<td><p>The token to advance to the next page of results from your
request.</p>
<p>To get a page token, perform an initial
<code>get_relational_database_blueprints</code> request. If your results
are paginated, the response will return a next page token that you can
specify as the page token in a subsequent request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      blueprints = list(
        list(
          blueprintId = "string",
          engine = "mysql",
          engineVersion = "string",
          engineDescription = "string",
          engineVersionDescription = "string",
          isEngineDefault = TRUE|FALSE
        )
      ),
      nextPageToken = "string"
    )

### Request syntax

    svc$get_relational_database_blueprints(
      pageToken = "string"
    )
