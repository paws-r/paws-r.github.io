<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_delete_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified tags associated with an ML object

### Description

Deletes the specified tags associated with an ML object. After this
operation is complete, you can't recover deleted tags.

If you specify a tag that doesn't exist, Amazon ML ignores it.

### Usage

    machinelearning_delete_tags(TagKeys, ResourceId, ResourceType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="machinelearning_delete_tags_:_TagKeys">TagKeys</code></td>
<td><p>[required] One or more tags to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_delete_tags_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the tagged ML object. For example,
<code>exampleModelId</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="machinelearning_delete_tags_:_ResourceType">ResourceType</code></td>
<td><p>[required] The type of the tagged ML object.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceId = "string",
      ResourceType = "BatchPrediction"|"DataSource"|"Evaluation"|"MLModel"
    )

### Request syntax

    svc$delete_tags(
      TagKeys = list(
        "string"
      ),
      ResourceId = "string",
      ResourceType = "BatchPrediction"|"DataSource"|"Evaluation"|"MLModel"
    )
