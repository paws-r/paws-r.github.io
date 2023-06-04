<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_get_content_moderation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the inappropriate, unwanted, or offensive content analysis results for a Amazon Rekognition Video analysis started by StartContentModeration

### Description

Gets the inappropriate, unwanted, or offensive content analysis results
for a Amazon Rekognition Video analysis started by
`start_content_moderation`. For a list of moderation labels in Amazon
Rekognition, see [Using the image and video moderation
APIs](https://docs.aws.amazon.com/rekognition/latest/dg/moderation.html#moderation-api).

Amazon Rekognition Video inappropriate or offensive content detection in
a stored video is an asynchronous operation. You start analysis by
calling `start_content_moderation` which returns a job identifier
(`JobId`). When analysis finishes, Amazon Rekognition Video publishes a
completion status to the Amazon Simple Notification Service topic
registered in the initial call to `start_content_moderation`. To get the
results of the content analysis, first check that the status value
published to the Amazon SNS topic is `SUCCEEDED`. If so, call
`get_content_moderation` and pass the job identifier (`JobId`) from the
initial call to `start_content_moderation`.

For more information, see Working with Stored Videos in the Amazon
Rekognition Devlopers Guide.

`get_content_moderation` returns detected inappropriate, unwanted, or
offensive content moderation labels, and the time they are detected, in
an array, `ModerationLabels`, of ContentModerationDetection objects.

By default, the moderated labels are returned sorted by time, in
milliseconds from the start of the video. You can also sort them by
moderated label by specifying `NAME` for the `SortBy` input parameter.

Since video analysis can return a large number of results, use the
`MaxResults` parameter to limit the number of labels returned in a
single call to `get_content_moderation`. If there are more results than
specified in `MaxResults`, the value of `NextToken` in the operation
response contains a pagination token for getting the next set of
results. To get the next page of results, call `get_content_moderation`
and populate the `NextToken` request parameter with the value of
`NextToken` returned from the previous call to `get_content_moderation`.

For more information, see moderating content in the Amazon Rekognition
Developer Guide.

### Usage

    rekognition_get_content_moderation(JobId, MaxResults, NextToken, SortBy,
      AggregateBy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_get_content_moderation_:_JobId">JobId</code></td>
<td><p>[required] The identifier for the inappropriate, unwanted, or
offensive content moderation job. Use <code>JobId</code> to identify the
job in a subsequent call to
<code>get_content_moderation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_get_content_moderation_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return per paginated call. The
largest value you can specify is 1000. If you specify a value greater
than 1000, a maximum of 1000 results is returned. The default value is
1000.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_get_content_moderation_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there is more
data to retrieve), Amazon Rekognition returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
content moderation labels.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_get_content_moderation_:_SortBy">SortBy</code></td>
<td><p>Sort to use for elements in the
<code>ModerationLabelDetections</code> array. Use <code>TIMESTAMP</code>
to sort array elements by the time labels are detected. Use
<code>NAME</code> to alphabetically group elements for a label together.
Within each label group, the array element are sorted by detection
confidence. The default sort is by <code>TIMESTAMP</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_get_content_moderation_:_AggregateBy">AggregateBy</code></td>
<td><p>Defines how to aggregate results of the StartContentModeration
request. Default aggregation option is TIMESTAMPS. SEGMENTS mode
aggregates moderation labels over time.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobStatus = "IN_PROGRESS"|"SUCCEEDED"|"FAILED",
      StatusMessage = "string",
      VideoMetadata = list(
        Codec = "string",
        DurationMillis = 123,
        Format = "string",
        FrameRate = 123.0,
        FrameHeight = 123,
        FrameWidth = 123,
        ColorRange = "FULL"|"LIMITED"
      ),
      ModerationLabels = list(
        list(
          Timestamp = 123,
          ModerationLabel = list(
            Confidence = 123.0,
            Name = "string",
            ParentName = "string"
          ),
          StartTimestampMillis = 123,
          EndTimestampMillis = 123,
          DurationMillis = 123
        )
      ),
      NextToken = "string",
      ModerationModelVersion = "string",
      JobId = "string",
      Video = list(
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      ),
      JobTag = "string",
      GetRequestMetadata = list(
        SortBy = "NAME"|"TIMESTAMP",
        AggregateBy = "TIMESTAMPS"|"SEGMENTS"
      )
    )

### Request syntax

    svc$get_content_moderation(
      JobId = "string",
      MaxResults = 123,
      NextToken = "string",
      SortBy = "NAME"|"TIMESTAMP",
      AggregateBy = "TIMESTAMPS"|"SEGMENTS"
    )
