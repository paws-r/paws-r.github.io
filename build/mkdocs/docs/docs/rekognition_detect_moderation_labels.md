<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_detect_moderation_labels</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detects unsafe content in a specified JPEG or PNG format image

### Description

Detects unsafe content in a specified JPEG or PNG format image. Use
`detect_moderation_labels` to moderate images depending on your
requirements. For example, you might want to filter images that contain
nudity, but not images containing suggestive content.

To filter images, use the labels returned by `detect_moderation_labels`
to determine which types of content are appropriate.

For information about moderation labels, see Detecting Unsafe Content in
the Amazon Rekognition Developer Guide.

You pass the input image either as base64-encoded image bytes or as a
reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
call Amazon Rekognition operations, passing image bytes is not
supported. The image must be either a PNG or JPEG formatted file.

### Usage

    rekognition_detect_moderation_labels(Image, MinConfidence,
      HumanLoopConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_detect_moderation_labels_:_Image">Image</code></td>
<td><p>[required] The input image as base64-encoded bytes or an S3
object. If you use the AWS CLI to call Amazon Rekognition operations,
passing base64-encoded image bytes is not supported.</p>
<p>If you are using an AWS SDK to call Amazon Rekognition, you might not
need to base64-encode image bytes passed using the <code>Bytes</code>
field. For more information, see Images in the Amazon Rekognition
developer guide.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_detect_moderation_labels_:_MinConfidence">MinConfidence</code></td>
<td><p>Specifies the minimum confidence level for the labels to return.
Amazon Rekognition doesn't return any labels with a confidence level
lower than this specified value.</p>
<p>If you don't specify <code>MinConfidence</code>, the operation
returns labels with confidence values greater than or equal to 50
percent.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_detect_moderation_labels_:_HumanLoopConfig">HumanLoopConfig</code></td>
<td><p>Sets up the configuration for human evaluation, including the
FlowDefinition the image will be sent to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModerationLabels = list(
        list(
          Confidence = 123.0,
          Name = "string",
          ParentName = "string"
        )
      ),
      ModerationModelVersion = "string",
      HumanLoopActivationOutput = list(
        HumanLoopArn = "string",
        HumanLoopActivationReasons = list(
          "string"
        ),
        HumanLoopActivationConditionsEvaluationResults = "string"
      )
    )

### Request syntax

    svc$detect_moderation_labels(
      Image = list(
        Bytes = raw,
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      ),
      MinConfidence = 123.0,
      HumanLoopConfig = list(
        HumanLoopName = "string",
        FlowDefinitionArn = "string",
        DataAttributes = list(
          ContentClassifiers = list(
            "FreeOfPersonallyIdentifiableInformation"|"FreeOfAdultContent"
          )
        )
      )
    )
