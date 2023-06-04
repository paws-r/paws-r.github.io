<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_feature_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the description and parameters of the feature group

### Description

Updates the description and parameters of the feature group.

### Usage

    sagemaker_update_feature_metadata(FeatureGroupName, FeatureName,
      Description, ParameterAdditions, ParameterRemovals)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_feature_metadata_:_FeatureGroupName">FeatureGroupName</code></td>
<td><p>[required] The name of the feature group containing the feature
that you're updating.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_feature_metadata_:_FeatureName">FeatureName</code></td>
<td><p>[required] The name of the feature that you're updating.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_feature_metadata_:_Description">Description</code></td>
<td><p>A description that you can write to better describe the
feature.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_feature_metadata_:_ParameterAdditions">ParameterAdditions</code></td>
<td><p>A list of key-value pairs that you can add to better describe the
feature.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_feature_metadata_:_ParameterRemovals">ParameterRemovals</code></td>
<td><p>A list of parameter keys that you can specify to remove
parameters that describe your feature.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_feature_metadata(
      FeatureGroupName = "string",
      FeatureName = "string",
      Description = "string",
      ParameterAdditions = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ParameterRemovals = list(
        "string"
      )
    )
