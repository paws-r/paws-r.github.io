<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_relational_database_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of events for a specific database in Amazon Lightsail

### Description

Returns a list of events for a specific database in Amazon Lightsail.

### Usage

    lightsail_get_relational_database_events(relationalDatabaseName,
      durationInMinutes, pageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_relational_database_events_:_relationalDatabaseName">relationalDatabaseName</code></td>
<td><p>[required] The name of the database from which to get
events.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_get_relational_database_events_:_durationInMinutes">durationInMinutes</code></td>
<td><p>The number of minutes in the past from which to retrieve events.
For example, to get all events from the past 2 hours, enter 120.</p>
<p>Default: <code>60</code></p>
<p>The minimum is 1 and the maximum is 14 days (20160 minutes).</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_get_relational_database_events_:_pageToken">pageToken</code></td>
<td><p>The token to advance to the next page of results from your
request.</p>
<p>To get a page token, perform an initial
<code>get_relational_database_events</code> request. If your results are
paginated, the response will return a next page token that you can
specify as the page token in a subsequent request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      relationalDatabaseEvents = list(
        list(
          resource = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          message = "string",
          eventCategories = list(
            "string"
          )
        )
      ),
      nextPageToken = "string"
    )

### Request syntax

    svc$get_relational_database_events(
      relationalDatabaseName = "string",
      durationInMinutes = 123,
      pageToken = "string"
    )
