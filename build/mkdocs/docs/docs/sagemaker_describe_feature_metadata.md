<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_feature_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Shows the metadata for a feature within a feature group

### Description

Shows the metadata for a feature within a feature group.

### Usage

    sagemaker_describe_feature_metadata(FeatureGroupName, FeatureName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_feature_metadata_:_FeatureGroupName">FeatureGroupName</code></td>
<td><p>[required] The name of the feature group containing the
feature.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_describe_feature_metadata_:_FeatureName">FeatureName</code></td>
<td><p>[required] The name of the feature.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FeatureGroupArn = "string",
      FeatureGroupName = "string",
      FeatureName = "string",
      FeatureType = "Integral"|"Fractional"|"String",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      Description = "string",
      Parameters = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$describe_feature_metadata(
      FeatureGroupName = "string",
      FeatureName = "string"
    )
