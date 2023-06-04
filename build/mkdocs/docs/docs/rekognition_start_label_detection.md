<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_start_label_detection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts asynchronous detection of labels in a stored video

### Description

Starts asynchronous detection of labels in a stored video.

Amazon Rekognition Video can detect labels in a video. Labels are
instances of real-world entities. This includes objects like flower,
tree, and table; events like wedding, graduation, and birthday party;
concepts like landscape, evening, and nature; and activities like a
person getting out of a car or a person skiing.

The video must be stored in an Amazon S3 bucket. Use Video to specify
the bucket name and the filename of the video. `start_label_detection`
returns a job identifier (`JobId`) which you use to get the results of
the operation. When label detection is finished, Amazon Rekognition
Video publishes a completion status to the Amazon Simple Notification
Service topic that you specify in `NotificationChannel`.

To get the results of the label detection operation, first check that
the status value published to the Amazon SNS topic is `SUCCEEDED`. If
so, call `get_label_detection` and pass the job identifier (`JobId`)
from the initial call to `start_label_detection`.

*Optional Parameters*

`start_label_detection` has the `GENERAL_LABELS` Feature applied by
default. This feature allows you to provide filtering criteria to the
`Settings` parameter. You can filter with sets of individual labels or
with label categories. You can specify inclusive filters, exclusive
filters, or a combination of inclusive and exclusive filters. For more
information on filtering, see [Detecting labels in a
video](https://docs.aws.amazon.com/rekognition/latest/dg/labels-detecting-labels-video.html).

You can specify `MinConfidence` to control the confidence threshold for
the labels returned. The default is 50.

### Usage

    rekognition_start_label_detection(Video, ClientRequestToken,
      MinConfidence, NotificationChannel, JobTag, Features, Settings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_start_label_detection_:_Video">Video</code></td>
<td><p>[required] The video in which you want to detect labels. The
video must be stored in an Amazon S3 bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_start_label_detection_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>Idempotent token used to identify the start request. If you use
the same token with multiple <code>start_label_detection</code>
requests, the same <code>JobId</code> is returned. Use
<code>ClientRequestToken</code> to prevent the same job from being
accidently started more than once.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_start_label_detection_:_MinConfidence">MinConfidence</code></td>
<td><p>Specifies the minimum confidence that Amazon Rekognition Video
must have in order to return a detected label. Confidence represents how
certain Amazon Rekognition is that a label is correctly identified.0 is
the lowest confidence. 100 is the highest confidence. Amazon Rekognition
Video doesn't return any labels with a confidence level lower than this
specified value.</p>
<p>If you don't specify <code>MinConfidence</code>, the operation
returns labels and bounding boxes (if detected) with confidence values
greater than or equal to 50 percent.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_start_label_detection_:_NotificationChannel">NotificationChannel</code></td>
<td><p>The Amazon SNS topic ARN you want Amazon Rekognition Video to
publish the completion status of the label detection operation to. The
Amazon SNS topic must have a topic name that begins with
<em>AmazonRekognition</em> if you are using the
AmazonRekognitionServiceRole permissions policy.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_start_label_detection_:_JobTag">JobTag</code></td>
<td><p>An identifier you specify that's returned in the completion
notification that's published to your Amazon Simple Notification Service
topic. For example, you can use <code>JobTag</code> to group related
jobs and identify them in the completion notification.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_start_label_detection_:_Features">Features</code></td>
<td><p>The features to return after video analysis. You can specify that
GENERAL_LABELS are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_start_label_detection_:_Settings">Settings</code></td>
<td><p>The settings for a StartLabelDetection request.Contains the
specified parameters for the label detection request of an asynchronous
label analysis operation. Settings can include filters for
GENERAL_LABELS.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string"
    )

### Request syntax

    svc$start_label_detection(
      Video = list(
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      ),
      ClientRequestToken = "string",
      MinConfidence = 123.0,
      NotificationChannel = list(
        SNSTopicArn = "string",
        RoleArn = "string"
      ),
      JobTag = "string",
      Features = list(
        "GENERAL_LABELS"
      ),
      Settings = list(
        GeneralLabels = list(
          LabelInclusionFilters = list(
            "string"
          ),
          LabelExclusionFilters = list(
            "string"
          ),
          LabelCategoryInclusionFilters = list(
            "string"
          ),
          LabelCategoryExclusionFilters = list(
            "string"
          )
        )
      )
    )
