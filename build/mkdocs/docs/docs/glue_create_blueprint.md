<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_create_blueprint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers a blueprint with Glue

### Description

Registers a blueprint with Glue.

### Usage

    glue_create_blueprint(Name, Description, BlueprintLocation, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_create_blueprint_:_Name">Name</code></td>
<td><p>[required] The name of the blueprint.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_blueprint_:_Description">Description</code></td>
<td><p>A description of the blueprint.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_blueprint_:_BlueprintLocation">BlueprintLocation</code></td>
<td><p>[required] Specifies a path in Amazon S3 where the blueprint is
published.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_blueprint_:_Tags">Tags</code></td>
<td><p>The tags to be applied to this blueprint.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$create_blueprint(
      Name = "string",
      Description = "string",
      BlueprintLocation = "string",
      Tags = list(
        "string"
      )
    )
