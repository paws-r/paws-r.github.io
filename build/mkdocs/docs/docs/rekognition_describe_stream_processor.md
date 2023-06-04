<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_describe_stream_processor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about a stream processor created by CreateStreamProcessor

### Description

Provides information about a stream processor created by
`create_stream_processor`. You can get information about the input and
output streams, the input parameters for the face recognition being
performed, and the current status of the stream processor.

### Usage

    rekognition_describe_stream_processor(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_describe_stream_processor_:_Name">Name</code></td>
<td><p>[required] Name of the stream processor for which you want
information.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      StreamProcessorArn = "string",
      Status = "STOPPED"|"STARTING"|"RUNNING"|"FAILED"|"STOPPING"|"UPDATING",
      StatusMessage = "string",
      CreationTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      LastUpdateTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      Input = list(
        KinesisVideoStream = list(
          Arn = "string"
        )
      ),
      Output = list(
        KinesisDataStream = list(
          Arn = "string"
        ),
        S3Destination = list(
          Bucket = "string",
          KeyPrefix = "string"
        )
      ),
      RoleArn = "string",
      Settings = list(
        FaceSearch = list(
          CollectionId = "string",
          FaceMatchThreshold = 123.0
        ),
        ConnectedHome = list(
          Labels = list(
            "string"
          ),
          MinConfidence = 123.0
        )
      ),
      NotificationChannel = list(
        SNSTopicArn = "string"
      ),
      KmsKeyId = "string",
      RegionsOfInterest = list(
        list(
          BoundingBox = list(
            Width = 123.0,
            Height = 123.0,
            Left = 123.0,
            Top = 123.0
          ),
          Polygon = list(
            list(
              X = 123.0,
              Y = 123.0
            )
          )
        )
      ),
      DataSharingPreference = list(
        OptIn = TRUE|FALSE
      )
    )

### Request syntax

    svc$describe_stream_processor(
      Name = "string"
    )
