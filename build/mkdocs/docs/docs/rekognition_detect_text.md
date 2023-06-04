<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_detect_text</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detects text in the input image and converts it into machine-readable text

### Description

Detects text in the input image and converts it into machine-readable
text.

Pass the input image as base64-encoded image bytes or as a reference to
an image in an Amazon S3 bucket. If you use the AWS CLI to call Amazon
Rekognition operations, you must pass it as a reference to an image in
an Amazon S3 bucket. For the AWS CLI, passing image bytes is not
supported. The image must be either a .png or .jpeg formatted file.

The `detect_text` operation returns text in an array of TextDetection
elements, `TextDetections`. Each `TextDetection` element provides
information about a single word or line of text that was detected in the
image.

A word is one or more script characters that are not separated by
spaces. `detect_text` can detect up to 100 words in an image.

A line is a string of equally spaced words. A line isn't necessarily a
complete sentence. For example, a driver's license number is detected as
a line. A line ends when there is no aligned text after it. Also, a line
ends when there is a large gap between words, relative to the length of
the words. This means, depending on the gap between words, Amazon
Rekognition may detect multiple lines in text aligned in the same
direction. Periods don't represent the end of a line. If a sentence
spans multiple lines, the `detect_text` operation returns multiple
lines.

To determine whether a `TextDetection` element is a line of text or a
word, use the `TextDetection` object `Type` field.

To be detected, text must be within +/- 90 degrees orientation of the
horizontal axis.

For more information, see Detecting text in the Amazon Rekognition
Developer Guide.

### Usage

    rekognition_detect_text(Image, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="rekognition_detect_text_:_Image">Image</code></td>
<td><p>[required] The input image as base64-encoded bytes or an Amazon
S3 object. If you use the AWS CLI to call Amazon Rekognition operations,
you can't pass image bytes.</p>
<p>If you are using an AWS SDK to call Amazon Rekognition, you might not
need to base64-encode image bytes passed using the <code>Bytes</code>
field. For more information, see Images in the Amazon Rekognition
developer guide.</p></td>
</tr>
<tr class="even">
<td><code id="rekognition_detect_text_:_Filters">Filters</code></td>
<td><p>Optional parameters that let you set the criteria that the text
must meet to be included in your response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TextDetections = list(
        list(
          DetectedText = "string",
          Type = "LINE"|"WORD",
          Id = 123,
          ParentId = 123,
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
      ),
      TextModelVersion = "string"
    )

### Request syntax

    svc$detect_text(
      Image = list(
        Bytes = raw,
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      ),
      Filters = list(
        WordFilter = list(
          MinConfidence = 123.0,
          MinBoundingBoxHeight = 123.0,
          MinBoundingBoxWidth = 123.0
        ),
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
        )
      )
    )
