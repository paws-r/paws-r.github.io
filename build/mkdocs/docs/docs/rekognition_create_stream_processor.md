<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_create_stream_processor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon Rekognition stream processor that you can use to detect and recognize faces or to detect labels in a streaming video

### Description

Creates an Amazon Rekognition stream processor that you can use to
detect and recognize faces or to detect labels in a streaming video.

Amazon Rekognition Video is a consumer of live video from Amazon Kinesis
Video Streams. There are two different settings for stream processors in
Amazon Rekognition: detecting faces and detecting labels.

-   If you are creating a stream processor for detecting faces, you
    provide as input a Kinesis video stream (`Input`) and a Kinesis data
    stream (`Output`) stream for receiving the output. You must use the
    `FaceSearch` option in `Settings`, specifying the collection that
    contains the faces you want to recognize. After you have finished
    analyzing a streaming video, use `stop_stream_processor` to stop
    processing.

-   If you are creating a stream processor to detect labels, you provide
    as input a Kinesis video stream (`Input`), Amazon S3 bucket
    information (`Output`), and an Amazon SNS topic ARN
    (`NotificationChannel`). You can also provide a KMS key ID to
    encrypt the data sent to your Amazon S3 bucket. You specify what you
    want to detect by using the `ConnectedHome` option in settings, and
    selecting one of the following: `PERSON`, `PET`, `PACKAGE`, `ALL`
    You can also specify where in the frame you want Amazon Rekognition
    to monitor with `RegionsOfInterest`. When you run the
    `start_stream_processor` operation on a label detection stream
    processor, you input start and stop information to determine the
    length of the processing time.

Use `Name` to assign an identifier for the stream processor. You use
`Name` to manage the stream processor. For example, you can start
processing the source video by calling `start_stream_processor` with the
`Name` field.

This operation requires permissions to perform the
`rekognition:CreateStreamProcessor` action. If you want to tag your
stream processor, you also require permission to perform the
`rekognition:TagResource` operation.

### Usage

    rekognition_create_stream_processor(Input, Output, Name, Settings,
      RoleArn, Tags, NotificationChannel, KmsKeyId, RegionsOfInterest,
      DataSharingPreference)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_create_stream_processor_:_Input">Input</code></td>
<td><p>[required] Kinesis video stream stream that provides the source
streaming video. If you are using the AWS CLI, the parameter name is
<code>StreamProcessorInput</code>. This is required for both face search
and label detection stream processors.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_create_stream_processor_:_Output">Output</code></td>
<td><p>[required] Kinesis data stream stream or Amazon S3 bucket
location to which Amazon Rekognition Video puts the analysis results. If
you are using the AWS CLI, the parameter name is
<code>StreamProcessorOutput</code>. This must be a S3Destination of an
Amazon S3 bucket that you own for a label detection stream processor or
a Kinesis data stream ARN for a face search stream processor.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_create_stream_processor_:_Name">Name</code></td>
<td><p>[required] An identifier you assign to the stream processor. You
can use <code>Name</code> to manage the stream processor. For example,
you can get the current status of the stream processor by calling
<code>describe_stream_processor</code>. <code>Name</code> is idempotent.
This is required for both face search and label detection stream
processors.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_create_stream_processor_:_Settings">Settings</code></td>
<td><p>[required] Input parameters used in a streaming video analyzed by
a stream processor. You can use <code>FaceSearch</code> to recognize
faces in a streaming video, or you can use <code>ConnectedHome</code> to
detect labels.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_create_stream_processor_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Number (ARN) of the IAM role that
allows access to the stream processor. The IAM role provides Rekognition
read permissions for a Kinesis stream. It also provides write
permissions to an Amazon S3 bucket and Amazon Simple Notification
Service topic for a label detection stream processor. This is required
for both face search and label detection stream processors.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_create_stream_processor_:_Tags">Tags</code></td>
<td><p>A set of tags (key-value pairs) that you want to attach to the
stream processor.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_create_stream_processor_:_NotificationChannel">NotificationChannel</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="rekognition_create_stream_processor_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The identifier for your AWS Key Management Service key (AWS KMS
key). This is an optional parameter for label detection stream
processors and should not be used to create a face search stream
processor. You can supply the Amazon Resource Name (ARN) of your KMS
key, the ID of your KMS key, an alias for your KMS key, or an alias ARN.
The key is used to encrypt results and data published to your Amazon S3
bucket, which includes image frames and hero images. Your source images
are unaffected.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_create_stream_processor_:_RegionsOfInterest">RegionsOfInterest</code></td>
<td><p>Specifies locations in the frames where Amazon Rekognition checks
for objects or people. You can specify up to 10 regions of interest, and
each region has either a polygon or a bounding box. This is an optional
parameter for label detection stream processors and should not be used
to create a face search stream processor.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_create_stream_processor_:_DataSharingPreference">DataSharingPreference</code></td>
<td><p>Shows whether you are sharing data with Rekognition to improve
model performance. You can choose this option at the account level or on
a per-stream basis. Note that if you opt out at the account level this
setting is ignored on individual streams.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StreamProcessorArn = "string"
    )

### Request syntax

    svc$create_stream_processor(
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
      Name = "string",
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
      RoleArn = "string",
      Tags = list(
        "string"
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
