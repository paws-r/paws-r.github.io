<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_relational_database_log_streams</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of available log streams for a specific database in Amazon Lightsail

### Description

Returns a list of available log streams for a specific database in
Amazon Lightsail.

### Usage

    lightsail_get_relational_database_log_streams(relationalDatabaseName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_relational_database_log_streams_:_relationalDatabaseName">relationalDatabaseName</code></td>
<td><p>[required] The name of your database for which to get log
streams.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      logStreams = list(
        "string"
      )
    )

### Request syntax

    svc$get_relational_database_log_streams(
      relationalDatabaseName = "string"
    )
