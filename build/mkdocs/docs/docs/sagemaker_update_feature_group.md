<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_feature_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the feature group

### Description

Updates the feature group.

### Usage

    sagemaker_update_feature_group(FeatureGroupName, FeatureAdditions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_feature_group_:_FeatureGroupName">FeatureGroupName</code></td>
<td><p>[required] The name of the feature group that you're
updating.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_feature_group_:_FeatureAdditions">FeatureAdditions</code></td>
<td><p>Updates the feature group. Updating a feature group is an
asynchronous operation. When you get an HTTP 200 response, you've made a
valid request. It takes some time after you've made a valid request for
Feature Store to update the feature group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FeatureGroupArn = "string"
    )

### Request syntax

    svc$update_feature_group(
      FeatureGroupName = "string",
      FeatureAdditions = list(
        list(
          FeatureName = "string",
          FeatureType = "Integral"|"Fractional"|"String"
        )
      )
    )
