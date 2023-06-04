<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_list_event_trackers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the list of event trackers associated with the account

### Description

Returns the list of event trackers associated with the account. The
response provides the properties for each event tracker, including the
Amazon Resource Name (ARN) and tracking ID. For more information on
event trackers, see `create_event_tracker`.

### Usage

    personalize_list_event_trackers(datasetGroupArn, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_list_event_trackers_:_datasetGroupArn">datasetGroupArn</code></td>
<td><p>The ARN of a dataset group used to filter the response.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_list_event_trackers_:_nextToken">nextToken</code></td>
<td><p>A token returned from the previous call to
<code>list_event_trackers</code> for getting the next set of event
trackers (if they exist).</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_list_event_trackers_:_maxResults">maxResults</code></td>
<td><p>The maximum number of event trackers to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      eventTrackers = list(
        list(
          name = "string",
          eventTrackerArn = "string",
          status = "string",
          creationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_event_trackers(
      datasetGroupArn = "string",
      nextToken = "string",
      maxResults = 123
    )
