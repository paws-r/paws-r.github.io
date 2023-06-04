<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_get_journey_runs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about the runs of a journey

### Description

Provides information about the runs of a journey.

### Usage

    pinpoint_get_journey_runs(ApplicationId, JourneyId, PageSize, Token)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_get_journey_runs_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_get_journey_runs_:_JourneyId">JourneyId</code></td>
<td><p>[required] The unique identifier for the journey.</p></td>
</tr>
<tr class="odd">
<td><code id="pinpoint_get_journey_runs_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to include in each page of a
paginated response. This parameter is not supported for application,
campaign, and journey metrics.</p></td>
</tr>
<tr class="even">
<td><code id="pinpoint_get_journey_runs_:_Token">Token</code></td>
<td><p>The NextToken string that specifies which page of results to
return in a paginated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JourneyRunsResponse = list(
        Item = list(
          list(
            CreationTime = "string",
            LastUpdateTime = "string",
            RunId = "string",
            Status = "SCHEDULED"|"RUNNING"|"COMPLETED"|"CANCELLED"
          )
        ),
        NextToken = "string"
      )
    )

### Request syntax

    svc$get_journey_runs(
      ApplicationId = "string",
      JourneyId = "string",
      PageSize = "string",
      Token = "string"
    )

### Examples

    ## Not run: 
    # The following example gets the runs of a journey.
    svc$get_journey_runs(
      ApplicationId = "11111111112222222222333333333344",
      JourneyId = "aaaaaaaaaabbbbbbbbbbccccccccccdd"
    )

    ## End(Not run)
