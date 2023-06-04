<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_get_label_detection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the label detection results of a Amazon Rekognition Video analysis started by StartLabelDetection

### Description

Gets the label detection results of a Amazon Rekognition Video analysis
started by `start_label_detection`.

The label detection operation is started by a call to
`start_label_detection` which returns a job identifier (`JobId`). When
the label detection operation finishes, Amazon Rekognition publishes a
completion status to the Amazon Simple Notification Service topic
registered in the initial call to `StartlabelDetection`.

To get the results of the label detection operation, first check that
the status value published to the Amazon SNS topic is `SUCCEEDED`. If
so, call `get_label_detection` and pass the job identifier (`JobId`)
from the initial call to `start_label_detection`.

`get_label_detection` returns an array of detected labels (`Labels`)
sorted by the time the labels were detected. You can also sort by the
label name by specifying `NAME` for the `SortBy` input parameter. If
there is no `NAME` specified, the default sort is by timestamp.

You can select how results are aggregated by using the `AggregateBy`
input parameter. The default aggregation method is `TIMESTAMPS`. You can
also aggregate by `SEGMENTS`, which aggregates all instances of labels
detected in a given segment.

The returned Labels array may include the following attributes:

-   Name - The name of the detected label.

-   Confidence - The level of confidence in the label assigned to a
    detected object.

-   Parents - The ancestor labels for a detected label.
    GetLabelDetection returns a hierarchical taxonomy of detected
    labels. For example, a detected car might be assigned the label car.
    The label car has two parent labels: Vehicle (its parent) and
    Transportation (its grandparent). The response includes the all
    ancestors for a label, where every ancestor is a unique label. In
    the previous example, Car, Vehicle, and Transportation are returned
    as unique labels in the response.

-   Aliases - Possible Aliases for the label.

-   Categories - The label categories that the detected label belongs
    to.

-   BoundingBox — Bounding boxes are described for all instances of
    detected common object labels, returned in an array of Instance
    objects. An Instance object contains a BoundingBox object,
    describing the location of the label on the input image. It also
    includes the confidence for the accuracy of the detected bounding
    box.

-   Timestamp - Time, in milliseconds from the start of the video, that
    the label was detected. For aggregation by `SEGMENTS`, the
    `StartTimestampMillis`, `EndTimestampMillis`, and `DurationMillis`
    structures are what define a segment. Although the “Timestamp”
    structure is still returned with each label, its value is set to be
    the same as `StartTimestampMillis`.

Timestamp and Bounding box information are returned for detected
Instances, only if aggregation is done by `TIMESTAMPS`. If aggregating
by `SEGMENTS`, information about detected instances isn’t returned.

The version of the label model used for the detection is also returned.

**Note `DominantColors` isn't returned for `Instances`, although it is
shown as part of the response in the sample seen below.**

Use `MaxResults` parameter to limit the number of labels returned. If
there are more results than specified in `MaxResults`, the value of
`NextToken` in the operation response contains a pagination token for
getting the next set of results. To get the next page of results, call
`GetlabelDetection` and populate the `NextToken` request parameter with
the token value returned from the previous call to
`get_label_detection`.

### Usage

    rekognition_get_label_detection(JobId, MaxResults, NextToken, SortBy,
      AggregateBy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="rekognition_get_label_detection_:_JobId">JobId</code></td>
<td><p>[required] Job identifier for the label detection operation for
which you want results returned. You get the job identifer from an
initial call to <code>StartlabelDetection</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_get_label_detection_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return per paginated call. The
largest value you can specify is 1000. If you specify a value greater
than 1000, a maximum of 1000 results is returned. The default value is
1000.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_get_label_detection_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there are more
labels to retrieve), Amazon Rekognition Video returns a pagination token
in the response. You can use this pagination token to retrieve the next
set of labels.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_get_label_detection_:_SortBy">SortBy</code></td>
<td><p>Sort to use for elements in the <code>Labels</code> array. Use
<code>TIMESTAMP</code> to sort array elements by the time labels are
detected. Use <code>NAME</code> to alphabetically group elements for a
label together. Within each label group, the array element are sorted by
detection confidence. The default sort is by
<code>TIMESTAMP</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_get_label_detection_:_AggregateBy">AggregateBy</code></td>
<td><p>Defines how to aggregate the returned results. Results can be
aggregated by timestamps or segments.</p></td>
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
      NextToken = "string",
      Labels = list(
        list(
          Timestamp = 123,
          Label = list(
            Name = "string",
            Confidence = 123.0,
            Instances = list(
              list(
                BoundingBox = list(
                  Width = 123.0,
                  Height = 123.0,
                  Left = 123.0,
                  Top = 123.0
                ),
                Confidence = 123.0,
                DominantColors = list(
                  list(
                    Red = 123,
                    Blue = 123,
                    Green = 123,
                    HexCode = "string",
                    CSSColor = "string",
                    SimplifiedColor = "string",
                    PixelPercent = 123.0
                  )
                )
              )
            ),
            Parents = list(
              list(
                Name = "string"
              )
            ),
            Aliases = list(
              list(
                Name = "string"
              )
            ),
            Categories = list(
              list(
                Name = "string"
              )
            )
          ),
          StartTimestampMillis = 123,
          EndTimestampMillis = 123,
          DurationMillis = 123
        )
      ),
      LabelModelVersion = "string",
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

    svc$get_label_detection(
      JobId = "string",
      MaxResults = 123,
      NextToken = "string",
      SortBy = "NAME"|"TIMESTAMP",
      AggregateBy = "TIMESTAMPS"|"SEGMENTS"
    )
