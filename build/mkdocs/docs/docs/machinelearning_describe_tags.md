<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_describe_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of the tags for your Amazon ML object

### Description

Describes one or more of the tags for your Amazon ML object.

### Usage

    machinelearning_describe_tags(ResourceId, ResourceType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_describe_tags_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the ML object. For example,
<code>exampleModelId</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_describe_tags_:_ResourceType">ResourceType</code></td>
<td><p>[required] The type of the ML object.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceId = "string",
      ResourceType = "BatchPrediction"|"DataSource"|"Evaluation"|"MLModel",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$describe_tags(
      ResourceId = "string",
      ResourceType = "BatchPrediction"|"DataSource"|"Evaluation"|"MLModel"
    )
