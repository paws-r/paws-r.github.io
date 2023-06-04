<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_list_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the events emitted by the resources that are evaluated by DevOps Guru

### Description

Returns a list of the events emitted by the resources that are evaluated
by DevOps Guru. You can use filters to specify which events are
returned.

### Usage

    devopsguru_list_events(Filters, MaxResults, NextToken, AccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="devopsguru_list_events_:_Filters">Filters</code></td>
<td><p>[required] A <code>ListEventsFilters</code> object used to
specify which events to return.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_list_events_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code id="devopsguru_list_events_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
<tr class="even">
<td><code id="devopsguru_list_events_:_AccountId">AccountId</code></td>
<td><p>The ID of the Amazon Web Services account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Events = list(
        list(
          ResourceCollection = list(
            CloudFormation = list(
              StackNames = list(
                "string"
              )
            ),
            Tags = list(
              list(
                AppBoundaryKey = "string",
                TagValues = list(
                  "string"
                )
              )
            )
          ),
          Id = "string",
          Time = as.POSIXct(
            "2015-01-01"
          ),
          EventSource = "string",
          Name = "string",
          DataSource = "AWS_CLOUD_TRAIL"|"AWS_CODE_DEPLOY",
          EventClass = "INFRASTRUCTURE"|"DEPLOYMENT"|"SECURITY_CHANGE"|"CONFIG_CHANGE"|"SCHEMA_CHANGE",
          Resources = list(
            list(
              Type = "string",
              Name = "string",
              Arn = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_events(
      Filters = list(
        InsightId = "string",
        EventTimeRange = list(
          FromTime = as.POSIXct(
            "2015-01-01"
          ),
          ToTime = as.POSIXct(
            "2015-01-01"
          )
        ),
        EventClass = "INFRASTRUCTURE"|"DEPLOYMENT"|"SECURITY_CHANGE"|"CONFIG_CHANGE"|"SCHEMA_CHANGE",
        EventSource = "string",
        DataSource = "AWS_CLOUD_TRAIL"|"AWS_CODE_DEPLOY",
        ResourceCollection = list(
          CloudFormation = list(
            StackNames = list(
              "string"
            )
          ),
          Tags = list(
            list(
              AppBoundaryKey = "string",
              TagValues = list(
                "string"
              )
            )
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string",
      AccountId = "string"
    )
