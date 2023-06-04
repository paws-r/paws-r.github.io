<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds metadata tags to a DataBrew resource, such as a dataset, project, recipe, job, or schedule

### Description

Adds metadata tags to a DataBrew resource, such as a dataset, project,
recipe, job, or schedule.

### Usage

    gluedatabrew_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="gluedatabrew_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The DataBrew resource to which tags should be added.
The value for this parameter is an Amazon Resource Name (ARN). For
DataBrew, you can tag a dataset, a job, a project, or a recipe.</p></td>
</tr>
<tr class="even">
<td><code id="gluedatabrew_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] One or more tags to be assigned to the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      Tags = list(
        "string"
      )
    )
