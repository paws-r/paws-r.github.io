<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_list_incident_records</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all incident records in your account

### Description

Lists all incident records in your account. Use this command to retrieve
the Amazon Resource Name (ARN) of the incident record you want to
update.

### Usage

    ssmincidents_list_incident_records(filters, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmincidents_list_incident_records_:_filters">filters</code></td>
<td><p>Filters the list of incident records you want to search through.
You can filter on the following keys:</p>
<ul>
<li><p><code>creationTime</code></p></li>
<li><p><code>impact</code></p></li>
<li><p><code>status</code></p></li>
<li><p><code>createdBy</code></p></li>
</ul>
<p>Note the following when when you use Filters:</p>
<ul>
<li><p>If you don't specify a Filter, the response includes all incident
records.</p></li>
<li><p>If you specify more than one filter in a single request, the
response returns incident records that match all filters.</p></li>
<li><p>If you specify a filter with more than one value, the response
returns incident records that match any of the values provided.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_list_incident_records_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results per page.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmincidents_list_incident_records_:_nextToken">nextToken</code></td>
<td><p>The pagination token to continue to the next page of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      incidentRecordSummaries = list(
        list(
          arn = "string",
          creationTime = as.POSIXct(
            "2015-01-01"
          ),
          impact = 123,
          incidentRecordSource = list(
            createdBy = "string",
            invokedBy = "string",
            resourceArn = "string",
            source = "string"
          ),
          resolvedTime = as.POSIXct(
            "2015-01-01"
          ),
          status = "OPEN"|"RESOLVED",
          title = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_incident_records(
      filters = list(
        list(
          condition = list(
            after = as.POSIXct(
              "2015-01-01"
            ),
            before = as.POSIXct(
              "2015-01-01"
            ),
            equals = list(
              integerValues = list(
                123
              ),
              stringValues = list(
                "string"
              )
            )
          ),
          key = "string"
        )
      ),
      maxResults = 123,
      nextToken = "string"
    )
