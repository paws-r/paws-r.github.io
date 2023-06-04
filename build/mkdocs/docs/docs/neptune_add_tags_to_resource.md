<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_add_tags_to_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds metadata tags to an Amazon Neptune resource

### Description

Adds metadata tags to an Amazon Neptune resource. These tags can also be
used with cost allocation reporting to track cost associated with Amazon
Neptune resources, or used in a Condition statement in an IAM policy for
Amazon Neptune.

### Usage

    neptune_add_tags_to_resource(ResourceName, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="neptune_add_tags_to_resource_:_ResourceName">ResourceName</code></td>
<td><p>[required] The Amazon Neptune resource that the tags are added
to. This value is an Amazon Resource Name (ARN). For information about
creating an ARN, see <a
href="https://docs.aws.amazon.com/neptune/latest/userguide/#tagging.ARN.Constructing">Constructing
an Amazon Resource Name (ARN)</a>.</p></td>
</tr>
<tr class="even">
<td><code id="neptune_add_tags_to_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags to be assigned to the Amazon Neptune
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_tags_to_resource(
      ResourceName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
