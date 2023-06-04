<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_blueprint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the details of a blueprint

### Description

Retrieves the details of a blueprint.

### Usage

    glue_get_blueprint(Name, IncludeBlueprint, IncludeParameterSpec)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_blueprint_:_Name">Name</code></td>
<td><p>[required] The name of the blueprint.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_blueprint_:_IncludeBlueprint">IncludeBlueprint</code></td>
<td><p>Specifies whether or not to include the blueprint in the
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_blueprint_:_IncludeParameterSpec">IncludeParameterSpec</code></td>
<td><p>Specifies whether or not to include the parameter
specification.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Blueprint = list(
        Name = "string",
        Description = "string",
        CreatedOn = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedOn = as.POSIXct(
          "2015-01-01"
        ),
        ParameterSpec = "string",
        BlueprintLocation = "string",
        BlueprintServiceLocation = "string",
        Status = "CREATING"|"ACTIVE"|"UPDATING"|"FAILED",
        ErrorMessage = "string",
        LastActiveDefinition = list(
          Description = "string",
          LastModifiedOn = as.POSIXct(
            "2015-01-01"
          ),
          ParameterSpec = "string",
          BlueprintLocation = "string",
          BlueprintServiceLocation = "string"
        )
      )
    )

### Request syntax

    svc$get_blueprint(
      Name = "string",
      IncludeBlueprint = TRUE|FALSE,
      IncludeParameterSpec = TRUE|FALSE
    )
