<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all tags on an Amazon RDS resource

### Description

Lists all tags on an Amazon RDS resource.

For an overview on tagging an Amazon RDS resource, see [Tagging Amazon
RDS
Resources](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html)
in the *Amazon RDS User Guide*.

### Usage

    rds_list_tags_for_resource(ResourceName, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_list_tags_for_resource_:_ResourceName">ResourceName</code></td>
<td><p>[required] The Amazon RDS resource with tags to be listed. This
value is an Amazon Resource Name (ARN). For information about creating
an ARN, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing">Constructing
an ARN for Amazon RDS</a> in the <em>Amazon RDS User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="rds_list_tags_for_resource_:_Filters">Filters</code></td>
<td><p>This parameter isn't currently supported.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TagList = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceName = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      )
    )
