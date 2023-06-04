<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_detect_labels</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detects instances of real-world entities within an image (JPEG or PNG) provided as input

### Description

Detects instances of real-world entities within an image (JPEG or PNG)
provided as input. This includes objects like flower, tree, and table;
events like wedding, graduation, and birthday party; and concepts like
landscape, evening, and nature.

For an example, see Analyzing images stored in an Amazon S3 bucket in
the Amazon Rekognition Developer Guide.

You pass the input image as base64-encoded image bytes or as a reference
to an image in an Amazon S3 bucket. If you use the AWS CLI to call
Amazon Rekognition operations, passing image bytes is not supported. The
image must be either a PNG or JPEG formatted file.

**Optional Parameters**

You can specify one or both of the `GENERAL_LABELS` and
`IMAGE_PROPERTIES` feature types when calling the DetectLabels API.
Including `GENERAL_LABELS` will ensure the response includes the labels
detected in the input image, while including `IMAGE_PROPERTIES `will
ensure the response includes information about the image quality and
color.

When using `GENERAL_LABELS` and/or `IMAGE_PROPERTIES` you can provide
filtering criteria to the Settings parameter. You can filter with sets
of individual labels or with label categories. You can specify inclusive
filters, exclusive filters, or a combination of inclusive and exclusive
filters. For more information on filtering see [Detecting Labels in an
Image](https://docs.aws.amazon.com/rekognition/latest/dg/labels-detect-labels-image.html).

You can specify `MinConfidence` to control the confidence threshold for
the labels returned. The default is 55%. You can also add the
`MaxLabels` parameter to limit the number of labels returned. The
default and upper limit is 1000 labels.

**Response Elements**

For each object, scene, and concept the API returns one or more labels.
The API returns the following types of information about labels:

-   Name - The name of the detected label.

-   Confidence - The level of confidence in the label assigned to a
    detected object.

-   Parents - The ancestor labels for a detected label. DetectLabels
    returns a hierarchical taxonomy of detected labels. For example, a
    detected car might be assigned the label car. The label car has two
    parent labels: Vehicle (its parent) and Transportation (its
    grandparent). The response includes the all ancestors for a label,
    where every ancestor is a unique label. In the previous example,
    Car, Vehicle, and Transportation are returned as unique labels in
    the response.

-   Aliases - Possible Aliases for the label.

-   Categories - The label categories that the detected label belongs
    to.

-   BoundingBox — Bounding boxes are described for all instances of
    detected common object labels, returned in an array of Instance
    objects. An Instance object contains a BoundingBox object,
    describing the location of the label on the input image. It also
    includes the confidence for the accuracy of the detected bounding
    box.

The API returns the following information regarding the image, as part
of the ImageProperties structure:

-   Quality - Information about the Sharpness, Brightness, and Contrast
    of the input image, scored between 0 to 100. Image quality is
    returned for the entire image, as well as the background and the
    foreground.

-   Dominant Color - An array of the dominant colors in the image.

-   Foreground - Information about the sharpness, brightness, and
    dominant colors of the input image’s foreground.

-   Background - Information about the sharpness, brightness, and
    dominant colors of the input image’s background.

The list of returned labels will include at least one label for every
detected object, along with information about that label. In the
following example, suppose the input image has a lighthouse, the sea,
and a rock. The response includes all three labels, one for each object,
as well as the confidence in the label:

`⁠{Name: lighthouse, Confidence: 98.4629}⁠`

`⁠{Name: rock,Confidence: 79.2097}⁠`

`⁠ {Name: sea,Confidence: 75.061}⁠`

The list of labels can include multiple labels for the same object. For
example, if the input image shows a flower (for example, a tulip), the
operation might return the following three labels.

`⁠{Name: flower,Confidence: 99.0562}⁠`

`⁠{Name: plant,Confidence: 99.0562}⁠`

`⁠{Name: tulip,Confidence: 99.0562}⁠`

In this example, the detection algorithm more precisely identifies the
flower as a tulip.

If the object detected is a person, the operation doesn't provide the
same facial details that the `detect_faces` operation provides.

This is a stateless API operation that doesn't return any data.

This operation requires permissions to perform the
`rekognition:DetectLabels` action.

### Usage

    rekognition_detect_labels(Image, MaxLabels, MinConfidence, Features,
      Settings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="rekognition_detect_labels_:_Image">Image</code></td>
<td><p>[required] The input image as base64-encoded bytes or an S3
object. If you use the AWS CLI to call Amazon Rekognition operations,
passing image bytes is not supported. Images stored in an S3 Bucket do
not need to be base64-encoded.</p>
<p>If you are using an AWS SDK to call Amazon Rekognition, you might not
need to base64-encode image bytes passed using the <code>Bytes</code>
field. For more information, see Images in the Amazon Rekognition
developer guide.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_detect_labels_:_MaxLabels">MaxLabels</code></td>
<td><p>Maximum number of labels you want the service to return in the
response. The service returns the specified number of highest confidence
labels.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_detect_labels_:_MinConfidence">MinConfidence</code></td>
<td><p>Specifies the minimum confidence level for the labels to return.
Amazon Rekognition doesn't return any labels with confidence lower than
this specified value.</p>
<p>If <code>MinConfidence</code> is not specified, the operation returns
labels with a confidence values greater than or equal to 55
percent.</p></td>
</tr>
<tr class="even">
<td><code id="rekognition_detect_labels_:_Features">Features</code></td>
<td><p>A list of the types of analysis to perform. Specifying
GENERAL_LABELS uses the label detection feature, while specifying
IMAGE_PROPERTIES returns information regarding image color and quality.
If no option is specified GENERAL_LABELS is used by default.</p></td>
</tr>
<tr class="odd">
<td><code id="rekognition_detect_labels_:_Settings">Settings</code></td>
<td><p>A list of the filters to be applied to returned detected labels
and image properties. Specified filters can be inclusive, exclusive, or
a combination of both. Filters can be used for individual labels or
label categories. The exact label names or label categories must be
supplied. For a full list of labels and label categories, see <a
href="https://docs.aws.amazon.com/rekognition/latest/dg/labels.html">Detecting
labels</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Labels = list(
        list(
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
        )
      ),
      OrientationCorrection = "ROTATE_0"|"ROTATE_90"|"ROTATE_180"|"ROTATE_270",
      LabelModelVersion = "string",
      ImageProperties = list(
        Quality = list(
          Brightness = 123.0,
          Sharpness = 123.0,
          Contrast = 123.0
        ),
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
        ),
        Foreground = list(
          Quality = list(
            Brightness = 123.0,
            Sharpness = 123.0,
            Contrast = 123.0
          ),
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
        ),
        Background = list(
          Quality = list(
            Brightness = 123.0,
            Sharpness = 123.0,
            Contrast = 123.0
          ),
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
      )
    )

### Request syntax

    svc$detect_labels(
      Image = list(
        Bytes = raw,
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      ),
      MaxLabels = 123,
      MinConfidence = 123.0,
      Features = list(
        "GENERAL_LABELS"|"IMAGE_PROPERTIES"
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
        ),
        ImageProperties = list(
          MaxDominantColors = 123
        )
      )
    )

### Examples

    ## Not run: 
    # This operation detects labels in the supplied image
    svc$detect_labels(
      Image = list(
        S3Object = list(
          Bucket = "mybucket",
          Name = "myphoto"
        )
      ),
      MaxLabels = 123L,
      MinConfidence = 70L
    )

    ## End(Not run)
