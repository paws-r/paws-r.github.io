<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_add_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more tags to an object, up to a limit of 10

### Description

Adds one or more tags to an object, up to a limit of 10. Each tag
consists of a key and an optional value. If you add a tag using a key
that is already associated with the ML object, `add_tags` updates the
tag's value.

### Usage

    machinelearning_add_tags(Tags, ResourceId, ResourceType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="machinelearning_add_tags_:_Tags">Tags</code></td>
<td><p>[required] The key-value pairs to use to create tags. If you
specify a key without specifying a value, Amazon ML creates a tag with
the specified key and a value of null.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_add_tags_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the ML object to tag. For example,
<code>exampleModelId</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="machinelearning_add_tags_:_ResourceType">ResourceType</code></td>
<td><p>[required] The type of the ML object to tag.</p></td>
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

    svc$add_tags(
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ResourceId = "string",
      ResourceType = "BatchPrediction"|"DataSource"|"Evaluation"|"MLModel"
    )
