<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_list_rotation_overrides</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of overrides currently specified for an on-call rotation

### Description

Retrieves a list of overrides currently specified for an on-call
rotation.

### Usage

    ssmcontacts_list_rotation_overrides(RotationId, StartTime, EndTime,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_list_rotation_overrides_:_RotationId">RotationId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the rotation to
retrieve information about.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_list_rotation_overrides_:_StartTime">StartTime</code></td>
<td><p>[required] The date and time for the beginning of a time range
for listing overrides.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_list_rotation_overrides_:_EndTime">EndTime</code></td>
<td><p>[required] The date and time for the end of a time range for
listing overrides.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_list_rotation_overrides_:_NextToken">NextToken</code></td>
<td><p>A token to start the list. Use this token to get the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_list_rotation_overrides_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RotationOverrides = list(
        list(
          RotationOverrideId = "string",
          NewContactIds = list(
            "string"
          ),
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          CreateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_rotation_overrides(
      RotationId = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      NextToken = "string",
      MaxResults = 123
    )
