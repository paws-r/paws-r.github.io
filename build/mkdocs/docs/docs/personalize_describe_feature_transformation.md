<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_describe_feature_transformation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the given feature transformation

### Description

Describes the given feature transformation.

### Usage

    personalize_describe_feature_transformation(featureTransformationArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_describe_feature_transformation_:_featureTransformationArn">featureTransformationArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the feature
transformation to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      featureTransformation = list(
        name = "string",
        featureTransformationArn = "string",
        defaultParameters = list(
          "string"
        ),
        creationDateTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdatedDateTime = as.POSIXct(
          "2015-01-01"
        ),
        status = "string"
      )
    )

### Request syntax

    svc$describe_feature_transformation(
      featureTransformationArn = "string"
    )
