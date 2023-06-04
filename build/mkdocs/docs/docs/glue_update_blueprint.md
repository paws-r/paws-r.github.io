<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_update_blueprint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a registered blueprint

### Description

Updates a registered blueprint.

### Usage

    glue_update_blueprint(Name, Description, BlueprintLocation)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_update_blueprint_:_Name">Name</code></td>
<td><p>[required] The name of the blueprint.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_blueprint_:_Description">Description</code></td>
<td><p>A description of the blueprint.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_blueprint_:_BlueprintLocation">BlueprintLocation</code></td>
<td><p>[required] Specifies a path in Amazon S3 where the blueprint is
published.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$update_blueprint(
      Name = "string",
      Description = "string",
      BlueprintLocation = "string"
    )
