<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_list_stream_processors</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of stream processors that you have created with CreateStreamProcessor

### Description

Gets a list of stream processors that you have created with
`create_stream_processor`.

### Usage

    rekognition_list_stream_processors(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_list_stream_processors_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there are more
stream processors to retrieve), Amazon Rekognition Video returns a
pagination token in the response. You can use this pagination token to
retrieve the next set of stream processors.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_list_stream_processors_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of stream processors you want Amazon Rekognition
Video to return in the response. The default is 1000.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      StreamProcessors = list(
        list(
          Name = "string",
          Status = "STOPPED"|"STARTING"|"RUNNING"|"FAILED"|"STOPPING"|"UPDATING"
        )
      )
    )

### Request syntax

    svc$list_stream_processors(
      NextToken = "string",
      MaxResults = 123
    )
