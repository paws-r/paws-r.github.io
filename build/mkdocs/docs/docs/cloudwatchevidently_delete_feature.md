<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_delete_feature</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Evidently feature

### Description

Deletes an Evidently feature.

### Usage

    cloudwatchevidently_delete_feature(feature, project)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_delete_feature_:_feature">feature</code></td>
<td><p>[required] The name of the feature to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_delete_feature_:_project">project</code></td>
<td><p>[required] The name or ARN of the project that contains the
feature to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_feature(
      feature = "string",
      project = "string"
    )
