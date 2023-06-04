<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_detect_custom_labels</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detects custom labels in a supplied image by using an Amazon Rekognition Custom Labels model

### Description

Detects custom labels in a supplied image by using an Amazon Rekognition
Custom Labels model.

You specify which version of a model version to use by using the
`ProjectVersionArn` input parameter.

You pass the input image as base64-encoded image bytes or as a reference
to an image in an Amazon S3 bucket. If you use the AWS CLI to call
Amazon Rekognition operations, passing image bytes is not supported. The
image must be either a PNG or JPEG formatted file.

For each object that the model version detects on an image, the API
returns a (`CustomLabel`) object in an array (`CustomLabels`). Each
`CustomLabel` object provides the label name (`Name`), the level of
confidence that the image contains the object (`Confidence`), and object
location information, if it exists, for the label on the image
(`Geometry`).

To filter labels that are returned, specify a value for `MinConfidence`.
`DetectCustomLabelsLabels` only returns labels with a confidence that's
higher than the specified value. The value of `MinConfidence` maps to
the assumed threshold values created during training. For more
information, see *Assumed threshold* in the Amazon Rekognition Custom
Labels Developer Guide. Amazon Rekognition Custom Labels metrics
expresses an assumed threshold as a floating point value between 0-1.
The range of `MinConfidence` normalizes the threshold value to a
percentage value (0-100). Confidence responses from
`detect_custom_labels` are also returned as a percentage. You can use
`MinConfidence` to change the precision and recall or your model. For
more information, see *Analyzing an image* in the Amazon Rekognition
Custom Labels Developer Guide.

If you don't specify a value for `MinConfidence`, `detect_custom_labels`
returns labels based on the assumed threshold of each label.

This is a stateless API operation. That is, the operation does not
persist any data.

This operation requires permissions to perform the
`rekognition:DetectCustomLabels` action.

For more information, see *Analyzing an image* in the Amazon Rekognition
Custom Labels Developer Guide.

### Usage

    rekognition_detect_custom_labels(ProjectVersionArn, Image, MaxResults,
      MinConfidence)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_detect_custom_labels_:_ProjectVersionArn">ProjectVersionArn</code></td>
<td><p>[required] The ARN of the model version that you want to
use.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_detect_custom_labels_:_Image">Image</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_detect_custom_labels_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results you want the service to return in the
response. The service returns the specified number of highest confidence
labels ranked from highest confidence to lowest.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_detect_custom_labels_:_MinConfidence">MinConfidence</code></td>
<td><p>Specifies the minimum confidence level for the labels to return.
<code>detect_custom_labels</code> doesn't return any labels with a
confidence value that's lower than this specified value. If you specify
a value of 0, <code>detect_custom_labels</code> returns all labels,
regardless of the assumed threshold applied to each label. If you don't
specify a value for <code>MinConfidence</code>,
<code>detect_custom_labels</code> returns labels based on the assumed
threshold of each label.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CustomLabels = list(
        list(
          Name = "string",
          Confidence = 123.0,
          Geometry = list(
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
        )
      )
    )

### Request syntax

    svc$detect_custom_labels(
      ProjectVersionArn = "string",
      Image = list(
        Bytes = raw,
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      ),
      MaxResults = 123,
      MinConfidence = 123.0
    )
