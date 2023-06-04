<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectcontactlens_list_realtime_contact_analysis_segments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a list of analysis segments for a real-time analysis session

### Description

Provides a list of analysis segments for a real-time analysis session.

### Usage

    connectcontactlens_list_realtime_contact_analysis_segments(InstanceId,
      ContactId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectcontactlens_list_realtime_contact_analysis_segments_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connectcontactlens_list_realtime_contact_analysis_segments_:_ContactId">ContactId</code></td>
<td><p>[required] The identifier of the contact.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectcontactlens_list_realtime_contact_analysis_segments_:_MaxResults">MaxResults</code></td>
<td><p>The maximimum number of results to return per page.</p></td>
</tr>
<tr class="even">
<td><code
id="connectcontactlens_list_realtime_contact_analysis_segments_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Segments = list(
        list(
          Transcript = list(
            Id = "string",
            ParticipantId = "string",
            ParticipantRole = "string",
            Content = "string",
            BeginOffsetMillis = 123,
            EndOffsetMillis = 123,
            Sentiment = "POSITIVE"|"NEUTRAL"|"NEGATIVE",
            IssuesDetected = list(
              list(
                CharacterOffsets = list(
                  BeginOffsetChar = 123,
                  EndOffsetChar = 123
                )
              )
            )
          ),
          Categories = list(
            MatchedCategories = list(
              "string"
            ),
            MatchedDetails = list(
              list(
                PointsOfInterest = list(
                  list(
                    BeginOffsetMillis = 123,
                    EndOffsetMillis = 123
                  )
                )
              )
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_realtime_contact_analysis_segments(
      InstanceId = "string",
      ContactId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
